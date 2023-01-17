float ImageWidth, ImageHeight;
float quitX, quitY,quitA,quitB,quitC,quitD, quitWidth, quitHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
float quitButtonImageRectA,quitButtonImageRectB,quitButtonImageRectC,quitButtonImageRectD,quitButtonImageRectE,quitButtonImageRectF,quitButtonImageRectG;
int tintDayMode=255, tintDayModeOpacity=50;
//Blue might change, starts at zero
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
//
void homeScreen() { //Exists in VOID DRAW
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button working
  //
  RectNightMode();
  fill(#4C7F8E);
  rect(0,0,500,500);
  rect(0,333,500,500);
  rect(0,666,500,500);
  rect(500,0,500,500);
  rect(500,333,500,500);
  rect(500,666,500,500);
  rect(1000,0,500,500);
  rect(1000,333,500,500);
  rect(1000,666,500,500);
//

//Quit Button, move to Button Subprogram
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) {
    /*
    fill(white); //Testing Only
    rect( quitX, quitY, quitWidth, quitHeight ); //Testing Only
    noFill(); //Testing Only
    */
    noStroke();
    fill(white);
    noFill();
    stroke(1); //reset dedault
    quitButtonImage(); //
  } else { 
    noStroke();
    fill(white);
    rect( quitX, quitY, quitWidth, quitHeight );
    noFill();
    stroke(1); //reset dedault
    quitButtonText();
  }
 //rect( quitX, quitY, quitWidth, quitHeight );
  //
}//End homeScreen
//
//End Home Screen Subprogram
