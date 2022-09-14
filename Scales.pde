void setup(){
  size(1000,1000);
  noLoop();
}
void draw(){
  boolean shift = true;
  for(int y = 0; y < 1000; y+=40){
    for(int x = 0; x < 1000; x+=30){
      if(shift == true)
        scale(x+25,y);
      else
        scale(x,y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y){
  fill(#DB2CD9);
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+25,y+20);
  curveVertex(x,y+40);
  curveVertex(x+25,y+60);  
  endShape();
}

