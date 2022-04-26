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
void setup()
{
  //Display Geometry 
  size (600,400);
  displayOrientation();
  population();
testSetup();
}//End setup

//
void draw(){
  
    GUI_draw();
  
}//end draw
void keyPressed(){}//End keyPressed
//
void mousePressed(){
buttonMousePressed();

}//End mousePressed
//
