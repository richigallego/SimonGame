precision highp float;
precision highp sampler2D;

uniform sampler2D textureMap;
varying float vColor;

void main(){
    vec4 color = texture2D(textureMap, gl_PointCoord);
    if(vColor >= 1.0){
        color.a *= 2.0 - vColor;
    } else {
        color.a *= vColor;
    }

    float alpha = vColor / 100.0;
    color.a *= 0.2;
    gl_FragColor = vec4( 1.0, 1.0, 1.0, alpha );
}