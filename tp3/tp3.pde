//Eric Parra
//Comision 3
//https://www.youtube.com/watch?v=JvFUj0WSyNM

PImage Obra;
boolean girando = false;
int cant = 20; 
void setup() {
  size(800, 400); 
  Obra = loadImage("07.png"); 
}
void draw() {
  background(255);
  
  
  if (Obra != null) {
    image(Obra, 0, 0, 400, 400);
  }
  
  
  stroke(0);
  line(400, 0, 400, 400);
  
  float mod = 400.0 / cant; 
 
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      
  
      float posX = 400 + (mod * i);
      float posY = (mod * j);
      if (j % 2 != 0) { //fila impar
        posX = posX + (mod / 2);
      }
      fill(0);
      noStroke();
      
      ellipse(posX + mod/2, posY + mod/2, map(1,0, 1, mod *0.8, mod*0.8), map(1, 0,1, mod * 0.5, mod *0.5));
    }
  }
  EllipseNegra(600, 200);
}
void EllipseNegra(float x, float y) {
  pushMatrix();
  translate(x, y);
  float c = 0;
  float azar = 10; 
  float azul = 0;
  if (girando) {
    rotate(radians(frameCount * 2));
    float d = dist(x, y, mouseX, mouseY);
    c = map(d, 0, 400, 50, 255);
    azar = random(100, 200);
    azul = 200;
  } else {
   
    c = 0;
    azar = 10; 
    azul = 0;
  }
  noStroke();
  for (int tam = 250; tam > 0; tam --) {
   
    fill(c, azar, azul, calcularTransparencia(tam)); 
    ellipse(0, 0, tam * obtenerNumero(0,0), tam);
  }
  popMatrix();
}
    void mousePressed(){
      girando = ! girando;
      }
      
      float obtenerNumero(int i, int j){
        return 1.5 + ((i + j) / 100.0);
        
        }

      float calcularTransparencia(int tam) {  //FUNCION PROPIA QUE RETORNA VALOR
        return map(tam, 0, 250, 5, 15);
      }
        
       void keyPressed(){
         if (key == 'r'){
         girando = false;
         cant = 20;
   }
     else {
       println("presionaste otra tecla");
       }
    }
