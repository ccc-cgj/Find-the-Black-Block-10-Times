float x, y;
int count, time;
int trick, big, a;
boolean b;
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
}
void draw() {
  background(0);
  if (keyPressed) {
    if (key==' ') {
      if (trick>=0) {
        background(255);
        trick--;
      }
    }
    if (key==ENTER) {
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
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(createFont("Times New Roman", 50, true));
  text(time, width/2, 100);
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
  if (mouseX>=x && mouseX <=x+50 && mouseY>=y && mouseY<=y+50) {
    count++;
    x=random(width);
    y=random(height);
  }
}
