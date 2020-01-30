class HomePage {

  PImage ClashRoyaleBackground;
  PImage PassRoyale;
  PFont iPhoneFont;

  void HomePageBackground() {
    ClashRoyaleBackground = loadImage("ClashRoyaleBackground.png");
    ClashRoyaleBackground.resize(int((displayHeight-30)*0.4620)-40+1, int((displayHeight-30)/1.1031));
    image(ClashRoyaleBackground, 20, 20);
  }

  void Time() {
    int TimeHour = hour();
    int TimeMin = minute();
    String Time = "" + TimeHour + ":" + TimeMin;
    int TimePosX = 42;

    if (TimeMin < 10) {
      Time = "" + TimeHour + ":0" + TimeMin;
    }

    if (TimeHour < 10) {
      TimePosX = 45;
    }

    iPhoneFont = createFont("HelveticaNeue", 13);
    textFont(iPhoneFont);
    fill(255);
    text(Time, TimePosX, 45);
  }

  void TopContent() {
    fill(0, 0, 0, 180);
    strokeWeight(1);
    stroke(131);
    rect(26, 100, 262, 39, 4);
    rect(292, 99, 39, 40, 4);
    rect(335, 99, 39, 40, 4);
    fill(255, 255, 255, 30);
    noStroke();
    rect(30, 103, 255, 13, 2);
    rect(295, 103, 33, 13, 4);
    rect(339, 103, 33, 13, 2);

    fill(96);
    strokeWeight(1);
    stroke(169);
    rect(27, 146, 69, 67, 6);
    noStroke();
    fill(148);
    rect(30, 150, 63, 16, 4);
    fill(255);
    rect(86, 150, 6, 6, 6);
    fill(41);
    rect(31, 191, 61, 17, 5);

    fill(202);
    stroke(222);
    strokeWeight(1);
    rect(100, 146, 274, 67, 6);
    PassRoyale = loadImage("PassRoyale.png");
    PassRoyale.resize(279, 60);
    image(PassRoyale, 104, 150);
  }
}
