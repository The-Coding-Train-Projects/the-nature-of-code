
void setup(){
  size(500, 300);
}

void draw(){
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();
  
  translate(width/2, height/2);
  ellipse(0 ,0 , 4, 4);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  mouse.sub(center);
  
  // PVector.setMag(50) can do these two steps
  //mouse.normalize();
  //mouse.mult(50); // scale by 0.5 or reduce half the size
  
  mouse.setMag(50);
  
  line(0,0, mouse.x, mouse.y);
}
