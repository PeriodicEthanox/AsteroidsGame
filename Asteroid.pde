class Asteroid extends Floater {
  int degreesOfRotation = ((int)(Math.random() * 7)); 
  public Asteroid() {
    corners = 4;
    xCorners = new int [] {-10, -10, 10, 10};
    yCorners = new int [] {10, -10, -10, 10};
    myColor = 255;
    myCenterX = ((int)(Math.random() * 1000) + 1);
    myCenterY = ((int)(Math.random() * 1000) + 1);
    myXspeed = ((int)(Math.random() * 5) - 2);
    myYspeed = 3;
    myPointDirection = ((int)(Math.random() * 360) + 1);
  }
  public void move() {
    myPointDirection+=degreesOfRotation;   
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
