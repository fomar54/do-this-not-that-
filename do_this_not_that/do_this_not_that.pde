//gobal variables
float buttonX1, buttonY1, buttonWidth1,buttonHeight1;
float buttonX2, buttonY2, buttonWidth2,buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont buttonFont;
color purple = #2C08FF; //Note Night Mode Friendly, all of the blue is included

//
void setup(){
  //Display Geometry 
  size (600,400);
  println(width,height,displayWidth,displayHeight); 
  //swap display key variables for testing 
  int appWidth = width;//displayWidth
  int appHeight = height;// displayHeight
  //with strings easier to print to console or canvas
  String ls= "landscape or Square", p= "portrait", DO= "DisplayOrientation",instruct= "bru tun you phone";
  String orientation = (appWidth >= appHeight ) ? ls : p ;//ternery Operator 
  
  println(DO,orientation);
   if (orientation==ls) { 
   println("good to go");} else {println(instruct);
  println("App Geometry is :",appWidth,appHeight);
}else {//Break our app if not landscape
println(instruct);
appWidth = appWidth*0;
appHeight = appHeight*0
}
println ("A[[ Geometry is :", "\tApp Width:", appWidth,"t
  //
 //population 
 buttonX1 = appWidth*1/4;
   buttonY1 = appHeight*3/4;
   buttonWidth1 = appWidth*1/5;
   buttonHeight1 = appHeight*1/5;
   buttonX2 = appWidth*3/4;
   buttonY2 = buttonY1;
   buttonWidth2 = buttonWidth1;
   buttonHeight2 = buttonHeight1;
    rectDisplayX = appWidth*1/8;
   rectDisplayY = appHeight*1/8;
   rectDisplayWidth = buttonWidth1;
   rectDisplayHeight = buttonWidth1;
   ellipseX = appWidth*6/8;
   ellipseY = rectDisplayY;
   ellipseXDiameter = appWidth*1/8; //Note: formulae not "square" but same
   ellipseYDiameter = appHeight*1/8;
   float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2 ;
   float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2 ;
   x = ellipseRectXCenter;
   y = ellipseRectYCenter;
   xDiameter = ellipseXDiameter;
   yDiameter = ellipseYDiameter;

}//End setup

//
void draw(){
 rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
rect(buttonX2, buttonY2, buttonWidth2,buttonHeight2);//weather
 rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
 f (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //
  //Text Draw, General Code for any text
  //Note: visualization rectangle is in main program
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 20); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(white);

 
 
}//end draw
void keyPressed(){}//End keyPressed
//
void mousePressed(){
rectON = false;
  ellipseON = false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON = true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) ellipseON = true;


}//End mousePressed
//
