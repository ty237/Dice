void setup()
  {
    size(400, 400);
    noLoop();
  }
  void draw()
  {
    background(12, 44, 8);
    int widthOfDie = 30;
    int currentTotal = 0;
    int pointRadius = (int)(widthOfDie/5);
    for (int currentX =  widthOfDie; currentX < 370; currentX += widthOfDie+10) {
      for (int currentY = widthOfDie; currentY < 300; currentY += widthOfDie+10) {
        Die dice = new Die(currentX, currentY);
        dice.show(widthOfDie, pointRadius);
        currentTotal += dice.value;
      }
    }
    fill(255, 255, 255);
    textSize(30);
    text("Current Total: " + currentTotal, 30, 375);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int x, y, value;
      Die(int inX, int inY) //constructor
      {
         x = inX;
         y = inY;
         roll();
      }
      void roll()
      {
        value = (int)(Math.random()*7);
      }
      void show(int recWidth, int pointRadius)
      {
        fill(255, 255, 255);
        rect(x, y, recWidth, recWidth, 10);
        fill(0, 0, 0);
        if (value == 1) {
          ellipse(x+recWidth/2, y+recWidth/2, pointRadius, pointRadius);
        } else if(value == 2) {
          ellipse(x+recWidth/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+(recWidth*3)/4, pointRadius, pointRadius);
        } else if(value == 3) {
          ellipse(x+recWidth/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+recWidth/2, y+recWidth/2, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+(recWidth*3)/4, pointRadius, pointRadius);
        } else if(value == 4) {
          ellipse(x+recWidth/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+(recWidth*3)/4, pointRadius, pointRadius);
          ellipse(x+recWidth/4, y+(recWidth*3)/4, pointRadius, pointRadius);
        } else if(value == 5) {
          ellipse(x+recWidth/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+recWidth/2, y+recWidth/2, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+(recWidth*3)/4, pointRadius, pointRadius);
          ellipse(x+recWidth/4, y+(recWidth*3)/4, pointRadius, pointRadius);
        } else if(value == 6) {
          ellipse(x+recWidth/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+recWidth/2, y+recWidth/4, pointRadius, pointRadius);
          ellipse(x+recWidth/2, y+(recWidth*3)/4, pointRadius, pointRadius);
          ellipse(x+(recWidth*3)/4, y+(recWidth*3)/4, pointRadius, pointRadius);
          ellipse(x+recWidth/4, y+(recWidth*3)/4, pointRadius, pointRadius);
        }
      }
  }
