Bacteria [] bob = new Bacteria[30];
void setup()   
{     
  size(400,400);
  background(0);
  noStroke();
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
    bob[i].r = (int)(Math.random() * 255);
    bob[i].g = (int)(Math.random() * 255);
    bob[i].b = (int)(Math.random() * 255); 
  }
}
void draw()   
{    
  
  for(int i = 0; i < bob.length; i++)
  {
  bob[i].show();
  }
  
}

class Bacteria    
{     
  
  int myX, myY;
  int r, g, b;
  
  Bacteria()
  {
    myX = myY = 200;
    
  }
  
    void walk()
  {
    myX = myX + (int)(Math.random() * 6 - 3);
    myY = myY + (int)(Math.random() * 6 - 3);
  }
  
  void show()
  {
    fill(r, g, b);
    ellipse(myX, myY, 1, 1);
    walk();
  }
  
}    