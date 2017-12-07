float x;
float x1;
float y1;
PImage img;
float y;
int screen;
boolean changescreen;
boolean limit;
boolean limit1;
boolean move;
boolean charectorMove;
//StopWatchTimer = sw;
Bad_Guy red;
Player goku; 
Set buildings;
void settings() {
  size(1920, 1080);
  //fullScreen();
}



void setup() {
  img = loadImage("computer science.jpg");

  x1= 1187;
  y1=272;
  x=56;
  y=258;
  screen=1;  
  changescreen=false;
  goku = new Player();
  buildings= new Set();   
  red = new Bad_Guy();
  move = true;
  charectorMove = true;
  //sw = new StopWatchTimer();
}




void draw() {
  if (screen==1) {

    text("TITLE SCREEN", width/2, height/2);
  }
  println(mouseX, mouseY);
  if (screen==2) {
    //sw.running=true;
    background (255);
    textSize(30);
    fill(0);
    image(img, 0, 0, width, height);
  }

  if (screen==3) {
    fill(255);
    changescreen=false;

    background(169, 204, 227);
    red.display();
    buildings.display();
    goku.display();

     if (move == true){
      x1+=1; 
       
     }

      if(x1 >= 1200){
      limit1 = false;
      limit = true;
      
  }


      if ( limit == true){
        
       x1 -= 1;
       move = false;
        
      }

      if( x1 <= 1100){
         limit1 = true;   
     
      }


      if (limit1 == true){
       move = true; 
       limit = false;
        
      }



 if (x+15==x1){
          move=false;
          limit=false;
          limit1=false;
          fill(255,0,0);
           charectorMove = false;
         rect(width/2,height/2,450,450);
         fill(0);
         text("gg",width/2,height/2);
          
        }

        if (x==x1 & y==y1){
          move=false;
          limit=false;
          limit1=false;
          charectorMove = false;
          fill(255,0,0);
         rect(width/2,height/2,450,450);
         fill(0);
         text("gg",width/2,height/2);
          
        }
      
    println(mouseX, mouseY);
  }
}
void mousePressed() {
  changescreen=true;
  if (changescreen==true) {
    screen+=1;

    if (screen>3) {
      changescreen=false;
    }
  }
}
void keyPressed() {
if (charectorMove ==true){

  if (keyCode==LEFT) {
    x=x-5;
  }
  if (keyCode==RIGHT) {

    x=x+5;
  }
  if (keyCode==RIGHT) {
    x=x+5;
  }

  if (keyCode==UP) {
    y=y-2; 
    if (y==y-3) {
      y=y+3;
    }
  }

  if (keyCode==DOWN) {
    y=y+0.5;
  }
}
}