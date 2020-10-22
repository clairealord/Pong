void game() {
  background(blue);

  //center line
  strokeWeight(5);
  stroke(white);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(white);
  text(leftscore, width/4, 100);
  fill(white);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer -1;


  //draw paddles
  strokeWeight(5);
  stroke(0);
  fill(green);
  circle(leftx, lefty, leftd);
  fill(lightBrown);
  circle(rightx, righty, rightd);

  //mode paddles
  if (wkey == true) lefty = lefty - 6;
  if (skey == true) lefty = lefty + 6;

  if (AI == false) {
    if (upkey == true) righty = righty - 6;
    if (downkey == true) righty = righty + 6;
  } else {
    if (ballx > 400) {
      if (bally > righty)righty = righty + 6;
      if (bally < righty) righty = righty - 6;
    }
  }

  //ball
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(ballx, bally, balld);

  //moving
  if (timer < 0 ) {
    ballx = ballx + ballvx;
    bally = bally + ballvy;
  }

  d = dist(rightx, righty, ballx, bally);
  D = dist(leftx, lefty, ballx, bally);
  r = balld/2;
  R = rightd/2;
  L = leftd/2;

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    wow.rewind();
    wow.play();
  }

  if (ballx > 800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    swamp.rewind();
    swamp.play();
  }

  //bouncing off walls
  if (bally < 50 || bally > height-50) {
    ballvy = ballvy * -1;
    bruh.rewind();
    bruh.play();
  }

  //bouncing off paddles
  if (d <= r+R) {
    ballvx = (ballx - rightx)/10;
    ballvy = (bally - righty)/10;
    error.rewind();
    error.play();
  }
  if (D <= r+L) {
    ballvx = (ballx - leftx)/10;
    ballvy = (bally - lefty)/10;
    a.rewind();
    a.play();
  }

  //boundaries
  if (lefty < 125) {
    lefty = 125;
  }
  if (lefty > 475) {
    lefty = 475;
  }
  if (righty < 125) {
    righty = 125;
  }
  if (righty > 475) {
    righty = 475;
  }

  if (leftscore > 2) {
    mode = GAMEOVERLEFT;
    directedby.rewind();
    directedby.play();
  }
  if (rightscore > 2) {
    mode = GAMEOVERRIGHT;
    russia.rewind();
    russia.play();
  }

  stroke(white);
  strokeWeight(5);
  fill(blue);
  square(25, 25, 100);
  fill(white);
  rect(50, 35, 10, 75);
  rect(90, 35, 10, 75);
}


void gameClicks() {
  if (mouseX > 25 && mouseX < 125 && mouseY > 25 && mouseY < 125) {
    mode = PAUSE;
    elevator.rewind();
    elevator.play();
  }
}
