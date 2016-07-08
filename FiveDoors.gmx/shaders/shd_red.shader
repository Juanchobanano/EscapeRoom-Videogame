//
// Simple passthrough vertex shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 OriginalColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    float Red = OriginalColor.r;
    float Green = 0.0;
    float Blue = 0.0;
    float Alpha = 1.0;
    
    vec4 Color = vec4(Red, Green, Blue, Alpha);
    gl_FragColor = Color;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

