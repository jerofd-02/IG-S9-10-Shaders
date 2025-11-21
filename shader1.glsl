// Author: Jerónimo Falcón
// Title: Efecto de agua
precision mediump float;
uniform float u_time;
uniform vec2 u_resolution,u_mouse;
void main(){
 vec2 u=gl_FragCoord.xy/u_resolution*2.-1.;u.x*=u_resolution.x/u_resolution.y;
 vec2 m=u_mouse/u_resolution*2.-1.;m.x*=u_resolution.x/u_resolution.y;
 u+=sin(length(u-m)*10.-u_time*4.)*.05;
 gl_FragColor=vec4(vec3(.05,.35,.55)-u.y*.04+sin(u.x*6.+u_time)*.1+cos(u.y*8.+u_time)*.02+vec3(.2,.25,.3)*pow(max(0.,sin(u.x*8.+u_time)+cos(u.y*6.-u_time)),3.)*.05,1.);
}