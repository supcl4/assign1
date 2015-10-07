
PImage Imgx;
PImage Imgy;
PImage Imgz;
PImage Imgu;
PImage Imga;
PImage Imgb;

int w,e,d,g,f;
int c=0; // the x location of enemy
int q=0; // the x location of bg1
int p=-640; // the x location of bg2

void setup () {
  size(640,480) ; 
  
  Imgx = loadImage("img/fighter.png");
  Imgy = loadImage("img/hp.png");
  Imgz = loadImage("img/treasure.png");
  Imgu = loadImage("img/enemy.png");
  Imga = loadImage("img/bg1.png");
  Imgb = loadImage("img/bg2.png");
  
  w=int(random(15,212)); //hp
  g=int(random(212)); //the x location of treasure
  f=int(random(460)); //the y location of treasure
  d=int(random(460)); //the y location of enemy
}

void draw() {
 
  //backgroung
 image(Imga, q, 0);
 image(Imgb, p, 0);
 q++;p++;
 if(q>640){q=-640;q++;}
 if(p>640){p=-640;p++;}
 
 //location
 image(Imgx, 580,240); //fighter
 image(Imgz, g, f); //treasure
 image(Imgu,c,d); // enemy
 if(c>640){c=0;c=c+3;}
 c=c+3; //spead
 
 //hp
 fill(#FF0000); //red
 rect(16,10,w,20); //hp
 image(Imgy, 10,10); //hp box
 
}
