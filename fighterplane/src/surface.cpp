#include "all.h"
#include "main.h"

Floor::Floor(color_t color) {
    this->position = glm::vec3(0, 0, 0);
    this->rotation = 0;
    static const GLfloat vertex_buffer_data[] = {
        -10000.0f, -1000.0f, 10000.0f,
        -10000.0f, -1000.0f, -10000.0f, 
         10000.0f ,-1000.0f, -10000.0f, // triangle 1 : end
       
        10000.0f,-1000.0f, -10000.0f,
        10000.0f, -1000.0f, 10000.0f,
        -10000.0f, -1000.0f, 10000.0f, // triangle 2 : end
        };
    // int count = 100;
    // GLfloat g_vertex_buffer_data[count*18+1];

    // for (size_t k = 0; k < count; k++)
    // {
    //     for(size_t i = k*8; i < (k+1)*18; i+=18){
    //     {      
    //         g_vertex_buffer_data[i] = -45.0f;
    //         g_vertex_buffer_data[i+1] = -45.0f;
    //         g_vertex_buffer_data[i+2] =  float(k);
    //         g_vertex_buffer_data[i+3] = -45.0f;
    //         g_vertex_buffer_data[i+4] = 45.0f;
    //         g_vertex_buffer_data[i+5] = float(k);
    //         g_vertex_buffer_data[i+6] = 45.0f;
    //         g_vertex_buffer_data[i+7] = -45.0f;
    //         g_vertex_buffer_data[i+8] = float(k);
    //         g_vertex_buffer_data[i+9] = 45.0f;
    //         g_vertex_buffer_data[i+10] = -45.0f;
    //         g_vertex_buffer_data[i+11] = float(k);
    //         g_vertex_buffer_data[i+12] = -45.0f;
    //         g_vertex_buffer_data[i+13] = 45.0f;
    //         g_vertex_buffer_data[i+14] = float(k);
    //         g_vertex_buffer_data[i+15] = 45.0f;
    //         g_vertex_buffer_data[i+16] = 45.0f;
    //         g_vertex_buffer_data[i+17] = float(k);
    //     };
    // }

    this->object = create3DObject(GL_TRIANGLES, 2*3, vertex_buffer_data, color, GL_FILL);   
    
   // printf("test\n");    
}

void Floor::draw(glm::mat4 VP) {
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

