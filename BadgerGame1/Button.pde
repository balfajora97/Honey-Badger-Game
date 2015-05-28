
class Button {
  
  PVector loc;
  int myW, myH;
  String myTxt;
  color c = color(220, 215, 20);
  
  Button(PVector location, int w, int h, String btnTxt) {
    this.loc = location;
    myW = w;
    myH = h;
    myTxt = btnTxt;
  }
  
  void run() {
    display();
  }
  
  void display() {
    background(0);
    fill(c);
    stroke(2);
    rect(loc.x, loc.y, myW, myH, 15);
    textSize(45);
    fill(0);
    text(myTxt, loc.x + 30, loc.y + 80);
  }
  
  void gameplay() {
    background(bg);
    ip.run();
    h.run();
    v.run();
    pop.run();
  }
  
  boolean hitTest(PVector mouseLoc) {
    if (mouseLoc.x >= loc.x && mouseLoc.x <= loc.x + myW && mouseLoc.y >= loc.y && mouseLoc.y <= loc.y + myH) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void setColor(color c2) {
    c = c2;
  } 
}
