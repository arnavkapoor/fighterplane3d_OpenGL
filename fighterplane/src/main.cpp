#include "main.h"
#include "timer.h"
#include "all.h"
#define debug(x) cerr << #x << " is " << x << endl;

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

/**************************
* Customizable functions *
**************************/

Plane pl;
Floor base;
int f1=1;
int f2=0;
int f3=0;
int f4=0;

Volcano basestr[6];
Ring firerings[6];
Dashboard mydash;

float screen_zoom = 1, screen_center_x = 0, screen_center_y = 0;
float camera_rotation_angle = 0;
glm::vec3 eye;
glm::vec3 target;

Timer t60(1.0 / 60);
Timer t2(1.0 / 4);

/* Render the scene with openGL */
/* Edit this function according to your assignment */
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // use the loaded shader program
    // Don't change unless you know what you are doing
    glUseProgram (programID);
    // Eye - Location of camera. Don't change unless you are sure!!
    if(f1){
        
        float roty = pl.rotationy;
        float eyex = pl.position.x-200*(sin(roty*M_PI/180.0f));
        float eyez = pl.position.z-200*(cos(roty*M_PI/180.0f));

        eye=glm::vec3(eyex,pl.position.y+200,eyez);

        float targx = pl.position.x + (pl.size+pl.size2)*(sin(roty*M_PI/180.0f)); 
        float targz = pl.position.z + (pl.size+pl.size2)*(cos(roty*M_PI/180.0f));  

        target = glm::vec3(targx,pl.position.y,targz);        
    }
    if(f2){
        eye = glm::vec3(pl.position.x,pl.position.y+3000,pl.position.z);
        target = glm::vec3(pl.position.x+0.01,pl.position.y+0.01,pl.position.z+0.01);    
    }
    if(f3){
        eye = glm::vec3 (0,50,1000);
        target = glm::vec3(pl.position.x+0.01,pl.position.y+0.01,pl.position.z+0.01);            
    }

    if(f4){
        float roty = pl.rotationy;
        float targx = pl.position.x + 1000*(sin(roty*M_PI/180.0f)); 
        float targz = pl.position.z + 1000*(cos(roty*M_PI/180.0f));  
    
        float eyez =  pl.position.z + 200*(cos(roty*M_PI/180.0f));  
        float eyex =  pl.position.x + 200*(sin(roty*M_PI/180.0f));  
    


        eye = glm::vec3 (eyex,pl.position.y,eyez);
        target = glm::vec3(targx,pl.position.y+0.01,targz);
    }
    // Target - Where is the camera looking at.  Don't change unless you are sure!!
    
    // Up - Up vector defines tilt of camera.  Don't change unless you are sure!!
    glm::vec3 up (0, 1, 0);

    // Compute Camera matrix (view)
    
    glm::vec3 eye2 (8000.01f, 8000.01f, 7950.0f);
    glm::vec3 target2 (8000.0f, 8000.0f, 8000.0f);

    Matrices.view = glm::lookAt( eye, target, up ); // Rotating Camera for 3D
    Matrices.view2 = glm::lookAt( eye2, target2, up ); // Rotating Camera for 3D
    
    // Don't change unless you are sure!!
    // Matrices.view = glm::lookAt(glm::vec3(0, 0, 3), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)); // Fixed camera for 2D (ortho) in XY plane

    // Compute ViewProject matrix as view/camera might not be changed for this frame (basic scenario)
    // Don't change unless you are sure!!
    glm::mat4 VP = Matrices.projection * Matrices.view;
    glm::mat4 VP2 = Matrices.projection2 * Matrices.view2;

    // Send our transformation to the currently bound shader, in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    // Don't change unless you are sure!!
    glm::mat4 MVP;  // MVP = Projection * View * Model

    // Scene render
    base.draw(VP);
    pl.draw(VP);
    for(size_t i = 0; i < 5; i++)
        basestr[i].draw(VP);
    for(size_t i = 0; i < 5; i++)
        firerings[i].draw(VP);
    
    mydash.draw(VP2);
}

