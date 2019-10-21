Bacteria [] bob = new Bacteria[50];
boolean diffWalk = false;

void setup()   
{     
  size(400, 400);
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

void mousePressed()
{

 if(diffWalk == false)
  {
    diffWalk = true;
  }
  else if(diffWalk == true)
  {
    diffWalk = false;
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

    if(diffWalk == false)
    {
      myX = myX + (int)(Math.random() * 6 - 3);
      myY = myY + (int)(Math.random() * 6 - 3);
    }
    else if(diffWalk == true)
    {
      int dir = (int)(Math.random() * 4);

      if(dir == 0)
      {
        myX = myX + 3;
      }
      else if(dir == 1)
      {
        myX = myX - 3;
      }
      else if(dir == 2)
      {
        myY = myY + 3;
      }
      else
      {
        myY = myY - 3;
      }
    }
  }
  
  void show()
  {
    fill(r, g, b);
    //stroke(r, g, b);
    ellipse(myX, myY, 1, 1);
    walk();
    if(keyPressed == true)
    {
      background(0);
      myX = 200;
      myY = 200;
      diffWalk = false;
    }
  }
}    