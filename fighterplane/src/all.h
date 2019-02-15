#include "main.h"

#ifndef PLANE_H
#define PLANE_H


class Plane {
public:
    Plane() {}
    Plane(float x, float y, float z);
    glm::vec3 position;
    void draw(glm::mat4 VP);
    void set_position(float x, float y,float z);
    void tick(int dir);
    double speed;
    int size;
    int size2;
    float rotationx;
    float rotationy;
    float rotationz;
private:
    VAO *object1;
    VAO *object2;
    VAO *object3;
    VAO *object4;
};

#endif // Plane_H

#ifndef FLOOR_H
#define FLOOR_H

class Floor {
public:
    Floor() {}
    Floor(color_t color);
    float rotation;
    glm::vec3 position;
    void draw(glm::mat4 VP);
private:
    VAO *object;
};

#endif // FLOOR_H

#ifndef VOLCANO_H
#define VOLCANO_H

class Volcano {
public:
    Volcano() {}
    Volcano(float size , color_t color);
    float rotation;
    glm::vec3 position;
    void draw(glm::mat4 VP);
private:
    VAO *object;
};

#endif // VOLCANO_H

#ifndef RING_H
#define RING_H

class Ring {
public:
    Ring() {}
    Ring(float r1 , float r2 , color_t color);
    float rotation;
    glm::vec3 position;
    void draw(glm::mat4 VP);
private:
    VAO *object;
};

#endif // RING_H

#ifndef DASHBOARD_H
#define DASHBOARD_H

class Dashboard {
public:
    Dashboard() {}
    Dashboard(float r1 , float r2 , color_t color);
    float rotation1;
    glm::vec3 position1;
    float rotation2;
    glm::vec3 position2;
    float rotation3;
    glm::vec3 position3;
    void draw(glm::mat4 VP);
    void tick(float height, float speed);
private:
    VAO *object1;
    VAO *object2;
};

#endif // DASHBOARD_H