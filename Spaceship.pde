class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int [] {-3, 3, -3, -2};
    yCorners = new int [] {6, 0, -6, 0};
    myColor = 255;
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void Hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myPointDirection = (int)(Math.random() * 360);
  }
  public double getXs() {
    return myCenterX;
  }
  public double getYs() {
    return myCenterY;
  }
}
