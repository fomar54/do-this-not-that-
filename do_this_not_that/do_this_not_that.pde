//gobal variables
float buttonX1, buttonY1, buttonWidth1,buttonHeight1;
float buttonX2, buttonY2, buttonWidth2,buttonHeight2;

//
void setup(){
  //Display Geometry 
  size (600,400);
  println(width,height,displayWidth,displayHeight);
  String ls= "landscape or Square", p= "portrait", DO= "DisplayOrientation",instruct= "bru tun you phone";
  
  //swap display key variables for testing 
  int appWidth = width;//displayWidth
  int appHeight = height;// displayHeight
  String orientation = (appWidth >= appHeight ) ? ls : p ;//ternery Operator 
  println(DO,orientation);
  println(appWidth,appHeight);
  //
/* population 
buttonX1 =  ;
buttonY1 = ;
buttonWidth1 = ;
buttonHeight = ;
buttonX2  = ;
buttonY2 = ;
buttonWidth2 = ;
buttonHeight2 = ;
*/
}//End setup

//
void draw(){
 // rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
//rect(buttonX2, buttonY2, buttonWidth2,buttonHeight2);//weather
//rect();//display rectangle 
//rect();//display circle 

}//end draw
void keyPressed(){}//End keyPressed
//
void mousePressed(){}//End mousePressed
//
