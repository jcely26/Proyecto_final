class menu {
  menu() {
  }
  int numj=0;
  boolean estado =false;
  void  run() {
    switch(numj) {
    case 0: 
      presentacion();
      break;
    case 1: 
      tetris();
      break;
    case 2: 
      ark();
      break;
     case 3: 
     
      tetrinoid();
      break;
    }
  }
  void setnum(int t) {
    this.numj=t;
    if (t==0) {
      estado=false;
    } else {
      this.estado=true;
    }
  }
  void fondo(){
    background(136, 203, 255);
    int x = 0;
    noStroke();
    for (int i = 0; i <= 255; i += 7) {
      fill(2, 60, 104, i);
      rect(x, 0, 60, height);
      x += 30;
    }
  }

  void presentacion() {
    
    this.fondo();
    PFont font; // Declarar la variable
    font = loadFont("GillSans-UltraBoldCondensed-150.vlw"); // Leer la fuente
    textFont(font);
    fill(10,25,100);
    stroke(255);
    text("TETRINOID ", 150, 150);
    textSize(60);
    text("El clasico Arkanoid",50,250);
    text("El clasico Tetris",50,400);
    text("Tetrinoid  ",50,550);
    /*text("TETRINOID ", 150, 200);
    textSize(60);
    text("El clasico Arkanoid",50,350);
    text("Nueva modalidad Tetris",50,550*/
    for (int i=0; i<=80; i+= 40) {
    rect(700+i,360,40,40);
    rect(740,400,40,40);}
  
  for (int i=0; i<=80; i+= 20) {
    rect(660+i,190+i,20,20);
    rect(700+i,190+i,20,20);
    rect(740+i,190+i,20,20);
  }
  for (int i=0; i<=60; i+= 30) {
    rect(670,540+i,30,30);
    rect(700,540,30,30);
  rect(820,520,15,60);}
     int x = 810;
    int y = 540;
    noStroke();
  for (int i = 250; i >=0; i -=41) {
      fill(0, i);
      ellipse(x, y, 20, 20);
      x -= 20;
      y+=15;
    }
/*for (int i=0; i<=80; i+= 40) {
    rect(700+i,500,40,40);
    rect(740,540,40,40);}
  
  for (int i=0; i<=80; i+= 20) {
    rect(660+i,290+i,20,20);
    rect(700+i,290+i,20,20);
    rect(740+i,290+i,20,20);
  }*/
  textSize(35);
  fill(255);
  text("Para jugar preciona la tecla L",50,300);
  text("Para jugar preciona la tecla Ñ",50,450);
  text("Para jugar preciona la tecla K",50,600);
  /*text("Para jugar preciona la tecla L",50,400);
  text("Para jugar preciona la tecla K",50,600);*/
  }
  void tetris() {
    juego.paint();
    //condicion para seguir jugando
    if ((fact.quieto( mapa )==true && fact.gety()<=1 )) {
      juego.perder();
    } else {
      juego.run();
    }
  }
  
  void tetrinoid(){
    
    juego.tetranoidpaint();
    if ((fact.quieto( mapa )==true && fact.gety()<=1 )) {
      juego.perder();
    } else {
      
      juego.tetrinoidrun();
    }


  }

  void ark() {
    
    juego.arkpaint();
    if (ball.gety()>=(32 + 700/2-320)+16) {

      juego.arkrun();

      if (mapa.vacio()) {
        if (juego.arknv<=3) {
          juego.setarkniv(1);
          juego.arkniv(mapa);
        } else {
          //juego.arkganar();
        }
      }
    } else {
      juego.arkperder();
    }
  }


  void arkinit() {
    pad.auxiliar[2][0]=0;
    ball.setposy(2*32);
    ball.vel=8;
    juego.arkniv(mapa);
  }
}
