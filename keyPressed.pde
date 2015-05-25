
void keyPressed() { 
  if(clicked == false) {
    clicked = true;
  //letters

  if (key == 'a') {
    z = 0;
  }
  if (key == 'b') {
    z =1;
  }
  if (key == 'c') {
    z = 2;
  }
  if (key == 'd') {
    z =3;
  }
  if (key == 'e') {
    z =4;
  }
  if (key == 'f') {
    z =5;
  }
  if (key == 'g') {
    z = 6;
  }
  if (key == 'h') {
    z = 7;
  }
  if (key == 'i') {
    z = 8;
  }

  if (key == 'j') {
    z = 9;
  }
  if (key == 'k') {
    z = 10;
  }
  if (key == 'l') {
    z = 11;
  }
  if (key == 'm') {
    z= 12;
  }
  if (key == 'n') {
    z = 13;
  }
  if (key == 'o') {
    z = 14;
  }
  if (key == 'p') {
    z = 15;
  }
  if (key == 'q') {
    z = 16;
  }
  if (key == 'r') {
    z = 17;
  }
  if (key == 's') {
    z = 18;
  }
  if (key == 't') {
    z = 19;
  }
  if (key == 'u') {
    z = 20;
  }
  if (key == 'v') {
    z = 21;
  }
  if (key == 'w') {
    z = 22;
  }
  if (key == 'x') {
    z = 23;
  }
  if (key == 'y') {
    z = 24;
  }
  if (key == 'z') {
    z = 25;
  } 

  }
  //this is where the magic happens
  if(y<x+1){
  if (input[z] == pickword[word].charAt(y)) {
    println("match");
    y = y+1;
    fill(360, 0, 100);
    rect(100, 100, 300, 300);
    xWrong = 150;
    textSize(20);
    text(input[z], xLetter, yLetter);
    xLetter = xLetter + 100;
    score = score + 250;
  } else { 
    if (keyPressed && input[z] != pickword[word].charAt(y)) {
      drawHangman = drawHangman +1;

      fill(100, 360, 360);
      if(gameover == false){
      text(input[z], xWrong, yWrong);
      xWrong = xWrong + 15;
      score = score - 50;
      }
    }
  }
  }
   }
