#version 330 core

// vertex.glsl

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 tex;

uniform vec4 vx_color;
uniform mat4 perspective;
uniform mat4 translate;
uniform mat4 rotate;
uniform mat4 scale;

out vec4 frag_color;
out vec2 frag_texcord;

void main(){

	gl_Position  = 
		perspective *
		translate * 
		rotate * 
		scale * 
		vec4(position.xyz, 1.0);

	frag_texcord = tex;
}
