//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

//chooses the word
int word = int(random(0, 19));
//independant varibles
int x = 0;
int y = 0;
int z = 0;
int counter[] = new int [23];//there is no q or j in any word

char [] input = {
  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
};

//letters
char input0 = 'a';


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
  println("test: " + input [z]);


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


    
//checks for letters
if(input[z] == pickword[word].charAt(counter[y])) {
  println("match");
  y++;
  while (y<x);
} //else{
  //println("nomatch");
   y=0;
 }
  
 

//}
