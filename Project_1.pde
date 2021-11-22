PImage img1, img2, img4, img5, img6, img7, img8, img9, img10;
PVector pos1, pos2;
float x;
boolean showfood = true;
boolean showsleep = true;
boolean showstrong = true;



void setup() {
  size(1600, 1000, P2D);

  img1 = loadImage("room.png");

  img2 = loadImage("happy.png");
  img4 = loadImage("excited.png");
  img5 = loadImage("sleepy.png");
  img6 = loadImage("angry.png");

  img7 = loadImage("food.png");
  img8 = loadImage("sleep.png");
  img9 = loadImage("strong.png");
  img10 = loadImage("sleep2.png");

}

void draw() {
  imageMode(CORNER);
  image(img1, 0, 0, width, height);

  if (showfood) {
    image(img7, 500, 700);
  }
  if (showsleep) {
    image(img8, 970, 270);
    image(img10, 1200, 290);
  }
  
  if (showstrong) {
    image(img9, 1300, 200);
  }
  
  imageMode(CENTER);
  image(img2, mouseX, mouseY, 330, 650);
  showfood = true;  
  showsleep= false;  
  showstrong= false;  


  if (mouseX>350 && mouseX<=800) {
    image(img4, mouseX, mouseY, 300, 610);
    showfood = false;
    showsleep= false;  
    showstrong= false;  
  } 
 if (mouseX>800 && mouseX<=930) {
    image(img2, mouseX, mouseY, 300, 610);
    showfood = true;
    showsleep= false;  
    showstrong= false;  
  } 


  if (mouseX>930) {
    image(img5, mouseX, mouseY, 330, 650);
    showfood = true;
    showsleep= true;  
    showstrong= false;  

  }
  if (mouseX>1280) {
    image(img6, mouseX, mouseY, 330, 650);
    showsleep= false;  
    showstrong= true;  


  }
  
  
}
