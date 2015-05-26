

class Hero
{
  PVector loc, vel;
  boolean north, south, east, west, nothing;

  Hero()
  {
    loc = new PVector(400, 400);
    vel = new PVector(0, 0);
    north = false;
    south = false;
    east = false;
    west = false;
    nothing = false;
  }

  void run()
  {
    pop.display();
    pop.update();
    pop.checkEdges();
  }

  void display()
  {
    
    //fill(20,225);
    //ellipse(loc.x, loc.y, 100, 75); //Badger
    image(gm,loc.x,loc.y);

  }

  void update()
  {
    if (north == true) {
      vel.set(0, -10);
      loc.add(vel);
    }
    else if (south == true) {
      vel.set(0, 10);
      loc.add(vel);
    }
    else if (west == true) {
      vel.set(-10, 0);
      loc.add(vel);
    }
    else if (east == true) {
      vel.set(10, 0);
      loc.add(vel);
    }
    else if (nothing == true) {
      vel.set(0, 0);
      loc.add(vel);
    }
  }

  void checkEdges()
  {
    if (loc.x > 1000)
    {
      loc.x =0;
    }
    else if (loc.x < 0)
    {
      loc.x = 1000;
    }
    if (loc.y > height)
    {
      loc.y =0;
    }
    else if (loc.y < 0)
    {
      loc.y = height;
    }
  }

  void setDirection(int d)
  {
    north = false;
    south = false;
    east = false;
    west = false;
    nothing = false;

    switch(d) {
    case 1:
      north = true;
      break;
    case 2:
      south = true;
      break;
    case 3:
      west = true;
      break;
    case 4:
      east = true;
      break;
    case 0:
      nothing = true;
      break;
    }
  }
} //end class

