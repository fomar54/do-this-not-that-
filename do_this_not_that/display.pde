int appWidth, appHeight;


void displayOrientation() {
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
}//End displayOrientation
