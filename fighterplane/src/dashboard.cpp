#include "all.h"
#include "main.h"
#define debug(x) cerr << #x << " is " << x << endl;

using namespace std;

Dashboard::Dashboard(float r1, float r2, color_t color) {
    
    int n = 50;
    float deg = (360.0/n)*(M_PI/180);
   
    this->position1 = glm::vec3(7200.0f,7100.0f,8000.0f);
    this->position2 = glm::vec3(7960.0f,7100.0f,8000.0f);
    
    this->rotation1 = 0.0f;
    this->rotation2 = 0.0f;
   
    // this->position2 = glm::vec3(7200.0f,7200.0f,8000.0f);


    GLfloat g_vertex_buffer_data1[6*n];
    GLfloat g_vertex_buffer_data2[6*n];
    int k = 0;
    for (int i = 0; i < 9*n; i+=3)
    {
        if(i%9==0)
            continue;

        g_vertex_buffer_data2[k]=0.0f+(r2*(cos((k*deg)/6)));
        g_vertex_buffer_data2[k+1]=0.0f+(r2*(sin((k*deg)/6)));
        g_vertex_buffer_data2[k+2]=0.0f;
        
        g_vertex_buffer_data1[k]=0.0f+(r1*(cos((k*deg)/6)));
        g_vertex_buffer_data1[k+1]=0.0f+(r1*(sin((k*deg)/6)));
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
    static const GLfloat g_vertex_needle[] = {
    -10.0f, 0.0f, 0.0f,
    0.0f, (r1+r2)/2, 0.0f,
    10.0f, 0.0f, 0.0f,
    };
    

    this->object1 = create3DObject(GL_TRIANGLES, 6*n, g_vertex_buffer_data, color, GL_FILL);   
    this->object2 = create3DObject(GL_TRIANGLES, 3, g_vertex_needle, COLOR_BLACK, GL_FILL);   
    
}

void Dashboard::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position1);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (0.0f * M_PI / 180.0f), glm::vec3(0, 0, 1));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object1);
    // draw3DObject(this->object2);

    Matrices.model = glm::mat4(1.0f);
    rotate    = glm::rotate((float) (this->rotation1 * M_PI / 180.0f), glm::vec3(0, 0, 1));
    Matrices.model *= (translate * rotate);
    MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]); 
    draw3DObject(this->object2);
    

    Matrices.model = glm::mat4(1.0f);
    translate = glm::translate (this->position2);    // glTranslatef
    rotate    = glm::rotate((float) (0.0f * M_PI / 180.0f), glm::vec3(0, 0, 1));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object1);
    
    Matrices.model = glm::mat4(1.0f);
    rotate    = glm::rotate((float) (this->rotation2 * M_PI / 180.0f), glm::vec3(0, 0, 1));
    Matrices.model *= (translate * rotate);
    MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]); 
    draw3DObject(this->object2);
    
}

void Dashboard::tick(float height , float speed){
    this->rotation1 = height/50 - 70;
    this->rotation2 = 36*speed - 90;
}