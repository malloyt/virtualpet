float wideness;
float CR;

void setup(){
  size(600,600);
  background(0);
  wideness=10;
  CR=0.2;
  
}

void draw() {
  noStroke();
  fill(#A29273);
  ellipse(300,300,200,150); //face
  
  ellipse(240,400,220,100);
  bezier(345,350,380,345,395,430,290,445); //body.face joiner
  
  strokeWeight(10);
  stroke(#A29273);
  noFill();
  bezier(135,410, 75,350,    90,300,  100,310); //tail

  noStroke();
  fill(#A29273);
  triangle(205,300,195,160,300,300); //left ear
  triangle(395,300,405,160,300,300); //right ear
  
  fill(#DEC9D7);
  triangle(210,260,200,175,235,235); //left ear detail
  triangle(390,260,400,175,365,235); //right ear detail
  
  fill(#F0E8D7);
  noStroke();
  ellipse(250,275,50,25); //eye outlines
  ellipse(350,275,50,25);
  
  fill(#8FBAF5);
  //strokeWeight(0.5);
  //stroke(0); //eye pupil
  ellipse(250,275,25,25);
  ellipse(350,275,25,25);
  
    wideness += CR;

  if (wideness >= 12) {
    CR = -0.2;
  }
  
  if (wideness <= 3) {
    CR = 0.2;
  }
  
  println(wideness);
    
  fill(#5F492C); //mini pupils
  ellipse(250,275,wideness,wideness);
  ellipse(350,275,wideness,wideness);
  
  noStroke();
  fill(#EAAACE);
  ellipse(300,310,50,10); //nose
  fill(#EAAFD0);
  ellipse(300,320,5,20);
 
  strokeWeight(5);
  stroke(#EAAFD0);
  noFill();
  bezier(280,335,275,350,300,350,300,325); //lips
  bezier(300,325,295,350,325,350,320,335);
  
  strokeWeight(2);
  stroke(255);
  line(230,320,160,300); //left whiskers
  line(230,325,160,315);
  line(230,330,160,330);
   
  line(370,320,430,300); //right whiskers
  line(370,325,430,315);
  line(370,330,430,330);

  
}
