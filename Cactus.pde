public class Cactus {
  private PVector pos, vel, size;
  private int speed;
  
  //constructor
  public Cactus(int x, int y) {
    pos = new PVector(x,y);
    speed = 10;
    vel = new PVector(-speed,0);
    size = new PVector(20,40);
  }
  
  public void show() {
    fill(0,255,50);
    rect(pos.x, pos.y, size.x, size.y);
  }
  
  public void update() {
    pos.add(vel);
  }
}
