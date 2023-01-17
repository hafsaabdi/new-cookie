import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false;
Boolean nightMode=false; //bonus1: populate with system clock
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer song2; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//more bonus, gr 11: use API-sunrise for system clock start, API-sunset for system clock stop
color resetDefaultInk=#FFFFFF, white=#FFFFFF, purple=#FF00FF;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
 */
//
void setup() {
  size(1500, 1500);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display(); //Purpose: CANVAS fits in monitor & dimension size is known
  //smaller & larger dimension from Display Algorithm
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../Best Music/MusicDownloads/&team - YouTube.html"); //able to pass absolute path, file name & extension, and URL
  song1 = minim.loadFile("../Best Music/MusicDownloads/enhypen.html"); //able to pass absolute path, file name & extension, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  population(); //Values based on DISPLAY
  textSetup();
  imageSetup();
  quitButtonSetup(); //Contains Separate Population
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true && splashScreenStart==false ) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
  //
   quitButtonDraw();
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)
  {
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
  }//End line draw
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==true && key==' ' ) {
    splashScreenStart = true;
  }//End Splash Screen SPACE Bar
  //
  //Key Bord Short Cuts
  if (key== CODED || key==ESC) exit();
  if (key=='Q' || key=='q') exit();
  if (key=='N' || key=='n') {
    if (nightMode==false) {
      nightMode = true;
      //Reminder: must redraw all of rectangles too, and Home Screen
  } else {
    nightMode = false;
     //Reminder: must redraw all of rectangles too, and Home Screen
  }
  }
    //Key Board Short Cuts
  //First Play Button
  //if (key=='P'|| key=='p') song1.play(); //Parameter is Parameter is number of repeats

  //Second Play Button, Loop ONCE
  if (key=='L'|| key=='l') song1.loop(1); //Parameter is Parameter is number of repeats}
  //Infinite Loop
  if (key=='F'|| key=='f') song1.loop(); //Parameter is Parameter is number of repeats}
  //M
  if (key=='M'|| key=='m') {//MUTE Button
    //Note: Mute has built-in pause button and built-in rewind if the song is near the end of the file
    if ( song1.isMuted() ) {song1.unmute();} else {song1.mute();}
  } //End MUTE Button
  //
  //Fast Forward & Fast Reverse
  //Built in Question .isPlaying(), not necessary
  if ( key=='F'|| key=='f') song1.skip(1000);//skip forward 1 second (1000 milliseconds)
  if ( key=='R'|| key=='r') song1.skip(1000);//skip backwards 1 second, notice negatively, (1000 milliseconds)
  //STOP Button
  if (key=='S' || key=='s') {
    if(song1.isPlaying()) {
    song1.pause();
    song1.rewind();// Cue SONG to play from beginning
  } else {
    song1.rewind(); //Not playing means song is paused or song position is at the end of the file
     }
  }//End STOP Button
      //Key Board Short Cuts
  //First Play Button
  //if (key=='P'|| key=='p') song1.play(); //Parameter is Parameter is number of repeats

  //Second Play Button, Loop ONCE
  if (key=='L'|| key=='l') song2.loop(1); //Parameter is Parameter is number of repeats}
  //Infinite Loop
  if (key=='F'|| key=='f') song2.loop(); //Parameter is Parameter is number of repeats}
  //M
  if (key=='M'|| key=='m') {//MUTE Button
    //Note: Mute has built-in pause button and built-in rewind if the song is near the end of the file
    if ( song2.isMuted() ) {song2.unmute();} else {song2.mute();}
  } //End MUTE Button
  //
  //Fast Forward & Fast Reverse
  //Built in Question .isPlaying(), not necessary
  if ( key=='F'|| key=='f') song2.skip(1000);//skip forward 1 second (1000 milliseconds)
  if ( key=='R'|| key=='r') song2.skip(1000);//skip backwards 1 second, notice negatively, (1000 milliseconds)
  //STOP Button
  if (key=='S' || key=='s') {
    if(song1.isPlaying()) {
    song2.pause();
    song2.rewind();// Cue SONG to play from beginning
  } else {
    song2.rewind(); //Not playing means song is paused or song position is at the end of the file
     }
  }//End STOP Button
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
    quitButtonMousePressed();
  //
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight )
  {
    if (draw == false)
    {
      draw = true;
    } else {
      draw = false;
       }//End draw boolean
  }//End line draw
}//End mousePressed
//
//End MAIN Program
