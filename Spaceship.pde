class Spaceship extends Floater  
{   
	public Spaceship() {
		corners = 4;
		xCorners = new int[] {-8, 16, -8, -2};
		yCorners = new int[] {-8, 0, 8, 0};
		myColor = color(255,255,255);
		myCenterX = myCenterY = 250;
		myDirectionX = myDirectionY = 0.0;
		myPointDirection = 0.0;
	}
	public void setX(int x) {
		myCenterX = x;
	}
	public int getX() {
		return (int) myCenterX;
	}   
	public void setY(int y) {
		myCenterY = y;
	}
	public int getY() {
		return (int) myCenterY;
	}  
	public void setDirectionX(double x){
		myDirectionX = x;
	}   
	public double getDirectionX() {
		return (double) myDirectionX;
	}
	public void setDirectionY(double y) {
		myDirectionY = y;
	}  
	public double getDirectionY() {
		return (double) myDirectionY;
	}
	public void setPointDirection(int degrees) {
		myPointDirection = degrees;
	} 
	public double getPointDirection() {
		return (double) myPointDirection;
	}
}
