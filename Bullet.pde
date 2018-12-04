class Bullet extends Floater {
  Bullet() {
    
  }
  Bullet(Spaceship ship) {
    myColor  = color(255,0,0);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    double dRadians = myPointDirection * (Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + ship.getDirectionY();
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
  
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float) myCenterX, (float) myCenterY, 5, 5);
  }
  public void move() {
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
  }
}