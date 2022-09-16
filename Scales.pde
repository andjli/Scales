void setup(){
  size(500,500);
  noLoop();
}
void draw(){
  boolean shift = true;
  for(int y = -20; y < 500; y+=17.5){
    for(int x = -20; x < 500; x+=17.5){
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
  noStroke();
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+25,y+20);
  curveVertex(x,y+40);
  curveVertex(x+25,y+60);  
  endShape();
}
