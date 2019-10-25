Bacteria[] cr; //declare bacteria variables here   
void setup()   
{     
  size(300, 300);
  cr = new Bacteria[10];
  for (int i = 0; i < cr.length; i++)
    cr[i] = new Bacteria();
}   
void draw()   
{    
  background(0,120,255);
  for (int i = 0; i < cr.length; i++)
    cr[i].show();
  for (int i = 0; i < cr.length; i++)
    cr[i].move();
}  
class Bacteria    
{  
  int myX, myY, col;
  Bacteria()
  {
    col = 255;
    myX = 275;
    myY = (int)(Math.random()*200)+50;
  }     
  void move()
  {
    myX = myX - (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
   	fill(255,255,0);
    noStroke();
    rect(0,0,300,50);
    fill(col, 0, 0);
    noStroke();
    ellipse(myX, myY, 30, 30);
    rect(myX + 14, myY - 5, 20, 8);
    rect(myX - 34, myY - 5, 20, 8);
    rect(myX - 34, myY - 18, 8, 13);
    rect(myX + 26, myY - 18, 8, 13);
    arc(myX - 30, myY - 18, 17, 17, (-PI/4), (5*PI/4)); 
    arc(myX + 30, myY - 18, 17, 17, (-PI/4), (5*PI/4));
    stroke(255, 0, 0);
    strokeWeight(7);
    line(myX - 9, myY + 15, myX - 13, myY + 22);
    stroke(255, 0, 0);
    strokeWeight(7);
    line(myX + 9, myY + 15, myX + 13, myY + 22);
    fill(0,0,0,255);
    ellipse(myX+5,myY-1,12,12);
    ellipse(myX-5,myY-1,12,12);
  }
}    