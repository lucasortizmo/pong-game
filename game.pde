 void game () {
   // visuals
   background(14, 113, 8);
   fill(14, 113, 8);
   stroke(255);
   strokeWeight(5);
   circle(width/2, height/2, 300);
   stroke(255);
   strokeWeight(5);
   line(width/2, 0, width/2, height);
   
   // draw paddles
   stroke(178, 36, 55);
   strokeWeight(0);
   fill(178, 36, 55);
   circle(lx, ly, ld);
   fill(5);
   circle(rx, ry, rd);
   
   // scoreboard
   textSize(50);
   fill(178, 36, 55);
   text(redscore, width/2 - 125 , 125);
   fill(5);
   text(blackscore, width/2 + 100, 125);
   
   // timer
   // fill(14, 113, 8);
   // stroke(255);
   // strokeWeight(5);
   // square(width/2 - 25, 85, 50);
   // fill(5);
   // textSize(20);
   // text(timer, width/2 - 20, 115);
   timer = timer - 1;
   
   // move paddles
   if (wkey == true) ly = ly - 5;
   if (skey == true) ly = ly + 5;
   if (ly - ld/2 - bd < 0) ly = 0 + ld/2 + bd;
   if (ly + ld/2 + bd > height) ly = height - ld/2 - bd;
   if (ry - rd/2 - bd < 0) ry = 0 + rd/2 + bd;
   if (ry + rd/2 + bd > height) ry = height - rd/2 - bd;
   
   // AI
   if (AI == false) {
   if (upkey == true) ry = ry - 5;
   if (downkey == true) ry = ry + 5;
 } else if (AI == true) {
   if (bx > 450) {
   if (vy >= 0) ry = ry + 5; //ball down
   if (vy < 0) ry = ry -5; //ball up
   }
   if (ry - rd/2 - bd < 0) ry = 0 + rd/2 + bd;
   if (ry + rd/2 + bd > height) ry = height - rd/2 - bd;
  }
   
   // ball
   fill(250, 101, 8);
   stroke(250, 101, 8);
   strokeWeight(0);
   circle(bx, by, bd);
   
   // move ball
   if (timer < 0) {
   bx = bx + vx;
   by = by + vy;
   }
   
   // bounce ball
   if (by < 0 + bd/2 || by > height - bd/2) {
   vy = vy * -1;
   }
   
   // scoring
   if (bx < 0) {
   blackscore++;
   bx = width/2;
   by = height/2;
   timer = 100;
   vx = random(-5, 5);
   vy = random(-1, 1);
   loseM.play();
   loseM.rewind();
   }
   if (bx > width) {
   redscore++;
   bx = width/2;
   by = height/2;
   timer = 100;
   vx = random(-5, 5);
   vy = random(-1, 1);
   loseM.play();
   loseM.rewind();
   }
   
   // paddles and ball collisions
   if (dist(lx, ly, bx, by) <= ld/2 + bd/2) {
   vx = (bx - lx)/10;
   vy = (by - ly)/10;
   pongM.play();
   pongM.rewind();
   }
   if (dist(rx, ry, bx, by) <= rd/2 + bd/2) {
   vx = (bx - rx)/10;
   vy = (by - ry)/10;
   pongM.play();
   pongM.rewind();
   }
   
   // transition to end
   if (redscore == 3) {
   mode = GAMEOVER;
   gameM.pause();
   } else if (blackscore == 3) {
   mode = GAMEOVER;
   gameM.pause();
   }
   
   // pause button
   pausebutton();
   gameM.play();
 
 }
 void gameClicks() {
 if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) mode = PAUSE;
 gameM.pause();
 }
