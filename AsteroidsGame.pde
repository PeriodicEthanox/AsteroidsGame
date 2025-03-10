ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroid> stan = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(1000, 1000);
  for (int i = 0; i < nightSky.length; i ++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 50; i ++) {
    stan.add(0, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < 200; i ++) {
    nightSky[i].show();
  }

  bob.move();
  bob.show();
  for (int i = 0; i < stan.size(); i ++) {
    Asteroid gus = stan.get(i);
    float d = dist((float)bob.getXs(), (float)bob.getYs(), (float)gus.getX(), (float)gus.getY());
    if (d < 10) {
      stan.remove(i);
    }
    for (int j = 0; j < shots.size(); j++) {
      float d1 = dist((float)gus.getX(), (float)gus.getY(), (float)shots.get(j).getXs(), (float)shots.get(j).getYs());
      if (d1 < 5) {
        stan.remove(i);
        shots.remove(j);
        j-=1;
        break;
      }
    }
  }

  for (int i = 0; i < stan.size(); i++) {

    stan.get(i).move();
    stan.get(i).show();
  }
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
}
public void keyPressed() {

  if (key == 's') {
    bob.accelerate(3);
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
  if (key == ' ') {
    shots.add(new Bullet(bob));
  }
}
