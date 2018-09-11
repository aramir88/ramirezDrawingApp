PImage house, flower, roofTop, window, cloud, tree;
boolean h, f, r, w, c, t, g = false;




int bgColor = #19B5FE ;
float[] setX = { 100, 300, 500, 700, 900};
float[] setY = { 450, 500, 550, 600, 650};

int ballWidth =50;
int ballHeight = 100;
float x = 100;
float y = 50;



void setup() {
  size(1080, 720);
  background(bgColor);
  imageMode(CENTER);



  fill(0, 180, 0);
  rect(0, 400, 1080, 720);

  house= loadImage("house.png");
  flower= loadImage("flower.png");
  roofTop= loadImage("roofTop.png");
  window= loadImage("window.png");
  cloud= loadImage("cloud.png");
  tree= loadImage("tree.png");
  fill(0);
  text("s = save\nc = cloud\n g= group of flowers \n t = tree \n f = flower \n h = house \n w= window \n r = roofTop \n n = reset(Before switching item) \n p = brush \n d = no brush \n b = reset canvas ", 20, 30);
}
void draw() {

  smooth();


  keyPressed();
  if (key == 'c' || key == 'C') {
    c = true;
  }
  if (key == 'h' || key == 'H') {
    h = true;
  }
  if (key == 't' || key == 'T') {
    t = true;
  }
  if (key == 'r' || key == 'R') {
    r = true;
  }
  if (key == 'w' || key == 'W') {
    w = true;
  }
  if (key == 'f' || key == 'F') {
    f = true;
  }
  if (key == 'n' || key == 'N') {
    h = false;
    f = false;
    r = false;
    t = false;
    c = false;
    w = false;
  }
  if (key == 'b' || key == 'B') {

    background(bgColor);
    fill(0, 180, 0);
    rect(0, 400, 1080, 720);
    fill(0);
    text("s = save \n c = cloud \n g= group of flowers \n t = tree \n f = flower \n h = house \n w= window \n r = roofTop \n n = reset(Before switching item) \n p = brush \n d = no brush \n b = reset canvas ", 20, 30);
  }
  if (key == 'g' || key == 'G') {
    g= true;

    for (float x : setX) {
      for (float y : setY) {     
        image(flower, x, y, 30, 30);
      }
    }
  }
}



void mousePressed() {

  if (c == true) {
    image(cloud, mouseX, mouseY, 80, 30);
  }
  if (f == true) {
    image(flower, mouseX, mouseY, 30, 30);
  }
  if (r == true) {
    image(roofTop, mouseX, mouseY, 100, 100);
  }
  if (t == true) {
    image(tree, mouseX, mouseY, 50, 100);
  }
  if (w == true) {
    image(window, mouseX, mouseY, 30, 30);
  }
  if (h == true) {
    image(house, mouseX, mouseY, 100, 100);
  }
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    stroke(0);
    strokeWeight(5);
    line(pmouseX, pmouseY, mouseX, mouseY);

    if (key == 'd' || key == 'D') {
      noStroke();
    }
    if ( key == 's' || key == 'S') {
      saveFrame("drawing-######.png");
    }
  }
}
