void gameover() {
  if (blackscore == 3) {
    fill(5);
    rect(450, 0, 450, 700);
    fill(178, 36, 55);
    rect(0, 0, 450, 700);
    fill(255);
    textAlign(CENTER);
    text("black wins!", 725, 330);
    image(winF, 650, 100, 150, 150);
    image(loseF, 100, 100, 150, 150);
    playagain(255, 5);
    awardM.play();
    back(255, 5);
    gameM.pause();
    // scoreboard
   textSize(50);
   fill(5);
   text(redscore, width/2 - 125 , 125);
   fill(178, 36, 55);
   text(blackscore, width/2 + 100, 125);
  } else if (redscore == 3) {
    fill(5);
    rect(450, 0, 450, 700);
    fill(178, 36, 55);
    rect(0, 0, 450, 700);
    fill(255);
    textAlign(CENTER);
    text("red wins!", 175, 330);
    image(winF, 100, 100, 150, 150);
    image(loseF, 650, 100, 150, 150);
    playagain(255, 5);
    awardM.play();
    back(255, 5);
    gameM.pause();
    // scoreboard
   textSize(50);
   fill(5);
   text(redscore, width/2 - 125 , 125);
   fill(178, 36, 55);
   text(blackscore, width/2 + 100, 125);
  }
  
}

void gameoverClicks () {
if (mouseX > 625 && mouseX < 825 && mouseY > 400 && mouseY < 600) {
mode = GAME;
redscore = blackscore = 0;
timer = 100;
}
if (mouseX > 75 && mouseX < 275 && mouseY > 400 && mouseY < 600) {
mode = INTRO;
redscore = blackscore = 0;
timer = 100;
}
}
