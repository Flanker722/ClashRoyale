class Lines {
  int numBalls = 2;
  float [] ballX= new float[numBalls];
  float [] ballY= new float[numBalls];
  float [] size= new float[numBalls];

  void Display() {

    for (int i= 0; i<numBalls; i++) {
      ballX[i]=random(361);
      ballY[i]=0;
      size[i]= random(1, 3);
    }

    for (int i= 0; i<numBalls; i++)
    {
      strokeWeight(size[i]);
      stroke(0, 0, 0, 60);
      line(ballX[i], 0, ballX[i], height);
    }
  }
}
