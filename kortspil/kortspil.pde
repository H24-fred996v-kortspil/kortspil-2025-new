String scene;
boolean actionPerformedOnClick = false;
String sted;
int dmg1=100;
int dmg2=100;
int hlt1=100;
int hlt2=100;
boolean firstPicked = false;
boolean isItPlayerOneTurn = true;
int dmg;
int sacrifice;


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
    rect(600, 600, 300, 150);
    fill(0);
    text("START", 600, 600);
    if (mousePressed==true&&mouseX>450&&mouseX<750&&mouseY>525&&mouseY<675&&actionPerformedOnClick==false) {
      scene = "sted";
      actionPerformedOnClick = true;
    }
  }

  if (scene=="sted") {
    fill(255);
    rect(300, 450, 200, 300);
    rect(900, 450, 200, 300);
    textSize(40);
    fill(0);
    text("Ørken", 300, 350);
    text("1.2x dmg", 300, 450);
    text("0.8x def", 300, 550);
    text("Grotte", 900, 350);
    text("0.9x dmg", 900, 450);
    text("1.4x def", 900, 550);
    if (mousePressed==true&&mouseX>200&&mouseX<400&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false) {
      sted="Ørken";
      scene="karakter";
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>800&&mouseX<1000&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false) {
      sted="Grotte";
      scene="karakter";
      actionPerformedOnClick = true;
    }
  }

  if (scene=="karakter") {
    fill(255);
    rect(200, 450, 200, 300);
    rect(600, 450, 200, 300);
    rect(1000, 450, 200, 300);
    textSize(40);
    if (firstPicked==false) {
      text("First player", 600, 100);
    } else {
      text("Second player", 600, 100);
    }
    fill(0);
    text("Nilasian", 200, 350);
    text("3.0x dmg", 200, 450);
    text("0.2x hlt", 200, 550);
    text("Felianen", 600, 350);
    text("2.0x dmg", 600, 450);
    text("0.5x hlt", 600, 550);
    text("Engelen", 1000, 350);
    text("0.5x dmg", 1000, 450);
    text("2.5x hlt", 1000, 550);
    if (mousePressed==true&&mouseX>100&&mouseX<300&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==false) {
      dmg1=300;
      hlt1=20;
      firstPicked=true;
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>100&&mouseX<300&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==true) {
      dmg2=300;
      hlt2=20;
      scene="angrib";
      dmg=int(random(1, 10));
      if (sted=="Ørken") {
        dmg=ceil(dmg*1.2*0.8);
      } else {
        dmg=ceil(dmg*0.9*1.4);
      }
      sacrifice=int(random(1, 4));
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>500&&mouseX<700&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==false) {
      dmg1=200;
      hlt1=50;
      firstPicked=true;
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>500&&mouseX<700&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==true) {
      dmg2=200;
      hlt2=50;
      scene="angrib";
      dmg=int(random(1, 10));
      if (sted=="Ørken") {
        dmg=ceil(dmg*1.2*0.8);
      } else {
        dmg=ceil(dmg*0.9*1.4);
      }
      sacrifice=int(random(1, 4));
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>900&&mouseX<1100&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==false) {
      dmg1=50;
      hlt1=250;
      firstPicked=true;
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>900&&mouseX<1100&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false&&firstPicked==true) {
      dmg2=50;
      hlt2=250;
      scene="angrib";
      dmg=int(random(1, 10));
      if (sted=="Ørken") {
        dmg=ceil(dmg*1.2*0.8);
      } else {
        dmg=ceil(dmg*0.9*1.4);
      }
      sacrifice=int(random(1, 4));
      actionPerformedOnClick = true;
    }
  }

  if (scene=="angrib") {
    fill(255);
    textSize(40);
    if (isItPlayerOneTurn==true) {
      text("First player", 600, 100);
    } else {
      text("Second player", 600, 100);
    }
    text("Player 1 health: "+hlt1, 300, 100);
    text("Player 2 health: "+hlt2, 900, 100);
    rect(300, 450, 200, 300);
    rect(900, 450, 200, 300);
    fill(0);
    text("Angreb", 300, 375);
    text(dmg+" dmg", 300, 525);
    text("Angreb", 900, 337.5);
    text(ceil(dmg*1.2)+" dmg", 900, 412.5);
    text("Ofre", 900, 487.5);
    text(sacrifice+" hlt", 900, 562.5);
    if (mousePressed==true&&mouseX>200&&mouseX<400&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false) {
      if (isItPlayerOneTurn==true) {
        hlt2=hlt2-ceil(dmg*dmg1/100);
        isItPlayerOneTurn=false;
      } else {
        hlt1=hlt1-ceil(dmg*dmg2/100);
        isItPlayerOneTurn=true;
      }
      dmg=int(random(1, 10));
      if (sted=="Ørken") {
        dmg=ceil(dmg*1.2*0.8);
      } else {
        dmg=ceil(dmg*0.9*1.4);
      }
      sacrifice=int(random(1, 4));
      actionPerformedOnClick = true;
    }
    if (mousePressed==true&&mouseX>800&&mouseX<1000&&mouseY>300&&mouseY<600&&actionPerformedOnClick==false) {
      if (isItPlayerOneTurn==true) {
        hlt2=hlt2-ceil(dmg*1.2*dmg1/100);
        hlt1=hlt1-sacrifice;
        isItPlayerOneTurn=false;
      } else {
        hlt1=hlt1-ceil(dmg*1.2*dmg2/100);
        hlt2=hlt2-sacrifice;
        isItPlayerOneTurn=true;
      }
      dmg=int(random(1, 10));
      if (sted=="Ørken") {
        dmg=ceil(dmg*1.2*0.8);
      } else {
        dmg=ceil(dmg*0.9*1.4);
      }
      sacrifice=int(random(1, 4));
      actionPerformedOnClick = true;
    }
    if (hlt1<1) {
      scene="win2";
    }
    if (hlt2<1) {
      scene="win1";
    }
  }

  if (scene=="win1") {
    fill(255);
    textSize(160);
    text("Player 1 Wins",600,450);
  }
  if (scene=="win2") {
    fill(255);
    textSize(160);
    text("Player 2 Wins",600,450);
  }
}

void mouseReleased() {
  actionPerformedOnClick = false;
}
