class Asteroid extends Floater {
  private int myHealth;
  private double myTurnDirection;
  private int s;
  Asteroid(int health) {
    myHealth = health;
    s = (int) random(3*myHealth,4*myHealth);
    corners = 11;
    xCorners = new int[] {(-4*s),(-2*s),(0*s),(0*s),(2*s),(3*s), (2*s), (-2*s), (-3*s), (-1*s), (-4*s)};
    yCorners = new int[] {(2*s),(4*s),(2*s),(4*s),(3*s),(1*s), (-2*s), (-2*s), (0*s), (1*s), (2*s)};
    myColor = 255;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myDirectionX = (Math.random()*4)-2;
    myDirectionY = (Math.random()*4)-2;
    myPointDirection = Math.random()*360;
    myTurnDirection = (Math.random()*2)-1;
  }
  Asteroid() {
    myHealth = 3;
    s = (int) random(4*myHealth,5*myHealth);
    corners = 11;
    xCorners = new int[] {(-4*s),(-2*s),(0*s),(0*s),(2*s),(3*s), (2*s), (-2*s), (-3*s), (-1*s), (-4*s)};
    yCorners = new int[] {(2*s),(4*s),(2*s),(4*s),(3*s),(1*s), (-2*s), (-2*s), (0*s), (1*s), (2*s)};
    myColor = 255;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myDirectionX = (Math.random()*4)-2;
    myDirectionY = (Math.random()*4)-2;
    myPointDirection = Math.random()*360;
    myTurnDirection = (Math.random()*2)-1;
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return (double)myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return (double)myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
  public double getPointDirection() {return (double)myPointDirection;}
  public int getHealth() {return myHealth;}
  public void setHealth(int health) {this.myHealth = health;}
  public void setColor() {myColor = color(0,255,0);}
  public float getSize() {
    int maxX = 0;
    int maxY = 0;
    for(int i=0;i<corners;i++) {
      if(xCorners[i] > maxX) maxX = xCorners[i];
      if(yCorners[i] > maxY) maxY = yCorners[i];
    }
    return Math.abs(dist(0, 0, maxX, maxY));
  }
  public void move() {
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  
    // make the asteroid turn
    myPointDirection += myTurnDirection;
    
    //wrap around screen    
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
  }
}