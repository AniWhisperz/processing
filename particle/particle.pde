void setup(){
  size(500,500);
  frameRate(10);
  noStroke();
}

void draw(){
for(int x = 0; x < width; x+=70){
  for (int y = 0; y < height; y+=70){
    int ranNum = (int(random(255)));
    int ranNum2 = (int(random(255)));
    int ranPlaceX = (int(random(500)));
    int ranPlaceY = (int(random(500)));
    fill(ranNum-40,ranNum2-40, ranNum+40);
    rect(ranPlaceX,ranPlaceY,ranNum2, ranNum2);
    }
  }
}