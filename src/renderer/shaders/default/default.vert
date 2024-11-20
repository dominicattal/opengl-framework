#version 460 core

#extension GL_ARB_bindless_texture : require

layout (location = 0) in vec2 aPosition;
layout (location = 1) in vec2 aTexCoord;
layout (location = 2) in vec4 aColor;
layout (location = 3) in float aTexId;

out vec2 TexCoord;
out vec4 Color;
out flat int TexId;

void main()
{
    gl_Position = vec4(aPosition, 0.0f, 1.0f);
    TexCoord = aTexCoord;
    Color = aColor;
    TexId = int(round(aTexId));
}