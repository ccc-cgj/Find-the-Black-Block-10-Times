float x, y;
int count, time;
void setup() {
  size(displayWidth, displayHeight);
  if (frame!=null) frame.setResizable(true);
  background(255);
  x=random(width);
  y=random(height);
  count=0;
  time=3000;
}
void draw() {
  background(0);
  noStroke();
  fill(255);
  ellipse(mouseX, mouseY, 150, 150);
  fill(0);
  rect(x, y, 50, 50);
  time--;
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(createFont("Times New Roman", 50, true));
  text(time, width/2, 100);
  if (count==5) {
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
}
void mouseClicked() {
  if (mouseX>=x && mouseX <=x+50 && mouseY>=y && mouseY<=y+50) {
    count++;
    x=random(width);
    y=random(height);
  }
}
