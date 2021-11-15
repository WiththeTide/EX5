//Audio:    http://www.televisiontunes.com/Pokemon_-_The_Rise_of_Darkrai_-_Oracion.html
//Image:    https://www.google.com/search?q=pokemon+the+rise+of++darkrai+2048&tbm=isch&ved=2ahUKEwiatN3gqoT0AhWwqXIEHYxMBCwQ2-cCegQIABAA&oq=pokemon+the+rise+of++darkrai+2048&gs_lcp=CgNpbWcQAzoHCCMQ7wMQJ1AAWN4FYNEGaABwAHgAgAFxiAGCA5IBAzMuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=CsWGYZqHDrDTytMPjJmR4AI&bih=852&biw=1745#imgrc=D9DjesDOC44m6M
import processing.sound.*; 
SoundFile file;

PImage Background;

int count;

float size=random(80,100);
float mini=50;
float maxx=150;
float speed=2;

float c=0;

float locationx=500;
float locationy=500;

  void setup() {
    size(1100,900,P2D); 
    Background=loadImage("Background.jpg");
    Background.resize(1100,900);
    file = new SoundFile(this, "Oracion.mp3");
  
    file.play();  
  }
  
 
  
  void draw() {
    fill(c);
    background(Background);
    
      if(size < mini || size > maxx){
       speed *=-1; 
       }
     
   size+=speed;
   ellipse(locationx,locationy,size,size);
      
    println(count);
  }
   void mouseClicked(){
   if((mouseX< locationx+size)&& (mouseX>locationx-size)&& (mouseY>locationy-size)&& (mouseY<locationy+size)){
    locationx=random(width);
    locationy=random(height);
    count=count+1;
   }
  }
