void gameoverleft() {
  if (leftscore > rightscore) {
    background(grey);
    fill(green);
    text("Left Wins!", 400, 250);
    text("Click anywhere to continue", 400, 300);
  }
}

    void gameoverright() {
      if (rightscore > leftscore) {
        fill(white);
        background(grey);
        text("Right Wins!", 400, 250);
        text("Click anywhere to continue", 400, 300);
      }
    }


  void gameoverleftClicks() {
    mode = INTRO;
  }
  
  void gameoverrightClicks() {
    mode = INTRO;
  }
