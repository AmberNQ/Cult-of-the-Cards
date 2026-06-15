#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define PRECISION highp
#else
	#define PRECISION mediump
#endif

//
// Shader made by MetaNite64
//

// eye shape function: a|y| <= -bx^2 + 1
// convert to polar, use t to represent theta:
// r <= (-|a * sin(t)| + sqrt(a^2 * sin^2(t) + b * cos^2(t))) / b * cos^2(t)
// in both cases:
// decrease a to increase vertical height
// decrease b to increase horizontal width
// for the polar equation, add or subtract from all instances of theta to rotate the eye

extern PRECISION vec2 godly;

extern PRECISION number dissolve;
extern PRECISION number time;
extern PRECISION vec4 texture_details;
extern PRECISION vec2 image_details;
extern bool shadow;
extern PRECISION vec4 burn_colour_1;
extern PRECISION vec4 burn_colour_2;

float rand(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

// eye constants
float h_full = 1.;
float h_half = 1.5;
float h_closed = 8.;
float h = 1.;
float w = 1.;

// eye stats
vec4[5] eyes = vec4[5](
    vec4(0.2, 0.1, 0.2, 0.15),
    vec4(0.8, 0.1, -0.2, 0.15),
    vec4(0.2, 0.9, -0.2, 0.15),
    vec4(0.8, 0.9, 0.2, 0.15),
    vec4(0.5, 0.5, 0., 0.3)
);

bool draw_eye(vec2 uv, vec2 position, float angle, float size, float offset) {
    float r = distance(uv, position);
    float theta = atan(uv.y - position.y, uv.x - position.x);
    float h = h_full;
    if (sin(godly.y + offset) > 0.9) {
        h = h_half;
    }
    if (sin(godly.y + offset) > 0.95) {
        h = h_closed;
    }
    if (1. / size * r <= (-1 * abs(h * sin(theta + angle)) + sqrt(h * h * sin(theta + angle) * sin(theta + angle) + w * cos(theta + angle) * cos(theta + angle))) / (w * cos(theta + angle) * cos(theta + angle))
        && (r >= 0.25 * size / h || sin(godly.y + offset) > 0.95)) {
        return true;
    } else {
        return false;
    }
}

vec4 dissolve_mask(vec4 final_pixel, vec2 texture_coords, vec2 uv);

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
	vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.zw)/texture_details.zw;
    vec4 pixel = Texel(texture, texture_coords);
    vec2 floored_uv = (floor((uv*texture_details.ba)))/texture_details.ba;

    // shimmer
    number low = min(pixel.r, min(pixel.g, pixel.b));
    number high = max(pixel.r, max(pixel.g, pixel.b));
    number delta = high-low -0.1;

    number fac = 0.8 + 0.9*sin(11.*uv.x+4.32*uv.y + godly.r*12. + cos(godly.r*5.3 + uv.y*4.2 - uv.x*4.));
    number fac2 = 0.5 + 0.5*sin(8.*uv.x+2.32*uv.y + godly.r*5. - cos(godly.r*2.3 + uv.x*8.2));
    number fac3 = 0.5 + 0.5*sin(10.*uv.x+5.32*uv.y + godly.r*6.111 + sin(godly.r*5.3 + uv.y*3.2));
    number fac4 = 0.5 + 0.5*sin(3.*uv.x+2.32*uv.y + godly.r*8.111 + sin(godly.r*1.3 + uv.y*11.2));
    number fac5 = sin(0.9*16.*uv.x+5.32*uv.y + godly.r*12. + cos(godly.r*5.3 + uv.y*4.2 - uv.x*4.));

    number maxfac = 0.4*max(max(fac, max(fac2, max(fac3,0.0))) + (fac+fac2+fac3*fac4), 0.);

    pixel.r = pixel.r - delta + delta * maxfac * (0.7 - fac5 * 0.27) - 0.1;
    pixel.g = pixel.g - delta + delta * maxfac * (0.7 - fac5 * 0.27) - 0.1;
    pixel.b = pixel.b - delta + delta * maxfac * (0.7 - fac5 * 0.27) - 0.1;

    // gold color
    vec3 gold = vec3(255., 212., 39.) / 255.;
    float avg = (pixel.r + pixel.g + pixel.b) / 3.;
    pixel.rgb = avg * gold + min(0.25, 1 - avg) * pixel.rgb;

    // draw eyes
    for (int i = 0; i < eyes.length(); i++) {
        float offset = 112 * rand(eyes[i].xy);
        if (draw_eye(floored_uv, eyes[i].xy, eyes[i].z, eyes[i].w, offset)) {
            pixel.rgb = vec3(1., 0., 0.);
        }
    }

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
