// Walker class
class Walker{
  int x;
  int y;
  
  // initial time value for the Perlin noise
  float t= 10;
  
  // constructor
  Walker(){
    this.x = width / 2;
    this.y = height / 2;
  }
  
  // move the walker based on random movement
  void step(){
    int r = int(noise(this.t)*100);
    
    print(r+ "\n");
    
    if(r < 25){
      this.x++;
    }else if(r < 50){
      this.x--;
    }else if(r < 75){
      this.y++;
    }else{
      this.y--;
    }
    
    this.x = constrain(x, 0, width - 1);
    this.y = constrain(y, 0, height - 1);
    
    // update the t value
    this.t += 10;
  }
  
  // render the walker
  void render(){
    stroke(0);
    point(this.x, this.y);
  }
}
