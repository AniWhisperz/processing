size(600,600);
noStroke();

int x = 150; 
int y = 250;
int diff= 100;
int diffTwo = 150;
float diffArm = diff+(diffTwo/2.5);
float diffArmY = diff/1.30; 
float stairXOne = x+diff+(diffTwo*.3);
float stairXTwo = x+diff+(diffTwo*.7);
fill(100,100,100);
rect(x, y -(diffArmY), diff+diffArm-40, diff);
quad(x+diff, y, x+(diff+diffTwo), y, x+(diff+diffTwo-25),y-(diff/4), x+diff-25, y-(diff/4));

fill(0, 100, 150);
//body
rect(x, y, diff, diff);
triangle(x, y, x+diff, y, x+(diff/2),y-(diff/2));
rect(x+diff, y, diffTwo, diff);
//arms
rect(x+diffArm, y -(diffArmY),diff/1.5, diff/1.5);
triangle(x+diffArm, y -(diffArmY), x+(diffArm+diff/1.5), y-(diffArmY), x+(diffArm+(diff/1.5)/2), y - diffArmY/.75);
//thing-a-ma-jigs
fill(210);
rect(x+diff,y+diff-25, diff+(diffArm/3.2),25);
//pillars
fill(225);
rect(x+diff, y, 5, diff);
rect(x+diff+diffTwo-5,y, 5, diff);
rect(x+diff+(diffTwo*.3),y, 5, diff);
rect(x+diff+(diffTwo/1.5),y, 5, diff);
//door
rect(stairXOne+10, y+20, 40, 80);
//stairs
rect(x+diff+(diffTwo*.3),y+diff/1.35, 60, 25);
stroke(150);
line(stairXOne,y+diff/1.25, stairXTwo,y+diff/1.25);
line(stairXOne,y+diff/1.17, stairXTwo,y+diff/1.17);
line(stairXOne,y+diff/1.1, stairXTwo,y+diff/1.1);
line(stairXOne,y+diff/1.05, stairXTwo, y+diff/1.05);