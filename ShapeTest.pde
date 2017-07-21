//xc qvc byc ecqe
void setup(){
  size(200,200);
  background (20);
  strokeWeight(2);
  smooth(2);
}
//noStroke();
int nearWall = 20;
int farWall = 170;
int floor = 180;
float moonX = 150;
float moonY = 40;

void draw(){
  fill (225);
  beginShape();
  vertex(nearWall,floor);
   vertex(farWall,floor);
  vertex(farWall,90);
  vertex(90,90);
  vertex(90,40);
  vertex(55,20);
  vertex(nearWall,40);
  vertex(nearWall,floor);
  endShape();

  fill(200);
  beginShape();
  vertex(farWall,floor);
  vertex(farWall+15,floor-10);
  vertex(farWall+15,80);
  vertex(100,80);
  vertex(100,35);
  vertex(65,15);
  vertex(55,nearWall);
  vertex(90,40);
  vertex(90,90);
  vertex(farWall,90);
  vertex(farWall,floor);
  endShape();

  rect(120,130,25,50);

  line(farWall,90, farWall+15, 80);
  line(100,35,90,40);
  line(90,90,100,80);
 if(mousePressed == true){
      noStroke();
    fill (255,255,0);
    ellipse(53,62,50,50);
    stroke(0);
  fill (255);
}
else {
  fill (0);
}
rect(40,50,10,10);
rect(55,50,10,10);
rect(40,65,10,10);
rect(55,65,10,10);

if((keyPressed == true)&&(key == 'm')){
  fill(255,250,0);
  noStroke(); 
   }
   else {
     fill(20);
     noStroke();
   }
   ellipse(moonX,moonY,35,35);
  stroke(0);

}
//n.mirc e.yc w.ucby,yt qxrmo ,irc e.yc w.ucby,yt x.vwc
//n.m eqy qvu uc b. byc bccbyi tmb n.m eqyb uqic uc t. b. xqv