void tick_input(GLFWwindow *window) {
    int v1  = glfwGetKey(window, GLFW_KEY_Z);
    int v2  = glfwGetKey(window, GLFW_KEY_X);
    int v3  = glfwGetKey(window, GLFW_KEY_C);
    int v4  = glfwGetKey(window, GLFW_KEY_V);

    int left = glfwGetKey(window, GLFW_KEY_Q);
    int right = glfwGetKey(window, GLFW_KEY_E);
    
    int tilt_r = glfwGetKey(window, GLFW_KEY_A);
    int tilt_l = glfwGetKey(window, GLFW_KEY_D);
    
    int up = glfwGetKey(window, GLFW_KEY_SPACE);
    int down = glfwGetKey(window, GLFW_KEY_DOWN);
    

    int forw = glfwGetKey(window, GLFW_KEY_W);
    int backw = glfwGetKey(window, GLFW_KEY_S);
    
    
    if(left)
        pl.tick(DIR_LEFT);
    
    if(right)
        pl.tick(DIR_RIGHT);
    
    if(up)
        pl.tick(DIR_UP);
    
    if(down)
        pl.tick(DIR_DOWN);

    if(forw)
        pl.tick(DIR_FOR);
    
    if(tilt_r)
        pl.tick(DIR_ROLL_RIGHT);
    
    if(tilt_l)
        pl.tick(DIR_ROLL_LEFT);
    
    if(backw)
        pl.tick(DIR_BACK);

    if(v1){
        f1 = 1;
        f2 = 0;
        f3 = 0;
        f4 = 0;
    }

    if(v2){
        f1 = 0;
        f2 = 1;
        f3 = 0;
        f4 = 0;
    }

    if(v3){
        f1 = 0;
        f2 = 0;
        f3 = 1;
        f4 = 0;
    }
    if(v4){
        f1 = 0;
        f2 = 0;
        f3 = 0;
        f4 = 1;
    }
}


void tick_elements() {
    mydash.tick(pl.position.y,pl.speed);
    pl.tick(34);
}

/* Initialize the OpenGL rendering properties */
/* Add all the models to be created here */
void initGL(GLFWwindow *window, int width, int height) {
    /* Objects should be created before any other gl function and shaders */
    // Create the models

    pl = Plane(0.0f,0.0f,0.0f);
    base = Floor(COLOR_BLUE);
    for(size_t i = 0; i < 5; i++){
        basestr[i] = Volcano(200.0f,COLOR_RED);
        firerings[i] = Ring(100.0f,110.0f,COLOR_NEONGREEN);
    }
    mydash = Dashboard(150.0f,160.0f,COLOR_GOLD);
    // Create and compile our GLSL program from the shaders
    programID = LoadShaders("Sample_GL.vert", "Sample_GL.frag");
    // Get a handle for our "MVP" uniform
    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");


    reshapeWindow (window, width, height);

    // Background color of the scene
    glClearColor (COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0, 0.0f); // R, G, B, A
    glClearDepth (1.0f);

    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
    srand(time(0));
    int width  = 1000;
    int height = 1000;

    window = initGLFW(width, height);

    initGL (window, width, height);

    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Process timers

        if (t60.processTick()) {
            // 60 fps
            // OpenGL Draw commands
            draw();
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }

    quit(window);
}

bool detect_collision(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) * 2 < (a.width + b.width)) &&
           (abs(a.y - b.y) * 2 < (a.height + b.height));
}

void reset_screen() {
    float top    = screen_center_y + 1000 / screen_zoom;
    float bottom = screen_center_y - 1000 / screen_zoom;
    float left   = screen_center_x - 1000 / screen_zoom;
    float right  = screen_center_x + 1000 / screen_zoom;
    Matrices.projection = glm::perspective((float)(1*M_PI/3), 1.0f , 0.15f, 2000000.0f);
    Matrices.projection2 = glm::ortho(left,right,bottom,top,1.0f,500.0f);

}
