class Tracker extends Bullet {
  Asteroid prey;
  Tracker(Spaceship ship) {
    myColor  = color(255,131,0);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    double dRadians = myPointDirection * (Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + ship.getDirectionY();
  }
  public Asteroid getTarget() {return prey;}
  public void setTracking(Asteroid a) {prey = a;}
  public void move() {
    double deltaX = prey.getX() - myCenterX;
    double deltaY = prey.getY() - myCenterY;
    myPointDirection = Math.atan2(deltaY, deltaX);
    double dRadians = myPointDirection; //* (Math.PI/180);
    myDirectionX += 1 * Math.cos(dRadians);
    myDirectionY += 1 * Math.sin(dRadians);
    
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
  }
}