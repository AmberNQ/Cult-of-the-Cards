#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define PRECISION highp
#else
	#define PRECISION mediump
#endif

//
// Shader made by MetaNite64
// credit to FabriceNeyret2 for the marble crack shader part
// https://www.shadertoy.com/view/Xs3fR4
//

extern PRECISION vec2 zealous;

extern PRECISION number dissolve;
extern PRECISION number time;
extern PRECISION vec4 texture_details;
extern PRECISION vec2 image_details;
extern bool shadow;
extern PRECISION vec4 burn_colour_1;
extern PRECISION vec4 burn_colour_2;

vec4 dissolve_mask(vec4 final_pixel, vec2 texture_coords, vec2 uv);

#define hash21(p) fract(sin(dot(p,vec2(127.1,311.7)))*43758.5453123)
#define rot(a) mat2(cos(a),-sin(a),sin(a),cos(a))
#define hash22(p)  fract( 18.5453 * sin( p * mat2(127.1,311.7,269.5,183.3)) )
#define disp(p) ( -0.5 + (1.+2.*0.5) * hash22(p) )
float a_noise2(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p); f = f*f*(3.-2.*f); // smoothstep

    float v= mix( mix(hash21(i+vec2(0,0)),hash21(i+vec2(1,0)),f.x),
                  mix(hash21(i+vec2(0,1)),hash21(i+vec2(1,1)),f.x), f.y);
	return 2.*v-1.;
}

float fbm2(vec2 p) {
    float v = 0.,  a = .5;
    mat2 R = rot(.37);

    for (int i = 0; i < 9; i++, p*=2.,a/=2.)
        p *= R,
        v += a * a_noise2(p);

    return v;
}
#define noise22(p) vec2(a_noise2(p),a_noise2(p+17.7))
vec2 fbm22(vec2 p) {
    vec2 v = vec2(0);
    float a = .5;
    mat2 R = rot(.37);

    for (int i = 0; i < 6; i++, p*=2.,a/=2.)
        p *= R,
        v += a * noise22(p);

    return v;
}
vec2 mfbm22(vec2 p) {  // multifractal fbm
    vec2 v = vec2(1);
    float a = .5;
    mat2 R = rot(.37);

    for (int i = 0; i < 6; i++, p*=2.,a/=2.)
        p *= R,
          v += v * a * noise22(p);

    return v-1.;
}

vec3 voronoi( vec2 u )  // returns len + id
{
    vec2 iu = floor(u), v;
	float m = 1e9,d;
    for( int k=0; k < 25; k++ ) {
        vec2  p = iu + vec2(mod(k,5) - 2,k/5-2),
            o = disp(p),
      	      r = p - u + o;
		d = dot(r,r);
        if( d < m ) m = d, v = r;
    }

    return vec3( sqrt(m), v+u );
}

vec3 voronoiB( vec2 u )  // returns len + id
{
    vec2 iu = floor(u), C, P;
	float m = 1e9,d;
    for( int k=0; k < 25; k++ ) {
        vec2  p = iu + vec2(mod(k,5) - 2,k/5-2),
              o = disp(p),
      	      r = p - u + o;
		d = dot(r,r);
        if( d < m ) m = d, C = p-iu, P = r;
    }

    m = 1e9;

    for( int k=0; k < 25; k++ ) {
        vec2 p = iu+C + vec2(mod(k,5) - 2,k/5-2),
		     o = disp(p),
             r = p-u + o;

        if( dot(P-r,P-r)>1e-5 )
        m = min( m, .5*dot( (P+r), normalize(r-P) ) );
    }

    return vec3( m, P+u );
}

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
	vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.zw)/texture_details.zw;
    vec4 pixel = Texel(texture, texture_coords);

    // shimmer effect
    number low = min(pixel.r, min(pixel.g, pixel.b));
    number high = max(pixel.r, max(pixel.g, pixel.b));
    number delta = high-low -0.1;

    number fac = 0.8 + 0.9*sin(11.*uv.x+4.32*uv.y + zealous.r*12. + cos(zealous.r*5.3 + uv.y*4.2 - uv.x*4.));
    number fac2 = 0.5 + 0.5*sin(8.*uv.x+2.32*uv.y + zealous.r*5. - cos(zealous.r*2.3 + uv.x*8.2));
    number fac3 = 0.5 + 0.5*sin(10.*uv.x+5.32*uv.y + zealous.r*6.111 + sin(zealous.r*5.3 + uv.y*3.2));
    number fac4 = 0.5 + 0.5*sin(3.*uv.x+2.32*uv.y + zealous.r*8.111 + sin(zealous.r*1.3 + uv.y*11.2));
    number fac5 = sin(0.9*16.*uv.x+5.32*uv.y + zealous.r*12. + cos(zealous.r*5.3 + uv.y*4.2 - uv.x*4.));

    number maxfac = 0.7*max(max(fac, max(fac2, max(fac3,0.0))) + (fac+fac2+fac3*fac4), 0.);

    pixel.g = pixel.g - delta + delta * maxfac * (0.7 - fac5 * 0.27) - 0.1;

    // colors
    vec3 color1 = vec3(255., 60., 131.) / 255.;
    vec3 color2 = vec3(255., 193., 73.) / 255.;
    float position = (uv.x + uv.y) / 2.;
    vec3 new_color = color1 * (1 - position) + color2 * position;
    vec3 old_color = pixel.rgb;
    pixel = vec4((0.6 + (0.01 * zealous.x)) * new_color + (0.4 - (0.01 * zealous.x)) * old_color, pixel.a);

    // add cracks
    vec2 uv_copy = uv;
    uv_copy.x *= texture_details.z;
    uv_copy.y *= texture_details.w;
    uv_copy.x = floor(uv_copy.x) / texture_details.z;
    uv_copy.y = floor(uv_copy.y) / texture_details.w;
    vec4 cracks = vec4(1. - voronoiB(uv_copy).x, voronoi(uv_copy).x, 0, 0);
    cracks -= cracks;
    vec2 I = floor(uv_copy / 2.);

    for (float i = 0.; i < 2; i++) {
        vec3 H = voronoiB(uv_copy);
        float d = H.x;
        d = min(1., 50. * max(0., d - 0.01));
        cracks += vec4(1. - d);
        uv_copy *= 1.5 * rot(0.37);
    }
    cracks = 1. - cracks;
    pixel.a = min((cracks.x + cracks.y + cracks.z) / 3, pixel.a);

	return dissolve_mask(pixel, texture_coords, uv);
}

