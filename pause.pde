void pause () {
textSize(100);
textAlign(CENTER);
text("PAUSE", 450, 350);
}

void pauseClicks () {
if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) mode = GAME;
}
