class WindowBorder {

  void BasicFrame() {
    noFill();
    stroke(0);
    strokeWeight(21);
    rect(10, 10, width-20, height-70, 50);
    noStroke();
    fill(0);
    rect((width/2)-(((width/64)*38)/2), 0, (width/64)*38, 55, 30);
  }
  void BorderTopCurves() {
    noFill();
    stroke(0);
    strokeWeight(3);
    pushMatrix();
    translate(83, 24);
    rotate(790);
    arc(0, 0, 10, 10, 0, HALF_PI);
    pushMatrix();
    translate(-26, 233);
    stroke(0);
    rotate(746);
    arc(0, 0, 10, 10, 0, HALF_PI);
    popMatrix();
    popMatrix();
  }
}
