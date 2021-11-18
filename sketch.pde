int startX=250;
int startY=0;
int endX=0;
int endY=150;
float sweight=5;
float transp=100;
int decision=0;
//0 = draw lightning bolt, 1 = draw fade/cover
float fade=100;
int recth=20;

void setup() {
  size(500, 500);
  background(0);
  //frameRate(200);
}

void draw() {

  println(decision);

  if (decision==0) {
    decision=0;

    if (endY < 500) {
      endX=startX+(int)(Math.random()*19)-9;
      endY=startY+(int)(Math.random()*10);
      sweight-=0.035;
      transp-=1;
      strokeWeight(sweight);
      stroke(250, 250, 20, transp);
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }
    if (endY>=499) {
      startX=250;
      startY=0;
      endX=0;
      endY=150;
      sweight=5;
      transp=100;
      decision=1;
    }
  } else if (decision==1) {
    decision=1;
   
    fade-=2;
    recth+=12;
    noStroke();
    fill(0, 0, 0, fade);
    rect(0, 0, 500, recth);
    if (recth>=450) {
      decision=0;
      fade=100;
      recth=20;
    
    }
  }
}
