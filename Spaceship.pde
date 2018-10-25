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

	public void move ()   //move the floater in the current direction of travel
	{      
		if (move)
			accelerate(1);
		if (turnL)
			turn(5);
		if (turnR)
			turn(-5);
		//change the x and y coordinates by myDirectionX and myDirectionY       
		myCenterX += myDirectionX;    
		myCenterY += myDirectionY;     

		//wrap around screen    
		if(myCenterX >width)
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
	public void accelerate (double dAmount)   
	{          
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
