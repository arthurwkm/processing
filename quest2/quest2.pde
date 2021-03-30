float xf = 250;
float yf = 250;
float x2f = 250;
float y2f = 250;

int r = 20;
int r2 = 30;
float period = 120;

void setup()
{
  size(1000, 1000);
  xf = r * cos(QUARTER_PI * frameCount / (period)) +250;
  yf = r * sin(QUARTER_PI * frameCount / (period)) +250;
 
  //antebraço fica horizontal em 4s
  x2f = r2 * cos(HALF_PI * frameCount / (period)) +xf;
  y2f = r2 * sin(HALF_PI * frameCount / (period)) +yf;
  frameRate(60);
}

void draw()
{
  
  background(0);
  //
  
  stroke(255);
  //float t = millis() / 2000.00f;
  //int x = (int)(250 + r*cos(t));
  //int y = (int)(250 + r*sin(t));
  
  
  //float t2 = millis() / 1000.00f;
  //int x2 = (int)(x + r2*cos(t2));
  //int y2 = (int)(y + r2*sin(t2));
  
  //braço fica 45 graus em 4s
  translate(750, 250);
  rotate(HALF_PI);
  float x = r * cos(QUARTER_PI * frameCount / (period)) +250;
  float y = r * sin(QUARTER_PI * frameCount / (period)) +250;
 
  //antebraço fica horizontal em 4s
  float x2 = r2 * cos(HALF_PI * frameCount / (period)) +x;
  float y2 = r2 * sin(HALF_PI * frameCount / (period)) +y;
  
   
  //vai até 2s, mas aumentei o limite pq o millis() não é mt preciso
  
  if(millis()<2210.00f){
    point(250,250);
    point(x, y);
    line(250, 250, x, y);
    point(x2, y2);
    line(x, y, x2, y2);
    xf = x;
    yf = y;
    x2f = x2;
    y2f = y2;
  }else{
    point(250,250);
    point(xf, yf);
    line(250, 250, xf, yf);
    point(x2f, y2f);
    line(xf, yf, x2f, y2f);
  }
  
}
