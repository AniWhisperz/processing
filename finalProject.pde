void setup(){
  size(1000,500);
  //frameRate(20);
  background(150);
}
//general
int floor = 315;
int horizon = 300;
int left = 20;
int right = 980;
int mp = 500;
int w = 15;
int curb = horizon+50;

//house 1 
int mpy1 = floor-100;
int roof1 = mpy1-60;
int left1 = left+60;
int right1 = left1+200;
int mpx1 = right1-90;

//house 2
int left2 = mp-110;
int right2 = left2+190;
int roof2 = floor-90;
float mpx2 = (left2+right2)/2;

//house 3
int right3 = right-60;
int left3 = right3-240;
int mpy3 = floor-90;
float mpx3 = (left3+right3)/2;
float mpx3l =(left3+right3)/2.2;
float mpx3r = (left3+right3)/1.84;
int roof3 = mpy3-40;

//colors
int r ;
int g ;
int b1;
int b2;
int b3;
int mr;
int mg;
int mb;
int cr;
int cg;
int cb;

//car
int leftCar = 40;
int rightCar = leftCar+180;
int topCar = curb+15;

void draw(){
 noStroke();
 fill(150);
  rect(left,curb,960,10);
 fill(100);
 stroke(0);
 line(left, horizon, right, horizon);
 line(left, curb,right,curb);
 line(left, curb+10,right,curb+10);

  ////fence
  // beginShape();
  // vertex(20,horizon-5); 
  // vertex(20,215);
  // vertex(980,215);
  // vertex(980,horizon-5);
  // endShape();
 
 fill(255);
 //house 1
 int[] hx1 = {left1,right1,right1,mpx1,mpx1,(mpx1+left1)/2,left1,left1};
 int[] hy1 = {floor, floor, mpy1, mpy1, roof1,roof1-20,roof1,floor};
 beginShape();
   for(int i = 0; i <hx1.length;i++){
     vertex(hx1[i],hy1[i]);
   }
 endShape();
 
 //house 2
 float[] hx2 = {left2, right2, right2,(mpx2+right2)/2,(mpx2+left2)/2,left2,left2};
 float[] hy2 = {floor, floor, roof2, roof2-20, roof2-20, roof2, floor};
 beginShape();
   for(int i = 0; i<hx2.length; i++){
     vertex(hx2[i], hy2[i]);
   }
 endShape();
 
 //house 3
 float[] hx3 = {right3, left3, left3, mpx3l, mpx3l, mpx3, mpx3r, mpx3r, right3, right3};
 float[] hy3 = {floor, floor, mpy3, mpy3, roof3, mpy3-50, roof3, mpy3,mpy3,floor};
 beginShape();
   for(int i = 0; i<hx3.length; i++){
     vertex(hx3[i],hy3[i]);
   }
 endShape();
 
 fill(200);
 
 //shadow house 1
 float[] shx1= {(left1+mpx1)/2+13, mpx1+10, mpx1+10,right1+10,right1+10,right1, right1,mpx1,mpx1,(left1+mpx1)/2,(left1+mpx1)/2+13};
 float[] shy1= {roof1-25, roof1-5, mpy1-10, mpy1-10,horizon,floor,mpy1,mpy1,roof1,roof1-20,roof1-25};
 beginShape();
   for(int i =0; i<shx1.length; i++){
     vertex(shx1[i],shy1[i]);
   }    
 endShape();
 line(right1,mpy1,right1+10,mpy1-10);
 line(mpx1,mpy1,mpx1+10, mpy1-10);
 line(mpx1,roof1,mpx1+10,roof1-5);
 
 //shadow house 2
 float[] shx2= {(mpx2+left2)/2+15, (mpx2+right2)/2+15,right2+10,right2+10, right2, right2, (mpx2+right2)/2, (mpx2+left2)/2, (mpx2+left2)/2+15};
 float[] shy2= {roof2-25, roof2-25, roof2-6, horizon,floor, roof2, roof2-20,roof2-20, roof2-25};
 beginShape();
   for(int i =0; i<shx2.length; i++){
     vertex(shx2[i],shy2[i]);
   }    
 endShape();
 line(right2,roof2,right2+10,roof2-6);
 line((mpx2+right2)/2,roof2-20, (mpx2+right2)/2+15,roof2-25);

  //shadow house 3
  float[] shx3 ={mpx3l+12,mpx3+10,mpx3r+10,mpx3r+10,right3+10,right3+10,right3,right3,mpx3r,mpx3r,mpx3,mpx3l, mpx3l+12};
  float[] shy3 ={roof3-10,roof3-21,roof3-10,mpy3-10,mpy3-10,horizon,floor, mpy3, mpy3, roof3, roof3-10,roof3, roof3-10};
  beginShape();
   for(int i =0; i<shx3.length; i++){
     vertex(shx3[i],shy3[i]);
   }
  endShape();
  line(right3,mpy3,right3+10,mpy3-10);
  line(mpx3r,mpy3,mpx3r+10,mpy3-10);
  line(mpx3r,roof3,mpx3r+10,roof3-10);
  line(mpx3,roof3-10,mpx3+10,roof3-21);
  
  beginShape();
  vertex(mpx3l,mpy3-10);
  vertex(left3+15,mpy3-10);
  vertex(left3,mpy3);
  vertex(mpx3l,mpy3);
  endShape();
  
  //doors
  rect(mpx1+30,floor-60,35,60);
  rect(right2-60,floor-60,35,60);
  rect(mpx3-20, floor-60, 35,60);
  
  //lights
  noStroke();
     if((keyPressed==true) && (key=='a')){
       fill(r+55,g+55,b1+50);
       ellipse(134,188,60,60);
       b1 = 0;
      }
      else{
        r=200;
        g=200;
        b1=200;
      }
     if((keyPressed==true) && (key=='s')){
      fill(r+50,g+50,b2+50);
      ellipse(435,260,60,60);
      b2 = 0;
      }
      else{
        r=200;
        g=200;
        b2=200;
      }
     if((keyPressed==true) && (key=='d')){
      fill(r+50,g+50,b3+50);
      ellipse(797,208,60,60);
      b3 = 0;
     }
     else{
       r=200;
       g=200;
       b3=200;
     }
     if((keyPressed==true) && (key=='w')){
       mr = 255;
       mg = 255;
       mb = 150;
     }
  else{
   mr=150;
   mg=150;
   mb=150;
  }
  
  //windows
  stroke(0);
  fill(r,g,b1);
  for(int i = -20; i < 20; i+=20){
    for(int e = -15; e < 25; e+=20){
      rect((mpx1+left1)/2+i,(roof1+mpy1)/2+e,w,w);
    }
  }
  fill(r,g,b2);
  for(int i = -20; i < 20; i+=20){
    for(int e = 0; e < 40; e+=20){
      rect((mpx2+left2)/2+i,(floor+roof2)/2.22+e,w,w);
    }
  }
  fill(r,g,b3);
  for(int i = -20; i < 20; i+=20){
    for(int e = -15; e < 25; e+=20){
      rect(mpx3+i,(roof3+mpy3)/2+e,w,w);
    }
  }
  
  //moon
  noStroke();
  fill(mr,mg,mb);
  ellipse(780, 50, 30,30);
 
  //car stuff
  leftCar += 2;
  rightCar += 2;
    if((leftCar>1000) && (rightCar>180)){
      leftCar=-180;
      rightCar=0;
      float carColor = floor(random(1,5));
      if(carColor == 1){
        cr = 200;
        cg = 200;
        cb = 200;
      }
      
      if(carColor == 2){
        cr = 200;
        cg = 0;
        cb = 0;
      }
      if(carColor == 3){
        cr = 25;
        cg = 80;
        cb = 30;
      }
      if(carColor == 4){
        cr = 0;
        cg = 8;
        cb = 140;
      }
      if(carColor == 5){
        cr = 0;
        cg = 0;
        cb = 0;
      }
      println(carColor);
    }
  //road
  noStroke();
  fill(150);
  rect(0,350+1,1000,150);
  
  //the actual friging car
  stroke(0);
  fill(cr,cg,cb);
  int[] carX ={leftCar+60, leftCar+40, leftCar, leftCar, rightCar, rightCar, rightCar-40, rightCar-60, leftCar+60};
  int[] carY ={topCar, topCar+25, topCar+25, topCar+65, topCar+65,topCar+25,topCar+25,topCar, topCar};
  beginShape();
     for(int i =0; i<carX.length; i++){
    vertex(carX[i],carY[i]);
   }    
  endShape();
  //extrabits: you've always got to complicate things.
    fill(200);
  beginShape();
  vertex(rightCar-80, topCar);
  vertex(rightCar-60, topCar);
  vertex(rightCar-40, topCar+25);
  vertex(rightCar-60, topCar+25);
  vertex(rightCar-80, topCar+25);
  vertex(rightCar-80, topCar);
  endShape();
  
  beginShape();
  vertex(leftCar+80, topCar);
  vertex(leftCar+60, topCar);
  vertex(leftCar+40, topCar+25);
  vertex(leftCar+60, topCar+25);
  vertex(leftCar+80, topCar+25);
  vertex(leftCar+80, topCar);
  endShape();

  fill(140);
  ellipse(leftCar+30,curb+80, 40,40);
  ellipse(rightCar-30, curb+80, 40,40);
 
  fill(200);
  ellipse(leftCar+30,curb+80, 20,20);
  ellipse(rightCar-30, curb+80, 20,20);
}
