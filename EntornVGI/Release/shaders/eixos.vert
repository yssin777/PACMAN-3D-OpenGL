//******** PRACTICA VISUALITZACI� GR�FICA INTERACTIVA (EE-UAB)
//******** Entorn b�sic VS2022 amb interf�cie MFC/GLFW i Status Bar
//******** Enric Marti (Setembre 2023)
// eixos.vert: Vertex Program en GLSL en versi� OpenGL 3.3 o 4.30 per a dibuixar eixos Coordenades M�n

//#version 330 core
#version 430 core

// --- L9- Variables in
layout (location = 0) in vec3 in_Vertex; 	// Coordenades (x,y,z) posicio Vertex
layout (location = 1) in vec4 in_Color; 	// Coordenades (r,g,b,a) Color

// --- L13- Variables uniform
uniform mat4 projectionMatrix;	// Projection Matrix
uniform mat4 viewMatrix; 	// View Matrix

// --- L17- Variables out
out vec4 VertexColor;

void main ()	// --- L20
{
// --- L22- Transformacio de Visualitzacio amb Matriu Projeccio (projectionMatrix), Matriu C�mera (viewMatrix) i Matriu TG (modelMatrix)
    gl_Position = vec4(projectionMatrix * viewMatrix * vec4(in_Vertex,1.0));

// ---L25- Calcul intensitat final del vertex
    VertexColor = in_Color;
}