vec4 dissolve_mask(vec4 final_pixel, vec2 texture_coords, vec2 uv)
{
    if (dissolve < 0.001) {
        return vec4(shadow ? vec3(0.,0.,0.) : final_pixel.xyz, shadow ? final_pixel.a*0.3: final_pixel.a);
    }

    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01; //Adjusting 0.0-1.0 to fall to -0.1 - 1.1 scale so the mask does not pause at extreme values

	float t = time * 10.0 + 2003.;
	vec2 floored_uv = (floor((uv*texture_details.ba)))/max(texture_details.b, texture_details.a);
    vec2 uv_scaled_centered = (floored_uv - 0.5) * 2.3 * max(texture_details.b, texture_details.a);

	vec2 field_part1 = uv_scaled_centered + 50.*vec2(sin(-t / 143.6340), cos(-t / 99.4324));
	vec2 field_part2 = uv_scaled_centered + 50.*vec2(cos( t / 53.1532),  cos( t / 61.4532));
	vec2 field_part3 = uv_scaled_centered + 50.*vec2(sin(-t / 87.53218), sin(-t / 49.0000));

    float field = (1.+ (
        cos(length(field_part1) / 19.483) + sin(length(field_part2) / 33.155) * cos(field_part2.y / 15.73) +
        cos(length(field_part3) / 27.193) * sin(field_part3.x / 21.92) ))/2.;
    vec2 borders = vec2(0.2, 0.8);

    float res = (.5 + .5* cos( (adjusted_dissolve) / 82.612 + ( field + -.5 ) *3.14))
    - (floored_uv.x > borders.y ? (floored_uv.x - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y > borders.y ? (floored_uv.y - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.x < borders.x ? (borders.x - floored_uv.x)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y < borders.x ? (borders.x - floored_uv.y)*(5. + 5.*dissolve) : 0.)*(dissolve);

    if (final_pixel.a > 0.01 && burn_colour_1.a > 0.01 && !shadow && res < adjusted_dissolve + 0.8*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
        if (!shadow && res < adjusted_dissolve + 0.5*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
            final_pixel.rgba = burn_colour_1.rgba;
        } else if (burn_colour_2.a > 0.01) {
            final_pixel.rgba = burn_colour_2.rgba;
        }
    }

    return vec4(shadow ? vec3(0.,0.,0.) : final_pixel.xyz, res > adjusted_dissolve ? (shadow ? final_pixel.a*0.3: final_pixel.a) : .0);
}

extern PRECISION vec2 mouse_screen_pos;
extern PRECISION float hovering;
extern PRECISION float screen_scale;

#ifdef VERTEX
vec4 position( mat4 transform_projection, vec4 vertex_position )
{
    if (hovering <= 0.){
        return transform_projection * vertex_position;
    }
    float mid_dist = length(vertex_position.xy - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy);
    vec2 mouse_offset = (vertex_position.xy - mouse_screen_pos.xy)/screen_scale;
    float scale = 0.2*(-0.03 - 0.3*max(0., 0.3-mid_dist))
                *hovering*(length(mouse_offset)*length(mouse_offset))/(2. -mid_dist);

    return transform_projection * vertex_position + vec4(0,0,0,scale);
}
#endif
