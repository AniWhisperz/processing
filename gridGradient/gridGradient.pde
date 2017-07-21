size(600,600);
for(int x=10; x<590;x+=10){
  for(int y=10; y<590; y+=10){
    rect(x,y,10,10);
    fill(0,x/2,y/2);
    stroke(y/2,0,x/2);
  }
}