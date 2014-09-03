float x, y;
int count, time;
int trick, big, a;
boolean b, ba, bs, bd, bf;
color ca, cs, cd, cf;
void setup() {
  size(displayWidth, displayHeight);
  if (frame!=null) frame.setResizable(true);
  background(255);
  x=random(width);
  y=random(height);
  count=0;
  time=1500;
  trick=1;
  big=100;
  a=150;
  b=true;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textFont(createFont("Times New Roman", 50, true));
  ba=true;
  bs=true;
  bd=true;
  bf=true;
  ca=color(255);
  cs=color(255);
  cd=color(255);
  cf=color(255);
}
void draw() {
  background(0);
  if (keyPressed) {
    if (key=='a') {
      ba=false;
      if (trick>=0) {
        background(255);
        trick--;
      }
    }
    if (key=='s') {
      bs=false;
      if (big>=0) {
        a=250;
        b=false;
      }
    }
  }
  if (big<0) {
    a=150;
  }
  noStroke();
  fill(255);
  ellipse(mouseX, mouseY, a, a);
  fill(0);
  rect(x, y, 50, 50);
  time--;
  stroke(0);
  fill(ca);
  rect(width/2-150, height-60, 100, 100);
  fill(cs);
  rect(width/2-50, height-60, 100, 100);
  fill(cd);
  rect(width/2+50, height-60, 100, 100);
  fill(cf);
  rect(width/2+150, height-60, 100, 100);
  if (ba) {
    ca=color(255);
  } else {
    ca=color(0);
  }
  if (bs) {
    cs=color(255);
  } else {
    cs=color(0);
  }
  if (bd) {
    cd=color(255);
  } else {
    cd=color(0);
  }
  if (bf) {
    cf=color(255);
  } else {
    cf=color(0);
  }
  fill(255);
  text(time, width/2, 100);
  textSize(20);
  fill(0, 255, 0);
  text('A', width/2-200, height-110);
  text('S', width/2-100, height-110);
  text('D', width/2, height-110);
  text('F', width/2+100, height-110);
  fill(0);
  noStroke();
  text("flash", width/2-150, height-60);
  text("Big", width/2-50, height-60);
  text("", width/2+50, height-60);
  text("", width/2+150, height-60);
  if (count==10) {
    noLoop();
    background(255);
    fill(0);
    textSize(100);
    text("You Win!", width/2, height/2);
    text(time, width/2, 200);
  }
  if (time==0) {
    noLoop();
    background(255);
    fill(255, 0, 0);
    rect(x, y, 50, 50);
    fill(0);
    textSize(100);
    text("you lost", width/2, height/2);
  }
  if (b==false) {
    big--;
  }
}
void mouseClicked() {
  if (mouseX>=x-25 && mouseX <=x+25 && mouseY>=y-25 && mouseY<=y+25) {
    count++;
    x=random(width);
    y=random(height);
  }
}
