void setup () {
 size(300,300);

}

void draw () {
 background(255);

 //pushMatrix();
 translate(10,0);
 fill(255);
 rect(0,0,10,10); //white square
 translate(10,0);
 fill(255,200,200);
 rect(0,0,10,10); //pink square
 //popMatrix();

 fill(255,0,0);
 rect(0,0,10,10); // red square
}
