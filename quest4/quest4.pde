
int cx = 250;
int cy = 250;
int ax = 250;
int ay = 150;


int r2 = 25;//raio25

float period = 240;
float r = 75;

void setup()
{
  size(500, 500);
  frameRate(60);
}

void draw()
{

  noFill();
  background(255);
  stroke(0, 0, 255);
  ellipse(250, 250, 2*100, 2*100);//raio 100

  
  float x1 = r * sin(TWO_PI * frameCount / period) +cx;
  float y1 = r * cos(TWO_PI * frameCount / period) +cy;
 

  float x2 = r2 * cos(TWO_PI * frameCount / (period/8)) +x1;
  float y2 = r2 * sin(TWO_PI * frameCount / (period/8)) +y1;
 
  noFill(); 
  stroke(0, 0, 255);
  ellipse(x1, y1, 
    2*25, 2*25);
  noStroke(); 

  fill(255, 0, 0);
  ellipse(x2, y2, 10, 10);

  
}
