float[] freq;
float[] number;
String [] lines;

void setup(){
  size(1300,900);
  background(#000000);
  lines=loadStrings("wordfrequency.txt");
  word_frequency();

}

void  word_frequency(){
  freq = new float [lines.length];
  number = new float[lines.length];
  for(int i=0;i<lines.length;i++){
    String stri=lines[i];
    String [] line=stri.split(": ");
    freq[i]=int(line[0]); 
    number[i]=int(line[1]);
   
  }
}   

void draw(){
  color c=color(255, 0, 0);
  fill(c);
  int change=30;
  for(int i=0;i<lines.length;i++){
    float wid=number[i]/2.5;
    if(i%2==0){
    rect(650-wid,900-float(20*(i+1)),wid,20);
    }
    else{
    rect(650,900-float(20*(i+1)),wid,20);
    }
    if(change*i<255){
      fill(color(255,change*i,change*i));
      }
    else{
      fill(color(255,255,255));
  }
  }
    
    
    
  
}
