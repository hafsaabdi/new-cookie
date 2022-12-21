String spaceBar = "press space to start!";
String quit = "quit";
String restart = "restart";
String start = "start";
PFont font;

void textSetup() {
  //Minimum expectation is single font
  //
  //One FONT only here
  //Fonts from OS (Operating System)
  // String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  font = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
}//End textSetup
//
void spaceBarText() {
  //rect(startX, startY, startWidth, startHeight);
  fill(pink); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 35; //Change the number until it fits
  textFont(font, size); 
  text( spaceBar, startX, startY, startWidth, startHeight); 
  fill(resetDefaultInk);
}//End spaceBarText
//
void quitButtonText() {
  //rect( quitX, quitY, quitWidth, quitHeight ); 
  fill(pink); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 30; //Change the number until it fits
  textFont(font, size); 
  text( quit, quitX, quitY, quitWidth, quitHeight); 
  noFill();
}//End quitButtonText
//
void restartButtonText() {
  fill(pink); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 30; //Change the number until it fits
  textFont(font, size); 
  text( restart, quitX2, quitY2, quitWidth2, quitHeight2); 
  noFill();
}//End restartButtonText
//
void startButtonText() {
  fill(pink); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 30; //Change the number until it fits
  textFont(font, size); 
  text( start, startButtonX, startButtonY, startButtonWidth, startButtonHeight); 
  noFill();
}//End startButtonText
//End Text Subprogram
