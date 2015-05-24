//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

//chooses the word
int word = int(random(0, 20));
//independant varibles
int x = 0;
int y = 0;
//letters
char input0 = 'a';
char input1 = 'b';
char input2 = 'c';
char input3 = 'd';
char input4 = 'e';
char input5 = 'f';
char input6 = 'g';
char input7 = 'h';
char input8 = 'i';
char input9 = 'j';
char input10= 'k'; 
char input11 = 'l';
char input12 = 'm';
char input13 = 'n';
char input14 = 'o';
char input15 = 'p';
char input16 = 'q';
char input17 = 'r';
char input18 = 's';
char input19 = 't';
char input20 = 'u';
char input21 = 'v';
char input22 = 'w';
char input23 = 'x';
char input24 = 'y';
char input25 = 'z';

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
  
  //rect that shows the misguessed words
  rect(100, 100, 300, 300);



  //makes the spaces for the characters + changes x to how ever many characters are in the word.
  if (characters == 4) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    x=4;
  }
  if (characters == 5) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    x=5;
  }
  if (characters == 6) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    line(600, 600, 675, 600);
    x=6;
  }

  if (characters == 7) {
    line(100, 600, 175, 600);
    line(200, 600, 275, 600);
    line(300, 600, 375, 600);
    line(400, 600, 475, 600);
    line(500, 600, 575, 600);
    line(600, 600, 675, 600);
    line(700, 600, 775, 600);
    x=7;
  }

  if (x=4 && y ) {



    y++;
  }
