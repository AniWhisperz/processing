size(200,200);
noFill();
int xO = 20;
int xI = 180;
int y = 20;

int yO = xO;
int yI = xI;
int x = y;

int l = 20;
int lX = 160;
int lY = 40; 

int qX = 20;
int qY = qX;

int quO = 180; 
int quI = 160;

int e =100;
stroke(255,100,100);
for(int i =1; i<10; i++){
  line(xO,y*i,xI,y*i);
  line(x*i,yO,x*i,yI);
  line(l*i,20,20,l*i);
  line(180,l*i,l*i,180);
}
for(int i = 0 ; i<8; i++){
   line(20,lX-(20*i),lY+(20*i),180);
   line(lX-(20*i),20,180,lY+(20*i));
}

for(int i =2; i<10; i++){
  stroke(100,100,255);
  quad(qX, qY, qX, qY*i, qX*i, qY*i, qX*i,qY);
}

for(int i = 0; i<8; i++){
  quad(quI-(20*i),quI-(20*i),quI-(20*i),quO,quO,quO,quO,quI-(20*i));
}