//your variable declarations here
Spaceship ship;
Star[] stars;
ArrayList<Asteroid> asteroids;
public void setup() 
{
  //your code here
  size(500,500);
  background(0);
  ship = new Spaceship();
  stars = new Star[100];
  asteroids = new ArrayList<Asteroid>();
  for(int i=0;i<stars.length;i++) {
  	stars[i] = new Star();
  }
  for(int i=0;i<3;i++) {
    asteroids.add(new Asteroid());
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
  for(int i=0;i<asteroids.size();i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
}

public void showStars() {
	for(int i=0;i<stars.length;i++) {
		stars[i].show();
	}
}
public void keyPressed() {
  if(key == 'w') {
    ship.setMove(true);
  }
  if(key == 'a') {
    ship.setTurnR(true);
  }
  if(key == 'd') {
    ship.setTurnL(true);
  }
  if(key =='e') {
  	// go to hyperspace
  	ship.setX((int)(Math.random()*width));
  	ship.setY((int)(Math.random()*height));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
}

public void keyReleased() {
  if(key == 'w') {
    ship.setMove(false);
  }
  if(key == 'a') {
    ship.setTurnR(false);
  }
  if(key == 'd') {
    ship.setTurnL(false);
  }
}

