 // float x = 480;
 // float a=0;
 // boolean left=true;
 // float r = 30;

  
 // void setup(){
 //   size(1000,1000);
 
 // }
 // void draw() {
 //   noFill();
 //   translate((width/2)+480, (height/2)+500);
 //   rotate(PI);
    
 //   translate(0,height/2);
 //   scale(1,-1);
 //   translate(0,-height/2);
    
 //   float t =  (millis() / 4000.0f) ; 
 //   if(a<PI&&left){
 //     arc(x, 500, r, r, 0, a);
 //     a=t;
 //   }else if(a > PI && left){
 //     x = x +r/2;
 //     r=r*2;
 //     left = false;
 //   }else if(a>0 && a<2*PI && !left){
 //     arc(x, 500, r, r, PI, a);
 //     a=t;
 //   }else if(a>2*PI && !left){
 //     x = x - r/2;
 //     r=r*2;
 //     a=0;
 //     left = true;
 //   }
    
    
 //}
 
   //float x = 480;
  //float a=0;
  
  float offset = 480;
  boolean left=true;
  float r = 10;
  float period = 240;
  //float step;
  
  void setup(){
    size(1000,1000);
    line(0,500,1000,500);
    line(500,0, 500, 1000);
    frameRate(60);
  }
  void draw() {
    noFill();
    translate((width/2)+480, (height/2)+500);
    rotate(PI);
    
    translate(0,height/2);
    scale(1,-1);
    translate(0,-height/2);
    
  
    float x1 = r * cos(PI * frameCount / period) +offset;
    float y1 = r * sin(PI * frameCount / period) +500;

    fill(255, 0, 0);
    ellipse(x1, y1, 5, 5);
    
    if(y1>500&&left){
      offset = offset -r;
      r=r*2;
      left = false;
    }else if(y1 < 500 && !left){
        offset = offset +r;
        r=r*2;
        left = true;
    }
    
 }
