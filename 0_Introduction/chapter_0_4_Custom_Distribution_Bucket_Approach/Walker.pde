// Walker class
class Walker{
  int x;
  int y;
  
  // custom random values 
  int[] randoms= {0, 0, 0, 1, 1, 1, 2, 2, 3, 3};
  
  // constructor
  Walker(){
    this.x = width / 2;
    this.y = height / 2;
  }
  
  // move the walker based on random movement
  void step(){
    int random_index = int(random(10));
    int random_value = randoms[random_index];
    
    if(random_value == 0){
      this.x++;
    }else if(random_value == 1){
      this.x--;
    }else if(random_value == 2){
      this.y++;
    }else{
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
