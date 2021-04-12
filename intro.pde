void intro () {
  
  // visuals
  fill(5);
  rect(450, 0, 450, 700);
  fill(178, 36, 55);
  rect(0, 0, 450, 700);

  // text
  fill(5);
  textSize(100);
  textAlign(CENTER);
  text("PO", 380, 350);
  fill(178, 36, 55);
  textSize(100);
  text("NG", 520, 350);
  
  // player modes
  singleplayer();
  multiplayer();
  
  // intro paddles
  image(bpong, 150, 50, 100, 150);
  image(rpong, 650, 50, 100, 150);
  
  // ball
  fill(255);
  circle(b2x, 100, 50);
  b2x = b2x + v2x;
  
  // ball bouncing
  if (b2x > 650) {
  v2x = v2x * -1;
  }
  if (b2x < 250) {
  v2x = v2x * -1;
  }
  
  introM.play();
  
}

void introClicks () {
if (dist(mouseX, mouseY, 650, 550) < 75) {
  mode = GAME;
  AI = false;
  introM.pause();
  }
  if (dist(mouseX, mouseY, 250, 550) < 75) {
  mode = GAME;
  AI = true;
  introM.pause();
  }
}
