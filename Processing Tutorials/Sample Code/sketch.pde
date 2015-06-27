


void setup() {

  width = displayWidth;

  height = displayHeight;

  //size(width, height);

  background(10, 80, 100);

  

    //Declare a Font Object - in setup

  PFont font;

  font = createFont("Georgia", 48, true);

  //font = loadFont("ComicSansMS-8.vlw");

  textFont(font);

  

}


void draw() {

  

  //Tutorial #3

  //initialize variables to move

  //where I want to draw on the screen

  int left = 0;

  int right = width; 

  int down = 30;

  int horizontalCenter = width/2;

  int verticalCenter = height/2;

   

  //ellipse(x, y, width, height);

  ellipse(left, 0, 30, 30);//Ellipse in the upper left corner

  //Make a border on the left side of the screen

  ellipse(left-2, 30, 30, 30);

  for(int i = 0; i < height/30; i++)

  {

    down = down + 30;

    ellipse(left-2, down, 30, 30);

  }

  

  //rect(x, y, width, height);

  //rect(30, 10, 40, 40);
  float boxStart = horizontalCenter - (width*.75)/2;
  int boxWidth= (width/4)*3;
  int boxHeight= (height/4)*3;
 // rect(boxStart, 60, boxWidth, boxHeight);

  

  //line(x1, y1, x2, y2);

  line(boxStart + 10, 200, boxStart + boxWidth -20, 200);

  

  //point(x, y);

  down = 120;

  for(int i = 0; i < (boxHeight)/40; i++)

  {

    down = down + 12;
    rectMode(CENTER);
    rect(boxStart, down, 40, 50);

  }


//right side with diff color
stroke(255,0,0);
fill(0,255,0);


  down = 120;

  for(int i = 0; i < (boxHeight)/40; i++)

  {

    down = down + 12;
    rectMode(CENTER);
    rect(boxWidth + boxStart, down, 40, 50);

  }



  //Tutorial #4

  //rgb(red, green, blue);

  //Get the code for the color you want here:

  //http://www.w3schools.com/html/html_colors.asp

  

  //only want background drawn once so draw it up in the setup()

  

  //stroke(r, g, b); outline

  //fill(r, g, b);  fill in

  

  stroke(255, 0, 0);  //red

  fill(0, 255, 0);  //green

  

  down = 30;

  //ellipse(x, y, width, height);

  ellipse(right, 0, 30, 30);//Ellipse in the upper left corner

  //Make a border on the left side of the screen

  ellipse(right + 2, 30, 30, 30);

  for(int i = 0; i < height/30; i++)

  {

    down = down + 30;

    ellipse(right + 2, down, 30, 30);

  }

  

  

  

  //Tutorial #5

  //Declare a Font Object - in setup

  stroke(0);


  //use fill() for color of text

  fill(0);

  //write your text and the (x,y) location

  text("Melissa's Profile", (boxStart + horizontalCenter)/2, 150);

 PFont font;

  font = createFont("Georgia", 24, true);

  //font = loadFont("ComicSansMS-8.vlw");

  textFont(font);
  text("Favorite Subject:  Physics", (boxStart + horizontalCenter)/2, 300);
  
  
  font = createFont("ComicSansMS", 24, true);
  fill(255, 0, 255);
  text("I created this profile to show you all how to write code with Processing.", boxStart + 30, 450);
  

  

  ellipse(horizontalCenter - 130, verticalCenter, 100, 200);
  rect(horizontalCenter + 130, verticalCenter, 100, 200);
  if(mousePressed)
  {
    ellipse(mouseX, mouseY, 100,100);
  }

  

  //We don't need to keep redrawing

 // noLoop();

  

}


