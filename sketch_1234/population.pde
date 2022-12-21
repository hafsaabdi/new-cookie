void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/15; //Origonal 1/3, debugging to adjust
  quitHeight = appHeight * 1/10;
  quitX = centerX - quitWidth * 1/2;
  quitY = centerY - 4*quitHeight ;
  //
  quitX2 = appWidth * 11/20 ;
  quitY2 = quitY; 
  quitWidth2 = quitWidth;
  quitHeight2 = quitHeight;
  //
  startButtonX = appWidth * 15/40 ;
  startButtonY = quitY; 
  startButtonWidth = quitWidth;
  startButtonHeight = quitHeight;
  //
  quitButtonImageRectX= quitX;
  quitButtonImageRectY= quitY;
  quitButtonImageRectWidth= quitWidth; //original needs debugging to adjust
  quitButtonImageRectHeight= quitHeight;
  //
  startButtonImageRectX= appWidth * 15/40;
  startButtonImageRectY= startButtonY;
  startButtonImageRectWidth= startButtonWidth; //original needs debugging to adjust
  startButtonImageRectHeight= startButtonHeight;
  //
  oneX = startX;
  oneY = startY;
  oneWidth = appWidth * 1/3;
  oneHeight = appHeight * 1/3;
  //
  lineX = appWidth * 1/3;
  lineY = appHeight;
  lineEndX = lineX;
  lineEndY = backgroundY;
  //
  line2X= appWidth * 2/3;
  line2Y= appHeight;
  likeEndX2= line2X;
  lineEndY2= backgroundY;
  //
  line3X= appWidth * 0;
  line3Y= appHeight * 1/3;
  likeEndX3= appWidth;
  lineEndY3= line3Y;
  //
  line4X= appWidth * 0;
  line4Y= appHeight * 2/3;
  likeEndX4= appWidth;
  lineEndY4= line4Y;
  //
  
}// End population
//
//End Population Subprogram
