class Spaceship extends Floater  
{   
	boolean turnR, turnL, move;
	public Spaceship() {
		corners = 4;
		xCorners = new int[] {-8, 16, -8, -2};
		yCorners = new int[] {-8, 0, 8, 0};
		myColor = color(255,255,255);
		myCenterX = myCenterY = 250;
		myDirectionX = myDirectionY = 0.0;
		myPointDirection = 0.0;
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

	// public void accelerate (double dAmount)   
	// {          
	// 	//convert the current direction the floater is pointing to radians    
	// 	double dRadians =myPointDirection*(Math.PI/180);     
	// 	//change coordinates of direction of travel    
	// 	myDirectionX += ((dAmount) * Math.cos(dRadians));    
	// 	myDirectionY += ((dAmount) * Math.sin(dRadians)); 
	// 	if(myDirectionY > 10.0) {
	// 		print("stopped");
	// 		myDirectionY = 10.0;
	// 	}   
	// 	if(myDirectionX > 10.0) {
	// 		print("stopped");
	// 		myDirectionX = 10.0;
	// 	}    
	// }   	
}
