//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false;
Boolean nightMode=false; //bonus1: populate with system clock
//more bonus, gr 11: use API-sunrise for system clock start, API-sunset for system clock stop
color resetDefaultInk=#FFFFFF, white=#FFFFFF, pink=#F50CA8;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
 */
//
void setup() {
  size(1500, 1000);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display(); //Purpose: CANVAS fits in monitor & dimension size is known
  //smaller & larger dimension from Display Algorithm
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  population(); //Values based on DISPLAY
  textSetup();
  imageSetup();
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true && splashScreenStart==false ) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
  //
 
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==true && key==' ' ) {
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  //Key Bord Short Cuts
  if (key== CODED || key==ESC) exit();
  if (key=='Q' || key=='q') exit();
  if (key=='N' || key=='n') {
    if (nightMode==false) {
      nightMode = true;
      backgroundImage();
      //must redraw all recatngles too
  } else {
    nightMode = false;
    backgroundImage();
  }
  }
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
}//End mousePressed
//
//End MAIN Program
