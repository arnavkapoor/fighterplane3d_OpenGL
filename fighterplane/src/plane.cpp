#include "main.h"
#include "all.h"
#define debug(x) cerr << #x << " is " << x << endl;
using namespace std;

Plane::Plane(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
    
    this->rotationx = 0;
    this->rotationy = 0;
    this->rotationz = 0;

    this->size = 150;
        
    int n = 100;
    int size = this->size;

    float radius = float(size/4);
    float deg = (360.0/n)*(M_PI/180);
 
    GLfloat g_vertex_buffer_data[9*n];
    GLfloat g_vertex_buffer_data2[9*n];

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

    for (int i = 0; i < 9*n; i+=3)
    {
        if(i%9==0)
        {
            g_vertex_buffer_data2[i]=0.0f;
            g_vertex_buffer_data2[i+1]=0.0f;
            g_vertex_buffer_data2[i+2]=0.0f;
            continue;
        }

        g_vertex_buffer_data2[i]=0.0f+(radius*(cos(((i/9)+(i%9)/3.0)*deg)));
        g_vertex_buffer_data2[i+1]=0.0f+(radius*(sin(((i/9)+(i%9)/3.0)*deg)));
        g_vertex_buffer_data2[i+2]=(float(size/1.5));
    }
    

    // for (int k = size;  k < size+size2; k+=1)
    // {
    //     float nradius  = radius * (float(size2+size-k)/float(size2));
    //     cerr << nradius << endl;
    //     for (int i = (9*n*(k-size)); i < (9*n*(k+1-size)); i+=3)
    //     {
    //         if(i%9==0)
    //         {
    //             g_vertex_buffer_data2[i]=0.0f;
    //             g_vertex_buffer_data2[i+1]=0.0f;
    //             g_vertex_buffer_data2[i+2]=(float)(k);
    //             continue;
    //         }

    //         g_vertex_buffer_data2[i]=0.0f+(nradius*(cos(((i/9)+(i%9)/3.0)*deg)));
    //         g_vertex_buffer_data2[i+1]=0.0f+(nradius*(sin(((i/9)+(i%9)/3.0)*deg)));
    //         g_vertex_buffer_data2[i+2]=(float)(k);
    //     }
    //     // cerr << k << endl;
    // }
    float fact = 0.91;
    static const GLfloat g_vertex_buffer_data3[] = {
            radius * fact, 0.0f, size/2,
            2*radius * fact, 0.0f, size/2, // triangle 3 : end
            radius * fact, 0.0f, 3*size/4,
            
            -radius * fact, 0.0f, size/2,
            -(2*radius * fact), 0.0f,size/2, // triangle 3 : end
            -(radius * fact), 0.0f, 3*size/4,
                
            };
    
    

    this->object1 = create3DObject(GL_TRIANGLES, 3*n, g_vertex_buffer_data, COLOR_BLACK, GL_FILL);
    this->object2 = create3DObject(GL_TRIANGLES, 3*n, g_vertex_buffer_data2,COLOR_BLACK , GL_FILL);
    this->object3 = create3DObject(GL_TRIANGLES, 2*3, g_vertex_buffer_data3,COLOR_GOLD , GL_FILL);
    
}

void Plane::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotatex    = glm::rotate((float) (this->rotationx * M_PI / 180.0f), glm::vec3(1, 0, 0));
    glm::mat4 rotatey    = glm::rotate((float) (this->rotationy * M_PI / 180.0f), glm::vec3(0, 1, 0));
    glm::mat4 rotatez    = glm::rotate((float) (this->rotationz * M_PI / 180.0f), glm::vec3(0, 0, 1));
    
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotatex * rotatey * rotatez);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object1);
    draw3DObject(this->object2);
    draw3DObject(this->object3);
    

}

void Plane::set_position(float x, float y , float z) {
    this->position = glm::vec3(x, y, z);
}

void Plane::tick(int dir) {
    
    float angley = this->rotationy * M_PI/180.0f;
    if(dir==DIR_UP)
        this->position.y+=10;
    
    if(dir==DIR_DOWN)
        this->position.y-=10;

    if(dir==DIR_FOR or dir == DIR_BACK){
        
        if(this->speed < 5 and dir==DIR_FOR)
            this->speed += 0.05;
        
        if(this->speed > -5 and dir==DIR_BACK)
            this->speed -= 0.05;
    }

    if(dir==DIR_LEFT)
        this->rotationy+=1;
    
    if(dir==DIR_RIGHT)
        this->rotationy-=1;

    if(dir==DIR_ROLL_LEFT)
        this->rotationz+=1;
    
    if(dir==DIR_ROLL_RIGHT)
        this->rotationz-=1;

    if(this->speed < 0)
        this->speed += 0.01;

    if(this->speed > 0)
        this->speed -= 0.01;

    int fd = this->speed;
    this->position.z+=fd*cos(angley);
    this->position.x+=fd*sin(angley);     

}



