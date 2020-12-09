Mapa mapa;// map obj
figura fact=new o(4, 1);//Se crea objetos
figura fsig=new l(4, 1);
figura finv=new o(4, 1);
figura pad=new i(4,1);
ball [] cart;
ball ball= new ball(5, 1); 
juego juego;
menu menu=new menu();

void setup() {
  size(1000, 700);
  
  background(255);
  //se crea la clase juego que se encargara de realizar las relacciones entre las samas clases
  juego=new juego();
  //crea el mapa y las piezas
  juego.init();

}

void draw() {
  menu.run();
  
}

//entradas de teclado
void keyTyped() {
  //rotar
  if ((key == 'q' || key == 'Q') && fact.limrota(mapa )==true&& fact.limladoi(mapa)&& fact.limladod(mapa) ) {
    fact.rotar();
    finv.rotar();
  }

  //juego nuevo
  if ((key == 's' || key == 'S') ) {
    if(menu.numj==1){
    juego.nuevo();
    juego.restpunt();
    }  
}
   if ((key == 'j' || key == 'J') ) {
    menu.setnum(0);
    
  } if ((key == 'ñ' || key == 'Ñ') ) {
    menu.setnum(1);
      juego.nuevo();
    juego.restpunt();}
    if ((key == 'k' || key == 'K') ) {
    menu.setnum(3);
      juego.nuevoark();
    juego.restpunt();
  }
   if ((key == 'l' || key == 'L') ) {
   menu.setnum(2);
   ball.restark();
   
   juego.nuevoark();
    juego.restpunt();
    menu.arkinit();
  }
  if ((key == 'a' || key == 'A')&& pad.posicion[0] +pad.limites()[1]>0) {
   pad.setposx(-1);
    
  } if ((key == 'd' || key == 'D')&&pad.posicion[0] + 1 +pad.limites()[2]<mapa.getmapa()[0].length ) {
  pad.setposx(1);
  }
  
  
}

void keyPressed() {
  //moover izquierda
  if (keyCode == LEFT && fact.posicion[0] +fact.limites()[1]>0 && fact.limladoi(mapa) &&juego.perder==false ) {
    fact.setposx(-1);
    finv.setposx(-1);
  }
  //moover derecha
  if (keyCode == RIGHT && fact.posicion[0] + 1 +fact.limites()[2]<mapa.getmapa()[0].length&&fact.limladod(mapa) &&juego.perder==false) {
    fact.setposx(+1);
    finv.setposx(+1);
  } 
  //bajar total
  if ((keyCode ==  ENTER) ) {
    juego.setarkniv(1);
    fact.camby(finv.gety());
    if (juego.perder){
   }
   else{
   juego.cambio_puntaje(50);}
    
  }
  //bajar
  if (keyCode == DOWN) {
    juego.gravact();
    fact.cambio_grav(3);
    juego.cambio_puntaje(10);
  }
}
//volvercaida
void keyReleased() {
  if ((keyCode == DOWN) ) {
    juego.gravdes();
    fact.cambio_grav(60);
  }
}

void mouseClicked() {
  if(ball.cart()>=1 && ball.getvida()==false ){
     ball.disparar(mouseX,mouseY);
}
}
