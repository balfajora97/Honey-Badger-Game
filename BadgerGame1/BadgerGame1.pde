int d;
Hero pop = new Hero();
PImage bg, wf, gm, ft;
Hunter h = new Hunter(new PVector(450, 350));
InfoPanel ip;
PImage hImg, fImg, mImg;
Vendor v = new Vendor();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
void setup()
{
  loadImages();

  imageMode(CENTER);

  size(1200, 900);
  ip = new InfoPanel(new PVector(1050, 0));
}

void draw()
{
  background(bg);
  ip.run();
  h.run();
  v.run();
  line(pop.loc.x, pop.loc.y, h.loc.x, h.loc.y);
  pop.run();
  gameOver();
}


void loadImages() {
  hImg = loadImage("hi2.png"); 
  fImg = loadImage("fi1.png");  
  mImg = loadImage("mi1.png");
  gm = loadImage("GM1.png");
  ft = loadImage("FT2.png");
  bg = loadImage("Grass.png");
  wf = loadImage("WF2.png");
}

void keyPressed()
{
  if (keyCode == 'W')
  {
    pop.setDirection(1);
  }
  else if (keyCode == 'S')
  {
    pop.setDirection(2);
  }
  else if (keyCode == 'A')
  {
    pop.setDirection(3);
  }
  else if (keyCode == 'D')
  {
    pop.setDirection(4);
  }
  else if (key == ' ') {
    pop.setDirection(0);
  }
}

void mousePressed() {
  ip.setHealth((0.96*ip.getHealth()));
}

void gameOver() {
  if(ip.getHealth() < 0.05) {
    textSize(45);
    fill(255);
    text("GAMEOVER!!!", 400,400);
  } 
}

