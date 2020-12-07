class ball{
//parametros
private float[] posicion= new float[2];
float cx= mouseX;
float cy= mouseY;
float vx;
float vy;
float corx=(32 * 5 + 1000/2-150)+16;
float cory=(32 * 1 + 700/2-320)-16;
int numball =5;
boolean vida=false;
    float vel=5;
//constructor
 ball(float x, float y) { 
    this.cambx((32 * x + 1000/2-150)+16);
    this.camby((32 * y + 700/2-320)-16);
    
   
  }
 //Metodos
  float getx() {
    return this.posicion[0];
  }
  float gety() {
    return this.posicion[1];
  }
   void setposx(float t) {
    this.posicion[0]+=t;
  }
  void setposy(float t) {
    this.posicion[1]+=t;
  }
  void camby(float t) {
    this.posicion[1]=t;
  }
  void cambx(float t) {
    this.posicion[0]=t;
  }
  float getvx() {
    return this.vx;
  }
  float getvy() {
    return this.vy;
  }
  void setvx(float t) {
    this.vx=t;
  }
  void setvy(float t) {
    this.vy=t;
  }
  void dirvx() {
    this.vx*=-1;
  }
  void dirvy() {
    this.vy*=-1;
  }
  
  int cambcoordx(){
  return round((getx()-16-width/2+150)/32);
  }
  int cambcoordy(){
  return round((gety()+16-height/2+320)/32);
  }
  
  void paint(){
   //print(round((gety()+16-height/2+320)/32), "  ");
   float a= random(255);
   float b= random(255);
   float c= random(255);
  fill (a,b,c,255);
   ellipse(getx(),gety(), 32, 32);
   
  }
  void paintln(){
  line ((32 * 5 + width/2-150)+16, (32 * 1 + height/2-320)-16,mouseX,mouseY);
  }
  
  
  
  void cbordes(){
  if(this.getx()-1<=(width/2-150)+16&&getvx()<0){
  this.dirvx();
  }
  else if(this.getx()+1>=(32 * 10+width/2-150)-16&&getvx()>0){
  this.dirvx();
  }
 if(this.gety()-1<=(height/2-320)+16&&getvy()<0){
  this.dirvy();
  }
  else if(this.gety()+1>=(32 * 19+height/2-320)-16&&getvy()>0){
  this.dirvy();
  }
  
  }
  void move(Mapa m){
  this.cbordes();
  this.setposx(this.vx);
  this.setposy(this.vy);
  this.colision(m);
 // this.camvel(mouseX,mouseY);
  }
 void colisionpad(figura pad){
   float ballsup = this.gety() - 20;
    float ballinf = this.gety() + 20;
 if( this.getx()+16 >= pad.cambcoordx(pad.getx()-1)
            && this.getx()-16 <= pad.cambcoordx(pad.getx()+1)+32
            && ballinf >= pad.cambcoordy(pad.gety())-32
            && ballsup <= pad.cambcoordy(pad.gety())+20
            && this.getvy() < 0){
            this.dirvy();
            
            }     
 
 
 } 
  void disparar(float x,float y){
     this.setviva();
  this.setcart(-1);
  
  this.camvel(x,y);
  
  }
  
  void restaurar(){
  this.cambx(this.corx);
  this.camby(this.cory);
  this.vx=0;
  this.vy=0;
  this.vel=5;
  
  
  }
  int cart(){
  return numball;
  }
void restark(){
    this.setmuerta();
    this.vx=0;
    this.vy=0;
    this.vel=5;
    this.cambx((32 * 5 + 1000/2-150)+16);
    this.camby((32 * 1 + 700/2-320)+48);
    this.rotas=0;
  }
  void rest(){
    this.setmuerta();
    this.vx=0;
    this.vy=0;
    this.vel=5;
    this.cambx((32 * 5 + 1000/2-150)+16);
    this.camby((32 * 1 + 700/2-320)-16);
    numball=5;
    corx=(32 * 5 + 1000/2-150)+16;
    cory=(32 * 1 + 700/2-320)-16;
  }
  void setcart(int t){
  numball+=t;
  
  }
  boolean getvida(){
  return this.vida;
  
  }
  void setviva(){
  this.vida=true;
  }
  void setmuerta(){
  this.vida=false;
  this.restaurar();
  }
  
  void camvel(float x, float y){
    float h=y-this.cory;
    float b=x-this.corx;

    
  this.setvx((b*vel/sqrt((h*h)+(b*b)) ));
  this.setvy((h*vel/sqrt((h*h)+(b*b)) ));
  
  }
    
    int rotas=0;
      void colision(Mapa m) {
     
            for(int i =0;i<10;i++){
               for (int j = 0; j<=18; j++) {
                 if (m.mapa[j][i]!=0){
        int limsup = m.cambcoordy(j);
        int liminf = m.cambcoordy(j)+32;
        int limder = m.cambcoordx(i)+32;
        int limizq = m.cambcoordx(i);

        float ballsup = this.gety() - 20;
        float ballinf = this.gety() + 20;
        float ballizq = this.getx() - 20;
        float ballder = this.getx() + 20;

        if( this.getx() >= limizq
            && this.getx() <= limder
            && ballinf >= limsup
            && ballsup <= liminf
            && this.getvy() < 0){
            this.dirvy();
            m.mapa[j][i]=0;
            rotas+=1;
            }           
        else if( this.getx() >= limizq
            && this.getx() <= limder
            && ballinf >= limsup
            && ballsup <= liminf
            && this.getvy() > 0){        
               this.dirvy();
               m.mapa[j][i]=0;
               rotas+=1;
            }
             
      else if( this.gety() >= limsup
            && this.gety() <= liminf
            && ballizq <= limder
            && ballder >= limizq
            && this.getvx() > 0){
              this.dirvx();
              m.mapa[j][i]=0;
              rotas+=1;
            }   
       else if( this.gety() >= limsup
            && this.gety() <= liminf
            && ballizq <= limder
            && ballder >= limizq
            && this.getvx() < 0){
            this.dirvx();
            m.mapa[j][i]=0;
            rotas+=1;
            }    
           
           
         }
                 
     }
   }
   
}
int rotasark(){
return rotas;
}
    int scoreark(){
return (rotas*50)/2;
}
}
