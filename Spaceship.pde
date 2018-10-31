class Spaceship extends Floater  
{   
	private boolean turnR, turnL, isMoving;
	public Spaceship() {
		corners = 4;
		xCorners = new int[] {-8, 16, -8, -2};
		yCorners = new int[] {-8, 0, 8, 0};
		myColor = color(255,255,255);
		myCenterX = myCenterY = 250;
		myDirectionX = myDirectionY = 0.0;
		myPointDirection = 0.0;
		turnR = turnL = move = false;
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
	public boolean getTurnR() {return turnR;}
	public void setTurnR(boolean b) {turnR = b;}
	public boolean getTurnL() {return turnL;}
	public void setTurnL(boolean b) {turnL = b;}
	public boolean getMove() {return isMoving;}
	public void setMove(boolean b) {isMoving = b;}

	public void move() { //move the floater in the current direction of travel
		if (isMoving) {accelerate(0.5);}
		if (turnL) {turn(5);}
		if (turnR) {turn(-5);}
		super.move();
	}
	public void accelerate (double dAmount) {          
		//convert the current direction the floater is pointing to radians    
		double dRadians = myPointDirection*(Math.PI/180);  
		//change coordinates of direction of travel
		if(myDirectionX < 5 && myDirectionX >= 0) {
			myDirectionX += ((dAmount) * Math.cos(dRadians)); 
		} else if(myDirectionX > 0){
			if((dAmount * Math.cos(dRadians)) < 0) {
				myDirectionX += ((dAmount) * Math.cos(dRadians));
			}
		} else if(myDirectionX > -5 && myDirectionX <= 0) {
			myDirectionX += ((dAmount) * Math.cos(dRadians));
		} else if(myDirectionX < 0) {
			if((dAmount * Math.cos(dRadians)) > 0) {
				myDirectionX += ((dAmount) * Math.cos(dRadians));
			}
		}
		if(myDirectionY < 5 && myDirectionY >= 0) {
			myDirectionY += ((dAmount) * Math.sin(dRadians)); 
		} else if(myDirectionY > 0){
			if((dAmount * Math.sin(dRadians)) < 0) {
				myDirectionY += ((dAmount) * Math.sin(dRadians));
			}
		} else if(myDirectionY > -5 && myDirectionY <= 0) {
			myDirectionY += ((dAmount) * Math.sin(dRadians));
		} else if(myDirectionY < 0) {
			if((dAmount * Math.sin(dRadians)) > 0) {
				myDirectionY += ((dAmount) * Math.sin(dRadians));
			}
		}
	}   	
}
