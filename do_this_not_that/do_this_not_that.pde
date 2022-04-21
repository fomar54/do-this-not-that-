//gobal variables
float buttonX1, buttonY1, buttonWidth1,buttonHeight1;
float buttonX2, buttonY2, buttonWidth2,buttonHeight2;


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

}//End setup

//
void draw(){
 rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
rect(buttonX2, buttonY2, buttonWidth2,buttonHeight2);//weather
//rect();//display rectangle 
//rect();//display circle 

}//end draw
void keyPressed(){}//End keyPressed
//
void mousePressed(){}//End mousePressed
//
