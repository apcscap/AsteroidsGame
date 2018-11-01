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
  showShip();
  showStars();
  showText();
  showAsteroids();
  checkCollision();
}
public void showShip() {
  ship.move();
  ship.show();
}
public void showText() {
  text("" + ship.getDirectionX(), 10, 10);
  text("" + ship.getDirectionY(), 10, 20);
}
public void showAsteroids() {
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
public void checkCollision() {
  for(int i=0;i<asteroids.size();i++) {
    Asteroid tempAsteroid = asteroids.get(i);
    float asteroidX = tempAsteroid.getX();
    float asteroidY = tempAsteroid.getY();
    float playerX = ship.getX();
    float playerY = ship.getY();
    if(dist(asteroidX, asteroidY, playerX, playerY) < tempAsteroid.getSize()) {
      breakAsteroid(tempAsteroid, i);
    }
  }
}
public void breakAsteroid(Asteroid tempAsteroid, int i) {
  if(tempAsteroid.getHealth() >= 1) {
    println("here: "+i);
    asteroids.remove(i);
    for(int k=0;k<2;k++) {
      Asteroid a = new Asteroid(tempAsteroid.getHealth() - 1);
      a.setX(tempAsteroid.getX() + int(random(-5, 5)));
      a.setY(tempAsteroid.getY() + int(random(-5, 5)));
      asteroids.add(a);
    }
  } else {
    asteroids.remove(i);
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

