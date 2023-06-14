import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import com.dhchoi.CountdownTimer;
import com.dhchoi.CountdownTimerService;

int targetSize = 90; // Tamanho do alvo
int targetX, targetY; // Posição do alvo
int score = 0; // Pontuação do jogador
boolean hit = false; // Verifica se o jogador acertou o alvo
int tam = 50;

int vm = 0;
int vd = 0;
int az = 0;

int dif =0;




void dificuldade(){
PImage fundo4 = loadImage("agua.jpg");  
PImage B1 = loadImage("JOGAR.png");

PShape rtg8, rtg9, rtg10, rtg11;
background(fundo4);
pushMatrix();
fill(255);
textSize(24);
textAlign(LEFT);
text("Escolha a dificuldade", height/2,200);
popMatrix();
pushMatrix();
fill(255,99,71);
rtg8 = createShape(RECT,280,250,50,50);
textSize(24);
textAlign(LEFT);
text("Aquecimento",230,350);
popMatrix();
pushMatrix();
fill(255,0,0);
rtg9 = createShape(RECT,380,250,50,50);
textSize(24);
textAlign(LEFT);
text("Normal",380,350);
popMatrix();
pushMatrix();
fill(139,0,0);
rtg10 = createShape(RECT,480,250,50,50);
textSize(24);
textAlign(LEFT);
text("Dificil",485,350);
popMatrix();
pushMatrix();
fill(0);
rtg11 = createShape(RECT,300,450,200,50);
popMatrix();

if(mousePressed == true && mouseX>280 && mouseX<330 && mouseY>250 && mouseY<300){
  dif = 1;
  println(dif);
}else if(mousePressed == true && mouseX>380 && mouseX<430 && mouseY>250 && mouseY<300){
  dif = 2;
  println(dif);
}else if(mousePressed == true && mouseX>480 && mouseX<530 && mouseY>250 && mouseY<300){
  dif = 3;
  println(dif);
}
  image(B1,300,450);
  shape(rtg8, 0, 0);
  shape(rtg9, 0, 0);
  shape(rtg10, 0, 0);
 // shape(rtg11, 0, 0);

}

void editar(){
PImage fundo4 = loadImage("agua.jpg");  
PImage B1 = loadImage("JOGAR.png");

PShape rtg4, rtg5, rtg6, rtg7;
background(fundo4);
pushMatrix();
fill(255);
textSize(24);
textAlign(LEFT);
text("Escolha a cor do alvo",height/2 , 200);
popMatrix();
pushMatrix();
fill(255,0,0);
rtg4 = createShape(RECT,280,250,50,50);
popMatrix();
pushMatrix();
fill(0,255,0);
rtg5 = createShape(RECT,380,250,50,50);
popMatrix();
pushMatrix();
fill(0,0,255);
rtg6 = createShape(RECT,480,250,50,50);
popMatrix();
pushMatrix();
fill(0);
rtg7 = createShape(RECT,300,450,200,50);
popMatrix();

if(mousePressed == true && mouseX>280 && mouseX<330 && mouseY>250 && mouseY<300){
  vm = 255;
  vd = 0;
  az = 0;
}else if(mousePressed == true && mouseX>380 && mouseX<430 && mouseY>250 && mouseY<300){
  vm = 0;
  vd = 255;
  az = 0;
}else if(mousePressed == true && mouseX>480 && mouseX<530 && mouseY>250 && mouseY<300){
  vm = 0;
  vd = 0;
  az = 255;
}
  image(B1,300,450);
  shape(rtg4, 0, 0);
  shape(rtg5, 0, 0);
  shape(rtg6, 0, 0);
  //shape(rtg7, 0, 0);

}




void Aquecimento() {

  
  
  
  PImage img = 
  img = loadImage("sala3d.png");
  background(img); // preenche o fundo com a imagem
  
  // Desenha a mira de FPS
  float x = mouseX;
  float y = mouseY;
  float size = 20;
  float offset = 10;
  pushMatrix(); // mira
  stroke(255,0,0);
  line(x - size, y, x - offset, y);
  line(x + size, y, x + offset, y);
  line(x, y - size, x, y - offset);
  line(x, y + size, x, y + offset);
  popMatrix();
  
  
  pushMatrix();
  // Desenha o alvo
  
  fill(255, 0, 0); // Cor vermelha
  float angle = 0;
  translate(targetX , targetY);
  noStroke();
  rotateY(angle);
  angle += 1;
  lights();
  fill(vm,vd,az); // cor da bolinha
  rotateY(radians(60));
  sphere(tam);
  popMatrix();
  
 
  
  // Verifica se o jogador acertou o alvo
  if (hit) {    
    // Gera uma nova posição aleatória para o alvo
    targetX = (int) random(targetSize, width - targetSize);
    targetY = (int) random(targetSize, height - targetSize);
    tam = (int) random(40,60);
    
    hit = false; // Reseta a variável de acerto
    score++; // Aumenta a pontuação
  }
  
   // Exibe a pontuação no canto inferior esquerdo da tela
  pushMatrix();
  translate(0,0);
  fill(0);
  textSize(20);
  textAlign(0,0);
  if(dif==1){
  text("voltar", 10, height - 588);
  }
  text("Pontuação: " + score, 10, height - 10);
  popMatrix();
}

void mousePressed() {
  float distance = dist(mouseX, mouseY, targetX, targetY);
  if (tela == 4){
   somTiro(); 
  }
  if (distance < targetSize / 2) {
    hit = true; // O jogador acertou o alvo
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    // Reinicia o jogo
    hit = false; // Reseta a variável de acerto
    score = 0; // Reseta a pontuação
  }
}
