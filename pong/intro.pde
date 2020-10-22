void intro() {
  thomas.play();
  background(red);
  image(shrekcool, -475, 0, 1500, 600);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(white);
  text("Not Pong", 400, 200);
  
  fill(grey);
  stroke(white);
  strokeWeight(5);
  rect(100, 400, 250, 75);
  fill(white);
  text("1 Player", 225, 430);
  
  fill(grey);
  rect(450, 400, 250, 75);
  fill(white);
  text("2 Players", 575, 430);
  
}

void introClicks() {
  //1 player
 if (mouseX > 100 && mouseX < 400 && mouseY > 350 && mouseY < 475) {
   mode = GAME;
   AI = true;
   thomas.pause();
 }
 //2 players
 if (mouseX > 450 && mouseX < 700 && mouseY > 400 && mouseY < 475) {
   mode = GAME;
   AI = false;
   thomas.pause();
 }
}
