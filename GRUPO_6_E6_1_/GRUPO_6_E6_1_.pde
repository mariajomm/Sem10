String herramienta = "pincel";

// posiciones de los botones
int pincelX = 10;
int pincelY = 60;

int borradorX = 10;
int borradorY = 140;

int limpiarX = 10;
int limpiarY = 220;

void setup() {
  size(800, 600);
  background(200);
  
  fill(255);
  rect(100, 0, 700, 600);
}

void draw() {
 
  fill(200);
  noStroke(); 
  rect(0, 0, 100, height);
  
  // dibujar botones
  dibujarBotones();
}

//iconos tipo paint
void dibujarBotones() {
  // botón pincel
  fill(220);
  rect(pincelX, pincelY, 60, 60);
  
  fill(0);
  // icono pincel: ES la línea inclinada
  stroke(0);
  strokeWeight(4);
  line(pincelX + 15, pincelY + 45, pincelX + 45, pincelY + 15);
  
  // botón del borrador
  fill(220);
  rect(borradorX, borradorY, 60, 60);
  
  fill(250, 50, 100);
  stroke(0);
  rect(borradorX + 15, borradorY + 20, 30, 20);

   // botón limpiar
   fill(220);
   rect(limpiarX, limpiarY, 60, 60);

   fill(0);
   stroke(0);
   strokeWeight(3);

   // icono limpiar (una X)
   line(limpiarX + 15, limpiarY + 15, limpiarX + 45, limpiarY + 45);
   line(limpiarX + 45, limpiarY + 15, limpiarX + 15, limpiarY + 45);
  noStroke();
}

// detectar clicks en botones
void mousePressed() {
  // pincel
  if (mouseX > pincelX && mouseX < pincelX + 60 &&
      mouseY > pincelY && mouseY < pincelY + 60) {
    herramienta = "pincel";
  }
  
  // borrador
  if (mouseX > borradorX && mouseX < borradorX + 60 &&
      mouseY > borradorY && mouseY < borradorY + 60) {
    herramienta = "borrador";
  }

  // limpiar lienzo
  if (mouseX > limpiarX && mouseX < limpiarX + 60 &&
    mouseY > limpiarY && mouseY < limpiarY + 60) {
  
  fill(255);
  noStroke();
  rect(100, 0, 700, 600);
 }
}

// dibujar en el lienzo
void mouseDragged() {
  // solo dentro del lienzo blanco
  if (mouseX > 100) {
    
    if (herramienta.equals("pincel")) {
      stroke(0);
      strokeWeight(5);
    }
    
    if (herramienta.equals("borrador")) {
      stroke(255); //<>//
      strokeWeight(20);
    }
    
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
