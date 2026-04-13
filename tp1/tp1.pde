PImage miImagen;

void setup(){
  size(800, 400);
  miImagen = loadImage("jirafa.jpg.jpg");
  imageMode(CORNER);
  noStroke();
}

void draw(){
  background(220);
  image(miImagen, 0, height - 400, 200, 400);
  fill(240,200,120);
  rect(430, 160, 160, 120, 20);
  rect(530, 40, 20, 140, 8);
  ellipse(550, 20, 60, 40);
  triangle(535, 5, 525, 18, 540, 18);
  triangle(565, 5, 575, 18, 560, 18);
  fill(0);
  ellipse(540, 18, 6, 6);
  ellipse(560, 18, 6, 6);
  fill(240,200,120);
  rect(450, 270, 20, 80);
  rect(490, 270, 20, 80);
  rect(530, 270, 20, 80);
  rect(570, 270, 20, 80);
  stroke(150,100,60);
  strokeWeight(3);
  line(440, 200, 420, 230);
  noStroke();
  fill(150,90,40);
  ellipse(470, 190, 30, 20);
  ellipse(510, 210, 40, 24);
  ellipse(540, 170, 28, 18);
}
