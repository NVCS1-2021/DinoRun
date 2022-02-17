//create empty array
Cactus[] cactuses = new Cactus[5];
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
    if (player.dinoVsCactus(cactuses[i])) {
      //1.a. set cacti to original position
      spawnCacti();
      //1.b. reset score
      player.score = 0;
    }
  }
  respawnCactus();
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
    cactuses[i] = new Cactus((300 * i) + 200,300);
  }
}

private int bestScore() {
  int[] scores = {14, 5, 30, 1, 20, 14, 7};
  
  int best = 0;
  for (int score : scores) {
    if (score > best) {
      best = score;
    }
  }
  return best;
}

private void respawnCactus() {
  //Cactus offscreen = null;
  for (int i = 0; i < cactuses.length; i++) {
    if (cactuses[i].pos.x < -cactuses[i].size.x) {
      //offscreen = cactuses[i];
      cactuses[i] = new Cactus((300 * cactuses.length - 1) + 200, 300);
    }
  }
}

public void keyPressed() {
  if (keyCode == 32) {
    player.jump();
  }
}
