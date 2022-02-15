//create empty array
Cactus[] cactuses = new Cactus[20];
Dino player;
//1.a. create empty array coins

public void setup() {
  size(800,400);
  spawnCacti();
  player = new Dino();
}

public void draw() {
  background(220);
  for (int i = 0; i < cactuses.length; i++) {
    cactuses[i].show();
    cactuses[i].update();
    player.dinoVsCactus(cactuses[i]);
  }
  player.show();
  player.update();
  //1.c. show and update coins
  drawScore();
}

private void drawScore() {
  player.updateScore(cactuses);
  textSize(48);
  text(player.score, 20, 50);
}

//1.b. spawn coins higher in the air

private void spawnCacti() {
  for (int i = 0; i < cactuses.length; i++) {
    cactuses[i] = new Cactus(100 * i + 200,300);
  }
}

private void respawnCactus() {
  
}

public void keyPressed() {
  if (keyCode == 32) {
    player.jump();
  }
}
