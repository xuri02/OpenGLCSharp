﻿#version 330 core

layout(location = 0) in vec3 a_position; 
layout(location = 1) in vec2 a_texCoord;

out vec4 v_color;
out vec2 v_texCoord;

uniform mat4 u_viewModelProjectionMat4;

void main()
{
    v_texCoord = a_texCoord;
    gl_Position = vec4(a_position, 1.0) * u_viewModelProjectionMat4;
}
