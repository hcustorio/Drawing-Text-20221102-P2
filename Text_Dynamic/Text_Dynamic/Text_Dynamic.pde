//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "Wahoo!", footer="Drip";
PFont titleFont;
color purple=#2C08FF, resetDefaultInk=#FFFFFF; //not Night Mode Friendly
//
void setup()
{
  size(500, 600); //Portrait
  //Copy Display Algorithm
  
  //
  appWidth = width;
  appHeight = height;
  //
  //Population
  titleX = footerX = appWidth * 1/4;
  titleY = appHeight * 1/10;
  footerY = appHeight * 8/10;
  titleWidth = footerWidth = appWidth * 1/2;
  titleHeight = footerHeight = appHeight * 1/10;
  //Red square
  fill(#ED3939);
  rect(150, 150, 130 ,200 ,100);
  //Orange square
  fill(#FA9D3F);
  rect(200, 170, 100 ,80 ,30);
  
  //
  //Text Setup, single executed code
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("OCR A Extended", 55); //Verified the font exists in Processing.JAVA
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
  //Layout or text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
}//End setup
//
void draw() {
  //Repeated Executed Code
  fill(purple);
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fontSize = 50; //Largest size given window
  textFont(titleFont, fontSize);
  text( title, titleX, titleY, titleWidth, titleHeight);
  textAlign(CENTER, BOTTOM);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  text( footer, footerX, footerY, footerWidth, footerHeight );
  fill(resetDefaultInk);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
