PImage img1, img2;
PVector pos1, pos2;



void setup() {
  size(1000, 800, P2D);
  
  img1 = loadImage("game.png");
  img2 = loadImage("charachter.png");

  pos1 = new PVector(500,500);
  pos2 = new PVector(width, height);

  
}

void draw() {
  imageMode(CORNER);
  image(img1, 0, 0, width, height);

  imageMode(CENTER);
  image(img2, mouseX, mouseY, 300, 200);
  
  
}
