float locy,locx;
int sz;
float velx,vely;
float gravity;
float accx;

void setup(){
  size(800,600);
  locx=width/2;
  locy=sz;
  sz=50;
  velx=5;
  vely=0;
  gravity=1;
  accx=0 ;
}

void draw(){
  background(0);
  
  velx+=accx;
  vely+=gravity;
    
  locy+=vely;
  locx+=velx;
  
  ellipse(locx,locy,sz,sz);
  
  if(locy+sz/2>height){
    locy=height-sz/2;
    vely *= -.9;
  }
  if(locx + sz/2 >width){
   velx=abs(velx) *-.9;
  }
  if(locx - sz/2<0){
   velx=abs(velx) *.9;
  }
}
