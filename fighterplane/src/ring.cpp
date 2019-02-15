#include "all.h"
#include "main.h"
#define debug(x) cerr << #x << " is " << x << endl;

using namespace std;

Ring::Ring(float r1, float r2, color_t color) {
    int n = 50;
    float deg = (360.0/n)*(M_PI/180);
    int randx = rand() % 9000;
    int randy = rand() % 200;
    int randz = rand() % 9000;

    this->rotation = 0.0f;
    this->position = glm::vec3((float)randx, (float)randy, (float)randz);
    GLfloat g_vertex_buffer_data1[6*n];
    GLfloat g_vertex_buffer_data2[6*n];
    int k = 0;
    for (int i = 0; i < 9*n; i+=3)
    {
        if(i%9==0)
            continue;

        g_vertex_buffer_data2[k]=0.0f+(r2*(cos((k*deg)/3)));
        g_vertex_buffer_data2[k+1]=0.0f+(r2*(sin((k*deg)/3)));
        g_vertex_buffer_data2[k+2]=0.0f;
        
        g_vertex_buffer_data1[k]=0.0f+(r1*(cos((k*deg)/3)));
        g_vertex_buffer_data1[k+1]=0.0f+(r1*(sin((k*deg)/3)));
        g_vertex_buffer_data1[k+2]=0.0f;
        k+=3;
    }

    GLfloat g_vertex_buffer_data[10000];    
    k = 0;
    for (int i = 0; i < 6*n; i+=3)
    {
        g_vertex_buffer_data[k]=g_vertex_buffer_data1[i];
        g_vertex_buffer_data[k+1]=g_vertex_buffer_data1[i+1];
        g_vertex_buffer_data[k+2]=g_vertex_buffer_data1[i+2];

        g_vertex_buffer_data[k+3]=g_vertex_buffer_data2[i];
        g_vertex_buffer_data[k+4]=g_vertex_buffer_data2[i+1];
        g_vertex_buffer_data[k+5]=g_vertex_buffer_data2[i+2];

        g_vertex_buffer_data[k+6]=g_vertex_buffer_data1[i+3];
        g_vertex_buffer_data[k+7]=g_vertex_buffer_data1[i+4];
        g_vertex_buffer_data[k+8]=g_vertex_buffer_data1[i+5];

        g_vertex_buffer_data[k+9]=g_vertex_buffer_data1[i+3];
        g_vertex_buffer_data[k+10]=g_vertex_buffer_data1[i+4];
        g_vertex_buffer_data[k+11]=g_vertex_buffer_data1[i+5];

        g_vertex_buffer_data[k+12]=g_vertex_buffer_data2[i];
        g_vertex_buffer_data[k+13]=g_vertex_buffer_data2[i+1];
        g_vertex_buffer_data[k+14]=g_vertex_buffer_data2[i+2];
        
        g_vertex_buffer_data[k+15]=g_vertex_buffer_data2[i+3];
        g_vertex_buffer_data[k+16]=g_vertex_buffer_data2[i+4];
        g_vertex_buffer_data[k+17]=g_vertex_buffer_data2[i+5];
        k+=18;
    }

    this->object = create3DObject(GL_TRIANGLES, 6*n, g_vertex_buffer_data, color, GL_FILL);   
    
}

void Ring::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);

}

