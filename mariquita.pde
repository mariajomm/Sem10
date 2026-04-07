Mariquita miMariquita;

void setup(){
size(1000, 1000);
  // inicializamos el objeto
  //                     tempC,           tempPosX,tempPosY, tempVel
  miMariquita = new Mariquita (color(50, 70, 80), 500,     500,     5);

}
void draw (){
background(255);
miMariquita.correr(); 
miMariquita.mostrar(); 

}

class Mariquita{
  // constructor
  Mariquita(color tempC, float tempPosX, float tempPosY, float tempVel){
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVel;
  }
  //propiedades
  color c;
  float posX;
  float posY;
  float velocidad; 
  
  //métodos
  void mostrar(){
    fill(c);
    noStroke();
    //cuerpo
    ellipse(posX, posY, 60, 80);
    
    //cabeza
    ellipse(posX, posY - 45, 35, 35);
    
    //puntos en el cuerpo
    fill(0);
    circle(posX - 20, posY - 10, 15);
    circle(posX + 20, posY - 10, 15);
    circle(posX - 15, posY + 10, 20);
    circle(posX + 15, posY + 10, 20);
    //alas
    fill(200,0,0);
    ellipse(posX - 15, posY, 30, 50);
    ellipse(posX + 15, posY, 30, 50);
    
  }
  void correr() {
    posX = posX + velocidad;
  }
}
