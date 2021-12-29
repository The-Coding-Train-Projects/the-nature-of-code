// Walker class
class Walker{
  int x;
  int y;
  
  // constructor
  Walker(){
    this.x = width / 2;
    this.y = height / 2;
  }
  
  // move the walker based on random movement
  void step(){
    float r= random(1);
    
    if(r < 0.4){       // 40% going right
      this.x++;
    }else if(r < 0.6){ // 60 - 40 -> 20% going left
      this.x--;
    }else if(r < 0.8){ // 80 - 60 -> 20% going up
      this.y++;
    }else{             // 100 - 80 -> 20% going down
      this.y--;
    }
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1); 
  }
  
  // render the walker
  void render(){
    stroke(0);
    point(this.x, this.y);
  }
}
