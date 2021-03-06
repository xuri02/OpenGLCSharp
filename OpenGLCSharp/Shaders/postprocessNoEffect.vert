#version 130

       
in vec3 a_position;
    
out vec3 v_position;  
out vec2 texCoord;  
  
uniform mat4 u_modelView; 
void main()
{

    v_position   = vec3(u_modelView * vec4(a_position, 1.0f));

    float x = -1.0 + float((gl_VertexID & 1) << 2);
    float y = -1.0 + float((gl_VertexID & 2) << 1);
    texCoord.x = (x+1.0)*0.5;
    texCoord.y = (y+1.0)*0.5;
    gl_Position = vec4(x, y, 0, 1);
}