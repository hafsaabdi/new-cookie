PImage backgroundImage, quitButtonImage;
PImage restartImage, restartButtonImage;
PImage startImage, startButtonImage;
//
void imageSetup() { //image population
  backgroundImage=loadImage("../Images Used/all of them.jfif");
  quitButtonImage = loadImage("../Images Used/jo.jfif");
  startButtonImage = loadImage("../Images Used/nicholas.jfif");
  //quitButtonImage is loaed here if different
}
//End imageSetup
//
void quitButtonImage() {
  quitButtonImage = loadImage("../Images Used/jo.jfif");
  //rectangles largest dimension

  //images other dimension is scaled
  //
  //Image Dimensions
  float quitButtonImageWidth=1200, quitButtonImageHeight=1200;
  rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if (quitButtonImageWidth >= quitButtonImageHeight) {//Images largest dimennsion, landscape or square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //images matching dimension to rectangles matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;// value<1, main point of all
    quitButtonImageHeight_Calculated= imageHeightRatio * quitButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
    //
  } else {//portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //images matching dimension to rectangles matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension;// value<1, main point of all
    quitButtonImageWidth_Calculated= imageWidthRatio * quitButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    //rect(); //screen to hoverover
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
    //
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
  }
  //
}//End quitButtonImage
//
 void startButtonImage() {
  float startButtonImageWidth=615, startButtonImageHeight=615;
  rect( startButtonImageRectX, startButtonImageRectY, startButtonImageRectWidth, startButtonImageRectHeight );
  //following vars must be populated or debugger error
  float startButtonImageWidth_Adjusted=0.0, startButtonImageHeight_Adjusted=0.0;
  float startButtonImageWidth_Calculated=0.0, startButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if (startButtonImageWidth >= startButtonImageHeight) {//Images largest dimennsion, landscape or square
    largerDimension = startButtonImageWidth;
    smallerDimension = startButtonImageHeight;
    //
    //images matching dimension to rectangles matching dimension
    startButtonImageWidth_Adjusted = startButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;// value<1, main point of all
    startButtonImageHeight_Calculated= imageHeightRatio * startButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    startButtonImageRectX = centerX - startButtonImageWidth_Adjusted * 1/2;
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
    //
  } else {//portrait
    largerDimension = startButtonImageHeight;
    smallerDimension = startButtonImageWidth;
    //
    //images matching dimension to rectangles matching dimension
    startButtonImageHeight_Adjusted = startButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension;// value<1, main point of all
    startButtonImageWidth_Calculated= imageWidthRatio * startButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    startButtonImageRectX = centerX - startButtonImageWidth_Adjusted * 1/2;
    //rect(); //screen to hoverover
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
    //
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
  }
  }//End restartButtonImage
//End Image Subprogram
