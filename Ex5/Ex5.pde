//Audio:    http://www.televisiontunes.com/Pokemon_-_The_Rise_of_Darkrai_-_Oracion.html
//Image:    https://www.google.com/search?q=pokemon+the+rise+of++darkrai+2048&tbm=isch&ved=2ahUKEwiatN3gqoT0AhWwqXIEHYxMBCwQ2-cCegQIABAA&oq=pokemon+the+rise+of++darkrai+2048&gs_lcp=CgNpbWcQAzoHCCMQ7wMQJ1AAWN4FYNEGaABwAHgAgAFxiAGCA5IBAzMuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=CsWGYZqHDrDTytMPjJmR4AI&bih=852&biw=1745#imgrc=D9DjesDOC44m6M
import processing.sound.*; 
SoundFile file;

PImage Background;
  
  void setup() {
    size(1100,900); 
    Background=loadImage("Background.jpg");
    Background.resize(1100,900);
    file = new SoundFile(this, "Oracion.mp3");
  
    file.play();  
  //file.loop();   
  }
  void draw() {
    background(Background);
  }
