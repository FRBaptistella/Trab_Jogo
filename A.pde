  
  


void A() {
  Aquecimento();
  
}
void Creditos() { //Aba de Creditos
  PImage fundo2 = loadImage("terrain-vaporwave-moon-mountains-art.jpg");
  pushMatrix();
  translate(width/2, height/2);
  
  background(fundo2);
  fill(0);
  
  textAlign(CENTER);
  textSize(36);
  text("CREDITOS:", 0, -50);
  text("- Amanda Jorge de Souza RA: 002202003080", 0, 0);
  text("- Felipe Rela Baptistella RA: 002202003049", 0, 50);
  text("- Guilherme Malicki Barbosa RA: 002202001209", 0, 100);
  popMatrix();
}

void Hist() { //Como Jogar
  PImage fundo3 = loadImage("solzin.jpg");
  pushMatrix();
  translate(width/2, height/2);
  //PFont comic = createFont("ComicSansMS-128.vlw", 36);
  background(fundo3);
  fill(0);
  //textFont(comic);
  textAlign(LEFT);
  textSize(36);
  text("Como Jogar:", -250, -200);
  text("Existem 3 modos de jogo:\n Aquecimento: onde não possui tempo.\n"+
  "Normal: onde voce tera 1 min para fazer \no maximo de pontos.\n"+
  "Dificil: onde voce tera apenas 30 seg.\n Boa sorte e se Divirta :D ", -250, -150);
  popMatrix();
}

void mouseClicked(){ 
  println("oi");
if(tela == 0 && mouseX>300 && mouseY >149 && mouseY<198 && mouseX<500){
  tela = 1;
}else if(tela == 0 && mouseX>300 && mouseY >209 && mouseY<258 && mouseX<500){
tela = 2;
}else if(tela == 0 && mouseX>300 && mouseY >272 && mouseY<321 && mouseX<500){
tela = 3;
}else if(tela != 0 && tela != 6 && tela != 4 && mouseX>0 && mouseX<100 && mouseY>0 && mouseY<25 ){
    tela = 0;
}else if(tela ==1 && mouseX>300 && mouseX<500 && mouseY>450 && mouseY<500){
  tela = 5;
}else if(tela ==5 && mouseX>300 && mouseX<500 && mouseY>450 && mouseY<500){
  tela=4;
}else if (tela == 6 || tela==4 && mouseX>0 && mouseX<100 && mouseY>0 && mouseY<25 ){
  tela = 1;
  }

}

void mouse() {
  textSize(12);
  fill(0);

  text(mouseX + " , " + mouseY, mouseX, mouseY);
}

void musica(){
Minim minim;
AudioPlayer fundo;
minim = new Minim(this);
fundo = minim.loadFile("10 Happening - Smells Like Teen Spirit.mp3");
fundo.play();
}


void voltar(){
  PImage B4 = loadImage("Voltar2.png");
   PShape rtg3;
  rtg3 = createShape(RECT,0,0,100,25);
  rtg3.setTexture(B4);
  if(tela != 0){
    image(B4,0,0);
    //shape(rtg3, 0, 0);
  }
}
void somTiro(){
Minim minim;
  AudioPlayer player;  
  minim = new Minim(this);
  player = minim.loadFile("tiro.mp3");
  player.play();
}
