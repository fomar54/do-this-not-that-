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
color purple = #2C08FF; 
//
void setup(){
  //Display Geometry 
  size (600,400);
  displayOrientation();
  //
  population();
 //population 
}//End setup

//
void draw(){
   background(black); 
 rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
rect(buttonX2, buttonY2, buttonWidth2,buttonHeight2);//weather
 //rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
   if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
 if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
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
