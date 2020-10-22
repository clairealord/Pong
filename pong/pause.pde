void pause() {
  background(grey);
  fill(white);
  text("PAUSED", 400, 250);
  text("Click anywhere to continue", 400, 300);
}

void pauseClicks() {
  mode = GAME;
  elevator.pause();
}
