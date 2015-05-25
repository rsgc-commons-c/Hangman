//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

//chooses the word
int word = int(random(0, 20));
//independant varibles

boolean clicked =false;

int xWrong = 150;
int yWrong = 300;
int xLetter = 125;
int yLetter = 575;
int drawHangman = 0;
int v = 0;
int x = 0;
int y = 0;
int z = 9;//there are no j's in any word


//int space[] = new int [7];
char [] input = {
  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
};




//words
String[] pickword = {
  "super", 
  "funny", 
  "march", 
  "pink", 
  "evict", 
  "lynx", 
  "elder", 
  "oxygen", 
  "math", 
  "vodka", 
  "waxy", 
  "zombie", 
  "avenue", 
  "yahoo", 
  "apple", 
  "nymph", 
  "orange", 
  "caribou", 
  "savvy", 
  "zucchini", 
  "lactate",
};
//creates a starting score relative to how long the word is
int score = (pickword[word].length())*(100);

//detects amount of characters
int characters = pickword[word].length();


void setup() {
  size(1300, 775);
  colorMode(HSB, 360, 100, 100);
  background(360, 100, 100);
  rect(100, 100, 300, 300);
  textSize(30);
  fill(0, 0, 0);
  text("guess away", 200, 500);
}

void draw() {

  //displays word = characters in console
  println("WORD: " + pickword[word]);
  println("CHAR: " + characters);
  println("space: " + y);
  println(z);

  fill(0, 0, 0);
  rect(1196, 30, 60, 25);
  textSize(20);
  fill(100, 360, 360);
  text("score:", 1100, 50);
  text(score, 1200, 50);


  //rect that shows the misguessed words
  fill(0, 0, 0);




  //makes the spaces for the characters + changes x to how ever many characters are in the word.
  if (characters == 4) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    x=3;
  }
  if (characters == 5) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    x=4;
  }
  if (characters == 6) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    line(600, 600, 675, 600);
    x=5;
  }

  if (characters == 7) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    line(600, 600, 675, 600);
    line(700, 600, 775, 600);
    x=6;
  }

  if (characters == 8) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    line(600, 600, 675, 600);
    line(700, 600, 775, 600);
    x=7;
  }


  if (y == x+1) {
    textSize(100);
    rect(0, 0, width, height); 
    fill(100, 360, 360);
    text("YOU WIN", 100, 100);
    text("Score: " + score, 100, 200);
  }
  if(score == 0){
    rect(0, 0, 1300, 775);
    text("GAMEOVER", 500, 500);
  }

  strokeWeight(20);
  if (drawHangman == 1) {
    //base
    line(800, 600, 1200, 600);
  }

  if (drawHangman == 2) {
    //height
    line(1000, 600, 1000, 100);
  }

  if (drawHangman == 3) {
    //top
    line(1000, 100, 1200, 100);
  }
  if (drawHangman == 4) {
    //holding the head
    line(1200, 100, 1200, 200);
  }
  if (drawHangman == 5) {
    //head
    ellipse(1200, 200, 50, 50);
  }

  if (drawHangman == 6) {
    //body
    line(1200, 225, 1200, 375);
  }

  if (drawHangman == 7) {
    //leg 1
    line(1200, 375, 1275, 450);
  }

  if (drawHangman == 8) {
    //leg 2
    line(1200, 375, 1125, 450);
  }
  if (drawHangman == 9) {
    //arm 1
    line(1200, 300, 1275, 200);
  }
  if (drawHangman == 10) {
    //arm 2
    line(1200, 300, 1125, 200);
  }
  if (drawHangman == 11) {
    //eye 1
    fill(100, 360, 360);
    line(1215, 190, 1220, 195);
    line(1220, 195, 1215, 190);
  }
  if (drawHangman == 12) {
    line(100, 100, 100, 100);
    line(100, 100, 100, 100);
  }
  if (drawHangman == 13) {
    //mouth
    line(100, 100, 100, 100);
  }
  if (drawHangman == 14) {
    rect(0, 0, 1300, 775);
    text("GAMEOVER", 500, 500);
    score = 0;
  } else {
    if(y<x+1 && score >= 0){
    fill(100, 360, 360);
    text("KEEP GUESSING!", 100, 100);
  }
  }
  if(drawHangman ==14);
}

void keyReleased() {
  clicked = false;
}
