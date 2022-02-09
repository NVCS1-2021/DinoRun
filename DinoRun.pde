//create empty array
Cactus[] cactuses = new Cactus[20];

public void setup() {
  size(800,400);
  spawnCacti();
}

public void draw() {
  background(220);
  for (int i = 0; i < cactuses.length; i++) {
    cactuses[i].show();
    cactuses[i].update();
  }
}

private void spawnCacti() {
  for (int i = 0; i < cactuses.length; i++) {
    cactuses[i] = new Cactus(100 * i + 200,300);
  }
}
