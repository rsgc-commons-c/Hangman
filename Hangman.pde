//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

//chooses the word
int word = int(random(0, 20));
//independant varibles

int xLetter = 125;
int yLetter = 575;
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

  //rect that shows the misguessed words
  rect(100, 100, 300, 300);



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


    
//checks for letters
if(input[z] == pickword[word].charAt(y)) {
  println("match");
  y = y+1;
  textSize(14);
  text(input[z], xLetter, yLetter);
  xLetter = xLetter + 100;
}else{
 line(100, 100, 100, 100);
 }

if(y == x+1){
  textSize(100);
  fill(100, 360, 360);
  text("YOU WIN", 100, 100);
}
 }
