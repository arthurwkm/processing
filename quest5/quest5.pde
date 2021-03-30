
int cx = 250;
int cy = 250;
int ax = 250;
int ay = 150;


int r2 = 25;//raio25

float period = 240;
float r = 75;

void setup()
{
  size(1000, 1000, P3D);
  frameRate(60);
  camera(100.0, 50.0, 120.0, 250, 250, 250, 
       0.0, 1.0, 0.0);
}

void draw()
{
  
  translate(250, 400);
  
  rotateX(PI/3.0f);
  //rotateY(PI/3.0f);
  
  noFill();
  background(255);
  stroke(0, 0, 255);
  square(150, 150, 200);
  ellipse(250, 250, 2*100, 2*100);//raio 100
  
  translate(-80, -320, 350);
  
  
  //rotateY(HALF_PI);
  
  float x1 = r * sin(TWO_PI * frameCount / period) +cx;
  float y1 = r * cos(TWO_PI * frameCount / period) +cy;
 

  float x2 = r2 * cos(TWO_PI * frameCount / (period/8)) +250;
  float y2 = r2 * sin(TWO_PI * frameCount / (period/8)) +250;
 
  
  translate(x1, y1);
  rotateY(HALF_PI);
  //rotateX(TWO_PI * frameCount / (period));
  //rotateZ((TWO_PI * frameCount / (period)));
  noFill(); 
  stroke(0, 0, 255);
  ellipse(250, 250, 
    2*25, 2*25);
  noStroke(); 
  
  
  //translate(x2, y2);
  fill(255, 0, 0);
  ellipse(x2, y2, 10, 10);
  
  
 
  
}
