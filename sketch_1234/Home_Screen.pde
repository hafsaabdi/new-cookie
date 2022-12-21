float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float oneImageX, oneImageY, oneImageWidth, oneImageHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitX2, quitY2, quitWidth2, quitHeight2;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
float lineX, lineY, lineEndX, lineEndY;
float line2X, line2Y, likeEndX2, lineEndY2, line3X, line3Y, likeEndX3, lineEndY3,
line4X, line4Y, likeEndX4, lineEndY4;
float restartX, restartY, restartWidth, restartHeight;
float  restartButtonImageRectX, restartButtonImageRectY, restartButtonImageRectWidth, restartButtonImageRectHeight ;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
float startButtonImageRectX, startButtonImageRectY, startButtonImageRectWidth, startButtonImageRectHeight;
int tintDayMode=255, tintDayModeOpacity=50;
//blue might change, starts at zero
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
//
void homeScreen() { //exists in VOID DRAW
  println("arrived at home screen"); //Testing for Splash Screen Start Button working
  /* Home Screen Expectations
   - background image using tint
   - 9 evenly spaced recatngles
   - quit button and reset button (splash screen start button)
   - in each: image, text, 2d shap, button
   - narative through the 9 rectangles
   - see case study
   - note: must have one image with aspect ratio
   */
  //
  //quit button move to button subprogram
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { 
    /*
    fill(white);
     rect( quitX, quitY, quitWidth, quitHeight ); //testing only
     noFill();
     */
    quitButtonImage(); //in aspect ratio
  } else {
    quitButtonText();
  }
  rect( quitX, quitY, quitWidth, quitHeight ); //quit button
  //
  if ( mouseX>=restartX && mouseX<=restartX+restartWidth && mouseY>=restartY && mouseY<=restartY+restartHeight ) { 
    /*
    fill(white);
    rect( quitX, quitY, quitWidth, quitHeight ); //testing only
    noFill();
    */
    //restartButtonImage(); //in aspect ratio
  } else {
    restartButtonText();
  }
  rect( quitX2, quitY2, quitWidth2, quitHeight2 );
  //
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight ) { 
    /*
    fill(white);
    rect( quitX, quitY, quitWidth, quitHeight ); //testing only
    noFill();
    */
    startButtonImage(); //in aspect ratio
  } else {
    startButtonText();
  }
  rect( startButtonX, startButtonY, startButtonWidth, startButtonHeight );
  //
  line(lineX, lineY, lineEndX, lineEndY);
  strokeWeight(2);
  stroke(pink);
  //
  line(line2X, line2Y, likeEndX2, lineEndY2);
  //
  line(line3X, line3Y, likeEndX3, lineEndY3);
  //
  line(line4X, line4Y, likeEndX4, lineEndY4);
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); //white colour
  stroke(1); //reset: 1 pixel
  fill(white);//reset: white
}//End backgroundWhiteScreen
//

//
void backgroundImage() {
  backgroundWhiteScreen();
  //Control night mode, coloir, with IF
  //if (nightMode==true) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);;
  //if (nightMode==false) tint(tintDayMode, tintDayModeOpacity);;
  if ( nightMode==true ) {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  } else {
    tint(tintDayMode, tintDayModeOpacity);
  }
  //End Night Mode Control
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //image with tint()
} //End backgroundImage
//
//
// End Home Screen Subprogram
