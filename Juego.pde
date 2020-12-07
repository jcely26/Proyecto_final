class juego {
  //atributos
  int puntaje=0;
  boolean perder=false;
  int puntajeln=0;
  int niveles=1;
  boolean estgrav=false;
int arknv=1;
  //metodos

  //crear mapa y figuras
  void init() {
    mapa =new Mapa(10, 20,10); 
    mapa.paint();
    this.piezanueva(this.rand());
    fsig.camby(5);
    fsig.cambx(15);
    this.crearinv();
        finv.setrelleno(color(100, 100, 100, 150));
  }



  //creamos la presentacion donde se mostrara puntajes y demas

  void presentacion() {
  menu.fondo();
    
    stroke(255);
    fill(0);
    rect(width/2+250, height/2-300, 200, 250);
    rect(width/2-450, height/2-300, 200, 600);
    rect(width/2+250, height/2, 200, 300);

    strokeWeight(1);
    textSize(30);
    fill(0, 170, 255);
    text(niveles, 840, 430);
    text(puntajeln, 800, 520);
    text(puntaje, 840, 610);
    text("S ", 135, 180);
    text("Q ", 135, 260);
    text("ENTER ", 105, 580);
    text("↓ ", 135, 340);
    noStroke();
    rect(130,400,15,10);
    triangle(145, 415, 145, 395, 160, 405);
    rect(135,480,15,10);
    triangle(135, 495, 135, 475, 120, 485);
    fill(10,50,200);
    text("CONTROLES ", 80, 100);
    text("PIEZA", 810, 100);
    text("SIGUIENTE", 780, 140);
    fill(255);
    textSize(25);
    text("NIVEL", 820, 390);
    text("LÍNEAS   BOLAS", 770, 480);
    text("SCORE", 810, 570);
  
    textSize(20);
    text("JUEGO NUEVO ", 90, 140);
    text("ROTAR ", 115, 220);
    text("SOLTAR ", 110, 540);
    text("DERECHA ", 110, 380);
    text("IZQUIERDA ", 100, 460);
    text("BAJAR LENTO ", 90, 300);
  }
 void presentacion2_0() {
  menu.fondo();
  fill(0);
  rect(width/2+250, height/2-150, 200, 300);
  fill(0, 170, 255);
  textSize(35);
  text(mapa.nivelesark(), 840, 290);
  text(ball.rotasark(), 840, 380);
  text(ball.scoreark(), 840, 470);
  fill(255);
    textSize(35);
    text("NIVEL", 810, 250);
    text("ROTAS", 810, 340);
    text("SCORE", 810, 430);
    
    textSize(65);
    text("ARKANOID", 30, 150);
    fill(10,25,100);
    stroke(255);
    for (int i=0; i<=160; i+= 40) {
    rect(10,250+i,40,40);

    rect(50,290+i,40,40);
    
    rect(90,330+i,40,40);
    
    //rect(130,370+i,40,40);
    rect(170,410+i,40,40);
    rect(210,450+i,40,40);
    rect(250,490+i,40,40);}
    fill(0, 170, 255);
    for (int l=0; l<=80; l+= 40){
    rect(190+l,200,40,40);}
    
    
    int x = 250;
    int y = 260;
    noStroke();
    for (int i = 250; i >=0; i -=41) {
      fill(0, i);
      ellipse(x, y, 30, 30);
      x -= 20;
      y+=32;
    }
 }
  //retornamos un numero random  
  int rand() {
    int g=0;
    while (g==0) {    
      g =int(random(8));
    }
    return g;
  }

  //cambiamos la figura actual por la siguiente y creamos una figura sig nueva aleatorea
  void piezanueva(int g) {
    fact=fsig;
    switch (g) {
    case 1:
      fsig=new z(4, 1);
      break;
    case 2:
      fsig=new s(4, 1);
      break;
    case 3:
      fsig=new i(4, 1);
      break;
    case 4:
      fsig=new j(4, 1);
      break;
    case 5:
      fsig=new l(4, 1);
      break;
    case 6:
      fsig=new o(4, 1);
      break;
    case 7:
      fsig=new t(4, 1);
      break;
    }
  }

  //creamos la invisible igual a alguna otra
  void piezanueva2(int g) {
    switch (g) {
    case 1:
      finv=new z(4, 1);
      break;
    case 2:
      finv=new s(4, 1);
      break;
    case 3:
      finv=new i(4, 1);
      break;
    case 4:
      finv=new j(4, 1);
      break;
    case 5:
      finv=new l(4, 1);
      break;
    case 6:
      finv=new o(4, 1);
      break;
    case 7:
      finv=new t(4, 1);
      break;
    }
  }

  //creamos la figura invisible, igual a la actual 
  void crearinv() {
    piezanueva2(fact.getname());
  }
void arkniv(Mapa m){
  
  for (int i = 0; i<10; i++) {
    for (int j = 0; j<19; j++) {
switch(arknv) {
  case 1: 
  m.mapa[j][i]=niv1[j][i];
    break;
  case 2: 
  m.mapa[j][i]=niv2[j][i];
    break;
      case 3: 
   m.mapa[j][i]=niv3[j][i];
    break;
    case 4: 
   m.mapa[j][i]=niv4[j][i];
    break;
    case 5: 
    m.mapa[j][i]=niv5[j][i];
    break;
}

    }}
}

  //nuevo
  void nuevo() {
    this.niveles=1;
    this.perder=false;
    this.presentacion();
    fact.rest();
    finv.rest();
    ball.rest();
   
    mapa =new Mapa(10, 20,10);
  }
void nuevoark(){
  this.arknv=1;
ball.rest();
   pad.auxiliar[2][0]=0;
    mapa =new Mapa(10, 20,1);}
  //copimaos las coordenadas en y de la actual en la invisible
  void restyinv() {
    finv.camby(fact.gety());
  }

void setarkniv(int t){
this.arknv+=t;
}
  //todo
  void run() {
    this.niveles();
    this.restyinv();
    finv.camby(finv.inv(mapa));
    this.deadficha(fact, mapa);
    //fsig.posx();
    fact.move();
    this.paint();
    mapa.actualizar_mapa();
  }
  
  void tetrinoidrun(){
    this.run();
    this.tetrinoidpaint();
      ball.move(mapa);
      mapa.actualizar_mapatetranoid();
    }
  void arkrun(){
  ball.move(mapa);
  ball.colisionpad(pad);
  this.arkpaint();
  
  }

  //perder pantalla
  void perder() {

    this.perder=true;
    fill(0);
    rect(0, 0, 1000, 700);
    fill(255, 0, 0);
    textSize (100);
    text("GAME OVER", 200, 250);
    textSize (50);
    text("Perdiste, sigue intentando", 180, 350);
    text("Vuelve a jugar con s", 230, 450);
    text("Puntaje : ", 290, 600);
    text( this.getpuntaje(), 550, 600);
  }
void arkperder() {

    this.perder=true;
    fill(0);
    rect(0, 0, 1000, 700);
    fill(255, 0, 0);
    textSize (100);
    text("GAME OVER", 200, 250);
    textSize (50);
    text("Perdiste, sigue intentando", 180, 350);
    text("Vuelve a jugar con L", 230, 450);
    text("Puntaje : ", 290, 600);
    text( ball.scoreark(), 550, 600);
  }
  //actualizar puntaje
  void cambio_puntaje(int p) {
    this.puntaje+=p;
  }
  void cambio_puntajeln(int p) {
    this.puntajeln+=p;
  }
  int getpuntaje() {
    return puntaje;
  }
  //restablecemos los puntajes
  void restpunt() {
    this.puntaje=0;
    this.puntajeln=0;
  }

  //pintar todo
  void paint() {
    this.presentacion();
    
    mapa.paint();
    fact.paint();
    finv.paint();
    fsig.paint();
    
  }
   void tetrinoidpaint() {
     this.paint();
     textSize(30);
    fill(0, 170, 255);
     text(puntajeln+"        "+ball.cart(), 800, 520);
  ball.paint();
    ball.paintln();}
  
  //
  void arkpaint(){
  this.presentacion2_0();
   mapa.paint();
   ball.paint();
   pad.paint();
  
  }

  //cunado la ficha llega al tope
  void deadficha(figura f, Mapa m) {
    if (f.quieto(m)==true) {
      m.guardar( f);
      piezanueva(this.rand());
      fsig.camby(5);
      fsig.cambx(15);
      crearinv();
      finv.setrelleno(color(100, 100, 100, 150));
      fact.rest();
      finv.rest();
      ball.setmuerta();
    }
  }
  void niveles() {
    if (this.estgrav) {
    } else {  
      fact.cambio_grav(60/niveles);
    }
  }
  void estniveles() {
    if (this.puntajeln%10==0) {
      niveles+=1;
    }
  }
  void gravact() {
    estgrav=true;
  }

  void  gravdes() {
    estgrav=false;
  }
}  
int[][] niv1 =  {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {0, 1, 1, 0, 6, 6, 0, 4, 4, 0},
                  {0, 1, 1, 0, 6, 6, 0, 4, 4, 0}, 
                  {0, 1, 1, 0, 6, 6, 0, 4, 4, 0}, 
                  {0, 1, 1, 0, 6, 6, 0, 4, 4, 0},  
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}};
 int[][] niv2 =  {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},  
                  {0, 1, 1, 1, 0, 0, 1, 1, 1, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 2, 2, 2, 0, 0, 2, 2, 2, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 6, 6, 6, 7, 7, 6, 6, 6, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 4, 4, 4, 0, 0, 4, 4, 4, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {0, 5, 5, 5, 0, 0, 5, 5, 5, 0},
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 7, 7, 7, 7, 7, 7, 7, 7, 0}, 
                  {0, 7, 7, 7, 7, 7, 7, 7, 7, 0}, 
                  {0, 7, 7, 7, 7, 7, 7, 7, 7, 0},
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}};
                
 int[][] niv3 =  {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {2, 0, 0, 0, 3, 3, 0, 0, 0, 2}, 
                  {0, 0, 5, 0, 0, 0, 0, 7, 0, 0}, 
                  {0, 5, 0, 5, 0, 0, 7, 0, 7, 0}, 
                  {0, 0, 5, 0, 6, 6, 0, 7, 0, 0}, 
                  {3, 0, 0, 6, 0, 0, 6, 0, 0, 3}, 
                  {3, 0, 0, 6, 0, 0, 6, 0, 0, 3}, 
                  {0, 0, 1, 0, 6, 6, 0, 4, 0, 0}, 
                  {0, 1, 0, 1, 0, 0, 4, 0, 4, 0}, 
                  {0, 0, 1, 0, 0, 0, 0, 4, 0, 0}, 
                  {2, 0, 0, 0, 3, 3, 0, 0, 0, 2}, 
                  {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}};
  int[][] niv4 =  {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 1, 2, 3, 4, 4, 3, 2, 1, 0}, 
                  {0, 2, 3, 4, 0, 0, 4, 3, 2, 0}, 
                  {0, 3, 4, 0, 0, 0, 0, 4, 3, 0}, 
                  {0, 4, 0, 0, 7, 7, 0, 0, 4, 0},    
                  {0, 4, 0, 0, 7, 7, 0, 0, 4, 0}, 
                  {0, 3, 4, 0, 0, 0, 0, 4, 3, 0},  
                  {0, 2, 3, 4, 0, 0, 4, 3, 2, 0}, 
                  {0, 1, 2, 3, 4, 4, 3, 2, 1, 0}, 
                  {0, 0, 1, 2, 3, 3, 2, 1, 0, 0}, 
                  {0, 5, 0, 1, 2, 2, 1, 0, 5, 0},
                  {0, 0, 0, 0, 5, 5, 0, 0, 0, 0},
                  {5, 0, 5, 0, 0, 0, 0, 5, 0, 5},
                  {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}};
   int[][] niv5 =  {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {5, 5, 0, 0, 0, 0, 0, 0, 5, 5}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},  
                  {0, 1, 1, 1, 0, 0, 1, 1, 1, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 2, 2, 2, 0, 0, 2, 2, 2, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 6, 6, 6, 0, 0, 6, 6, 6, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                  {0, 4, 4, 4, 0, 0, 4, 4, 4, 0}, 
                  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                  {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                  {1, 5, 0, 7, 0, 0, 7, 0, 5, 1}, 
                  {0, 5, 3, 0, 6, 6, 0, 3, 5, 0}, 
                  {0, 0, 3, 0, 6, 6, 0, 3, 0, 0},  
                  {0, 0, 0, 7, 0, 0, 7, 0, 0, 0},
                  {2, 2, 0, 0, 4, 4, 0, 0, 2, 2},
                  {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}};
