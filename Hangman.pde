//WELCOME TO HANGMAN 
//Conor Commons
//May 14, 2015

int word = int(random(0, 4));
String[] pickword = {
  "super",
  "fantastic",
  "october",
  "mission",
  "evict",
  "lynx",
  "dwarves",
  "oxygen",
  "strong",
  "vodka",
  "wax",
  "zombie",
  "avenue",
  "yahoo",
  "apple",
  "nymph",
  "iqualuit",
  "caribou",
  "savvy",
  "zucchini",
  "lactate",
};

void setup() {
  size(1300, 775);
  colorMode(HSB, 360, 100, 100);
  background(360, 100, 100);
  rect(100, 100, 300, 300);
}

void draw() {
  
 println(pickword[word]);
  rect(100, 100, 300, 300);

}
