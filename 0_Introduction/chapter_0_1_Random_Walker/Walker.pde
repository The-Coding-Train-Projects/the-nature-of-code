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
    int choice= int(random(4));
    
    if(choice == 0){
      this.x++;
    }else if(choice == 1){
      this.x--;
    }else if(choice == 2){
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
