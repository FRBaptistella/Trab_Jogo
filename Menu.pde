

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int tela =0 ;
float angle = 0;
float angle2 = 0;
void setup() {
  size(800, 600,P3D);
  musica();
  targetX = width / 2; // Posição inicial do alvo no centro horizontal
  targetY = height / 2; // Posição inicial do alvo no centro vertical
  PImage B1 = loadImage("JOGAR.png");
}

void draw() {
PFont ArialBlack = createFont("Arial-Black", 36);
textFont(ArialBlack);
  
  if (tela == 0) {
  PImage logo = loadImage("logo.png");
  PImage B1 = loadImage("JOGAR.png");
  PImage B2 = loadImage("CREDITOS.png");
  PImage B3 = loadImage("COMO JOGAR.PNG");
  PImage B4 = loadImage("VOLTAR.PNG");
  PImage fundo = loadImage("vaporwave-retro-art.jpg");
  PImage aim = loadImage("aim.png");
 // PImage Sponge = loadImage("spongepls-pls.gif");

  PShape rtg, rtg1, rtg2;
  background(fundo);
  pushMatrix();
  translate(width/2, height/2);
  scale(0.5);
  image(logo, -350, -500);
  popMatrix();


  translate(width/2, height/2);
  rtg = createShape(RECT, -100, -100, 200, -50);
  rtg.setTexture(B1);

  rtg1 = createShape(RECT, -100, -40, 200, -50);
  rtg1.setTexture(B1);

  rtg2 = createShape(RECT, -100, 20, 200, -50);
  rtg2.setTexture(B1);


  image(B1,-100, -150);
  image(B2,-100,-90);
  image(B3,-100,-30);
if(tela == 0 && mouseX>300 && mouseY >149 && mouseY<198 && mouseX<500){
  pushMatrix();
  translate(-140,-125);
  fill(255,0,0);
  //noStroke();
  lights();
  rotateY(angle2);
  angle2 += 1;
  sphere(25);
  popMatrix();
}
if(tela == 0 && mouseX>300 && mouseY >209 && mouseY<258 && mouseX<500){
   pushMatrix();
  translate(-140,-65);
  fill(255,0,0);
  //noStroke();
  lights();
  rotateY(angle2);
  angle2 += 1;
  sphere(25);
  popMatrix();
}

if(tela == 0 && mouseX>300 && mouseY >272 && mouseY<321 && mouseX<500){
     pushMatrix();
  translate(-140,-5);
  fill(255,0,0);
  //noStroke();
  lights();
  rotateY(angle2);
  angle2 += 1;
  sphere(25);
  popMatrix();
}
  
  pushMatrix();
  translate(370,270);
  rotateZ(angle);
  angle += 0.20;
  image(aim, -25,-25);
  popMatrix();
  
  
  }
  else if (tela == 1) {
    editar();
    voltar();
  }else if (tela == 2){
    Creditos();
    voltar();
  }else if(tela ==3){
    Hist();
    voltar();
  } else if (tela ==4){
    Aquecimento();
  } else if(tela ==5){
    dificuldade();
    voltar();
    score = 0;
  }else if(tela ==6){
    pontuacao();
    voltar(); 
  }
  
  if(dif == 2 && mousePressed == true && tela ==5 && mouseX>300 && mouseX<500 && mouseY>450 && mouseY<500){
  tempo5m(); //Roda o timer de 1 minuto
  score = 0;
  }else if(dif == 3 && mousePressed == true && tela ==5 && mouseX>300 && mouseX<500 && mouseY>450 && mouseY<500){
  tempo3m(); //Roda o timer de 30 segundos
  score = 0;
}
  
} 
