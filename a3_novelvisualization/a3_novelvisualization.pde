// Create word cloud absed on The Adventures of Tom Sawyer
String[] words;
color[] colors = {#af4444, #98613f, #96863f, #c88139};
int[] textSizes = {50, 25, 60, 30, 35};
PFont oldPress;
PImage paper;

void setup(){
  // canvas display choices, set background
  size(700, 600);
  background(#ffffff);
  paper = loadImage("Paper.jpg");
  background(paper);
  
  // choice of old-fashioned text font for themes of novel
  oldPress = createFont("Old Press.ttf", 35);
  textFont(oldPress);
  
  // load unique words from novel
  words = loadStrings("uniquewords.txt");
  
  // create "word cloud"
  createCloud();
}

// public generateWord(font, size, color, orientation) {}

void createCloud() {
  // create variables to generate random text display
  int x = 80;
  int y = 30;
  int word_index;
  int color_index;
  int size_index;
  int size;
  String s;
  
  for (int i = 0; i < 50; i++){
    // get random word, fontsize, and fontcolor
    word_index = int(random(words.length));
    color_index = int(random(colors.length));
    size_index = int(random(textSizes.length));
    
    // set styled text to be displayed
    fill(colors[color_index]);
    size = textSizes[size_index];
    textSize(size);
    s = words[word_index];
    
    // display text
    text(s, x, y, 650, 550);
    
    // make sure text stays within bounds
    x += textWidth(s);
    if (x >= 520) {
      y += 60;
      x = 80;
    }
  }
}

void draw() {}
