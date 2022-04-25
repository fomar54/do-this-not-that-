void GUI_draw(){
 background(black); 
 rect(buttonX1, buttonY1, buttonWidth1,buttonHeight1);//calender 
rect(buttonX2, buttonY2, buttonWidth2,buttonHeight2);//weather
 //rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
   if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
 if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
//  textDraw ();

};//End GUI_draw
