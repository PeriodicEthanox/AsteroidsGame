public void setup() 
{
  size(1000, 1000);
  for(int i = 0; i < nightSky.length; i ++){
  nightSky[i] = new Star ();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < 200; i ++){
    nightSky[i].show();
  }
  
  bob.move();
  bob.show();
}
public void keyPressed() {

  if (key == 's') {
    bob.accelerate(5);
  }
  if (key == 'a') {
    bob.turn(-20);
  }
  if (key == 'd') {
    bob.turn(20);
  }
  if (key == 'w') {  
    bob.Hyperspace();

}
}
