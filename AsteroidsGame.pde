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
}

public void showStars() {
	for(int i=0;i<stars.length;i++) {
		stars[i].show();
	}
}
public void keyPressed() {
  if(key == 'w') {
  	ship.accelerate(1);
  }
  if(key == 'a') {
    ship.turn(5);
  }
  if(key == 'd') {
    ship.turn(5);
  }
  if(key =='e') {
  	// go to hyperspace
  	ship.setX((int)(Math.random()*width));
  	ship.setY((int)(Math.random()*height));
  }
}