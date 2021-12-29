
float t=10;

void setup(){
  size(600, 400);
  //frameRate(10);
}

void draw(){
  background(0);
  fill(255);
  
  float x = noise(t);
  x= map(x, 0, 1, 0, width);
  ellipse(x, height/2, 40, 40);
  
  // incrementing the perlin noise time value
  // shorter time frame results in smoother noise equation against time
  // can be incremented or decremented
  t += 0.01;
}
