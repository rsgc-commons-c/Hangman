//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

int word = int(random(0, 4));
String text= "Text";
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
int characters = pickword[word].length();


void setup() {
  size(1300, 775);
  colorMode(HSB, 360, 100, 100);
  background(360, 100, 100);
  rect(100, 100, 300, 300);
  text(text, 100, 100);
}

void draw() {

  println("WORD: " + pickword[word]);
  println("CHAR: " + characters);
  rect(100, 100, 300, 300);
  if (characters == 4) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
  }
  if (characters == 5) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
  }
  if (characters == 6) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
}

if (characters == 7) {
   line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
}
}
