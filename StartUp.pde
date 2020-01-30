class Startup {

  PImage ClashRoyalLoadPoster;
  float count;

  void SupercellAnimation() {
  }

  void LoadingScreen() {
    background(23, 73, 145);
    ClashRoyalLoadPoster = loadImage("ClashRoyaleStartUpPoster.PNG");
    ClashRoyalLoadPoster.resize(int((displayHeight-30)*0.4620)-40+1, int((displayHeight-30)/1.1031));
    image(ClashRoyalLoadPoster, 20, 20);
  }

  void LoadingBar() {
    count = count + 1;
    stroke(0);
    strokeWeight(1);
    line(0, ((height/24)*21)-2, width, ((height/24)*21)-2);
    line(0, ((height/24)*21)+22, width, ((height/24)*21)+22);
    fill(0);
    stroke(20);
    strokeWeight(2);
    rect(0, (height/24)*21, width, 20);
    fill(24, 109, 208);
    noStroke();
    rect(0, (height/24)*21, width/2, 20, 0, 2, 2, 0);
    fill(130, 186, 249);
    rect(0, ((height/24)*21)+2, (width/2)-2, 9, 0, 2, 2, 0);
  }

  void LoadingBarPercentage() {
  }
}
