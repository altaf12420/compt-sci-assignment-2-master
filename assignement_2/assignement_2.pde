float x;
PImage img;
float y;
int screen;
boolean changescreen;
//StopWatchTimer = sw;
Player goku; 
Set buildings;
void settings(){
size(1920,1080);
//fullScreen();
  
  
  
  
  
}



void setup(){
img = loadImage("computer science.jpg");
x=56;
y=258;
screen=1;  
changescreen=false;
goku = new Player();
buildings= new Set();    
//sw = new StopWatchTimer();
  
}




void draw(){
if (screen==1){
  
 text("TITLE SCREEN", width/2,height/2); 
  
  
}
  println(mouseX,mouseY);
if (screen==2){
  //sw.running=true;
  background (255);
textSize(30);
fill(0);
image(img,0,0,width,height);

  
  
}

  if (screen==3){
    fill(255);
    changescreen=false;
  background(169,204,227);
   buildings.display();
   goku.display();
println(mouseX,mouseY); 
  
  
  }
  
}
void mousePressed(){
 changescreen=true;
 if (changescreen==true){
 screen+=1;

 if(screen>3){
  changescreen=false;
   
   
 }
 }
}
void keyPressed(){
  
  
  if(keyCode==LEFT){
   x=x-5; 
    
    
  }
  if(keyCode==RIGHT){
    
    x=x+150;
  }
  if(keyCode==RIGHT){
  x=x+5150;  
  

    
  }
  
  if(keyCode==UP){
   y=y-2; 
   if(y==y-3){
   y=y+3;  
     
     
   }
    
  }
  
  if(keyCode==DOWN){
  y=y+0.5;
    
    
  }
}