void playagain (int c1, int c2) {
if (mouseX > 625 && mouseX < 825 && mouseY > 400 && mouseY < 600) {
  fill(c1);
  square(615, 390, 220);
  fill(c2);
  textSize(35);
  text("Play Again", 720, 500);
} else {
  fill(c1);
  square(625, 400, 200);
  fill(c2);
  textSize(35);
  text("Play Again", 720, 500);
}
}

void singleplayer () {
if (dist(mouseX, mouseY, 250, 550) < 75) {
fill(5);
circle(250, 550, 175);
textSize(25);
fill(178, 36, 55);
textAlign(CENTER);
text("single player", 250, 550);
} else {
fill(5);
circle(250, 550, 150);
textSize(20);
fill(178, 36, 55);
textAlign(CENTER);
text("single player", 250, 550);
}
}

void multiplayer () {
if (dist(mouseX, mouseY, 650, 550) < 75) {
fill(178, 36, 55);
circle(650, 550, 175);
textSize(25);
fill(5);
textAlign(CENTER);
text("multi player", 650, 550);
} else {
fill(178, 36, 55);
circle(650, 550, 150);
textSize(20);
fill(5);
textAlign(CENTER);
text("multi player", 650, 550);
}
}

void pausebutton () {
if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) {
fill(178, 36, 55);
square(40, 40, 115);
fill(5);
textSize(25);
textAlign(CENTER);
text("pause", 97, 100);
} else {
fill(178, 36, 55);
square(50, 50, 100);
fill(5);
textSize(20);
textAlign(CENTER);
text("pause", 97, 100);
}
}

void back (int c1, int c2) {
if (mouseX > 75 && mouseX < 275 && mouseY > 400 && mouseY < 600) {
  fill(c1);
  square(65, 390, 220);
  fill(c2);
  textSize(35);
  text("Back", 175, 500);
} else {
  fill(c1);
  square(75, 400, 200);
  fill(c2);
  textSize(35);
  text("Back", 175, 500);
}
}
