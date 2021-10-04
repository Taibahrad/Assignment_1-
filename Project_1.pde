PImage Garden;
float x;
float y;
float speedX = 8;

void setup() {
  size(500, 500, P2D);
  Garden = loadImage("Garden.jpg");
  x = width/2;
  y = height/2;
  imageMode(CENTER);
}

void draw() {
  background(213, 235, 255);
  
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
  }
 
  image(Garden, x, y, Garden.width * (height / Garden.height), height);
}
