//your variable declarations here
Spaceship ship;
Star[] stars;
public void setup() 
{
  //your code here
  size(500,500);
  background(0);
  ship = new Spaceship();
  stars = new Star[100];
  for(int i=0;i<stars.length;i++) {
  	stars[i] = new Star();
  }

}
public void draw() 
{
  //your code here
  background(0);
  ship.move();
  ship.show();
  showStars();
  text("" + ship.getDirectionX(), 10, 10);
  text("" + ship.getDirectionY(), 10, 20);
}

public void showStars() {
	for(int i=0;i<stars.length;i++) {
		stars[i].show();
	}
}
public void keyPressed() {
  if(key == 'w') {
    ship.move = true;
  }
  if(key == 'a') {
    ship.turnR = true;
  }
  if(key == 'd') {
    ship.turnL = true;
  }
  if(key =='e') {
  	// go to hyperspace
  	ship.setX((int)(Math.random()*width));
  	ship.setY((int)(Math.random()*height));
  }
}

public void keyReleased() {
  if(key == 'w') {
    ship.move = false;
  }
  if(key == 'a') {
    ship.turnR = false;
  }
  if(key == 'd') {
    ship.turnL = false;
  }
}

