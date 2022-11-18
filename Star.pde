class Star //note that this class does NOT extend Floater
{
  int myX, myY, myColor;

  
  
  public Star(){
  myX = (int)(Math.random() * 1000);
  myY = (int)(Math.random() * 1000);
  myColor = 255;
  
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, 1, 1);
    
}
}
