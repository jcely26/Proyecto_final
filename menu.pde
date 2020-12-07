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
    text("TETRINOID ", 150, 200);
    textSize(60);
    text("El clasico Arkanoid",50,350);
    text("Nueva modalidad Tetris",50,550);
for (int i=0; i<=80; i+= 40) {
    rect(700+i,500,40,40);
    rect(740,540,40,40);}
  
  for (int i=0; i<=80; i+= 20) {
    rect(660+i,290+i,20,20);
    rect(700+i,290+i,20,20);
    rect(740+i,290+i,20,20);
  }
  textSize(35);
  fill(255);
  text("Para jugar preciona la tecla L",50,400);
  text("Para jugar preciona la tecla K",50,600);
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
    
    juego.tetrinoidpaint();
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
