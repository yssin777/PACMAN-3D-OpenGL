//******** PRACTICA VISUALITZACI� GR�FICA INTERACTIVA (EE-UAB)
//******** Entorn b�sic VS2022 amb interf�cie MFC/GLFW i Status Bar
//******** Enric Marti (Setembre 2023)
// eixos.frag: Fragment Program en GLSL en versi� OpenGL 3.3 o 4.30 per a dibuixar eixos Coordenades M�n

//#version 330 core
#version 430 core

// ---- L9- Variable in
in vec4 VertexColor;

// ---- L12- Variable in
out vec4 FragColor;

void main ()	// --- L15
{
// ---- L17- Intensitat sense textura
    FragColor = VertexColor; 
}
