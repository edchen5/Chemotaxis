Bacteria [] bob = new Bacteria[100];

boolean diffWalk = false;
boolean diffStroke = false;

void setup()   
{     
  size(500, 500);
  background(0);

  frameRate(100);

  for(int i = 0; i < bob.length; i++)
    bob[i] = new Bacteria();
}

void draw()   
{    
  for(int i = 0; i < bob.length; i++)
    bob[i].show();
}

void mousePressed()
{
  if(mouseButton == LEFT)
    diffWalk = !diffWalk;

  if(mouseButton == RIGHT)
    diffStroke = !diffStroke;
}

class Bacteria    
{     
  
  int myX, myY;
  int myR, myG, myB;
  
  Bacteria()
  {
    myX = myY = height / 2;
    myR = (int)(Math.random() * 255);
    myG = (int)(Math.random() * 255);
    myB = (int)(Math.random() * 255);
  }
  
  void walk()
  {
    if(!diffWalk)
    {
      myX += (int)(Math.random() * 6 - 3);
      myY += (int)(Math.random() * 6 - 3);
    }
    else
    {
      int dir = (int)(Math.random() * 4);

      if(dir == 0)
        myX += 3;
      else if(dir == 1)
        myX -= 3;
      else if(dir == 2)
        myY += 3;
      else
        myY -= 3;
    }
  }

  void show()
  {

    if(diffStroke)
      stroke(myR, myG, myB);
    else 
      noStroke();

    fill(myR, myG, myB);
    ellipse(myX, myY, 1, 1);
    
    walk();

    if(keyPressed)
    {
      background(0);
      myX = width / 2;
      myY = height / 2;
      diffWalk = false;
      diffStroke = false;
    }
  }
}    