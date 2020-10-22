void mouseReleased() {
  if (mode == INTRO) {
    rightscore = leftscore = 0;
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVERLEFT) {
    gameoverleftClicks();
  } else if (mode == GAMEOVERRIGHT) {
    gameoverrightClicks();
  }
}
