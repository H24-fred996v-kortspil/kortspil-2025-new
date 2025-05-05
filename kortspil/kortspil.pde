String scene;
boolean actionPerformedOnClick = false;

void setup() {
  size(1200, 900);
  scene = "start";
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}

void draw() {
  background(0);
  if (scene=="start") {
    fill(255);
    textSize(100);
    text("ATTACHEM", 600, 100);
    rect(600,600,300,150);
    fill(0);
    text("START",600,600);
    if (mousePressed==true&&mouseX>450&&mouseX<750&&mouseY>525&&mouseY<675&&actionPerformedOnClick==false) {
      scene = "sted";
      actionPerformedOnClick = true;
    }
  }
}

void mouseReleased() {
  actionPerformedOnClick = false;
}
