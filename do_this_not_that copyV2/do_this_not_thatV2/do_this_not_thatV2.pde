//gobal variables
float buttonX1, buttonY1, buttonWidth1,buttonHeight1;

float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
int appWidth, appHeight;

PFont buttonFont;
color purple = #2C08FF; 
//
void setup(){
  //Display Geometry 
  size (600,400);
  println(width, height, displayWidth, displayHeight); 
  //swap display key variables for testing 
  appWidth = width;//displayWidth
  appHeight = height;// displayHeight
  //with strings easier to print to console or canvas
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; //Ternary Operator, repeats IF-ELSE to populate var
  println ( DO, orientation );
  //if ( orientation==p ) println(instruct); //Testing the orientation variable
  if (orientation==ls) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct);
    appWidth*=0;//appWidth=appwidth *0
    appHeight*=0;
  } 
  println("App Geometry is:", "\tApp Width:", appWidth, "\t\tApp Height:", appHeight);

  
  
  
  
   buttonX1 = appWidth*1/4;
   buttonY1 = appHeight*3/4;
   buttonWidth1 = appWidth*1/5;
   buttonHeight1 = appHeight*1/5;
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
  buttonFont = createFont ("Harrington", 55); 
//
 println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

}//End setup

//
void draw(){
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 20); //Change the number until it fits, largest font size
  
 background(black); 
 rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
 //rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
   if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
 if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);

    text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(white);
  
}//end draw
void keyPressed(){}//End keyPressed
//
void mousePressed(){
rectON = false;
  ellipseON = false;
   if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON = true;
 if( rectON=true) {
  rectON=false;
ellipseON=true;}
  else {
  rectON=true;
ellipseON=false;
}
}//End mousePressed

//
