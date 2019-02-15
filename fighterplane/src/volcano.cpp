#include "all.h"
#include "main.h"
#define debug(x) cerr << #x << " is " << x << endl;

using namespace std;

Volcano::Volcano(float size, color_t color) {
    
    int randx = rand() % 9000;
    int randy = rand() % 9000;
    cerr << randx << endl;
    this->position = glm::vec3((float)randx, -1000.0f, (float)randy);
    this->rotation = -90;
    int n = 50;
    float deg = (360.0/n)*(M_PI/180);
   
    GLfloat g_vertex_buffer_data[9*n];
    float radius = size/2;
    for (int i = 0; i < 9*n; i+=3)
    {
        if(i%9==0)
        {
            g_vertex_buffer_data[i]=0.0f;
            g_vertex_buffer_data[i+1]=0.0f;
            g_vertex_buffer_data[i+2]=(float(size));
            continue;
        }

        g_vertex_buffer_data[i]=0.0f+(radius*(cos(((i/9)+(i%9)/3.0)*deg)));
        g_vertex_buffer_data[i+1]=0.0f+(radius*(sin(((i/9)+(i%9)/3.0)*deg)));
        g_vertex_buffer_data[i+2]=0.0f;
    }

    this->object = create3DObject(GL_TRIANGLES, n*3, g_vertex_buffer_data, color, GL_FILL);   
    
}

void Volcano::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(1, 0, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);

}

