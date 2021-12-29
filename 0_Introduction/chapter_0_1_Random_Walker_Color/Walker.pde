// Walker class
class Walker{
  int x;
  int y;
  
  // color variables
  int r;
  int g;
  int b;
  
  // constructor
  Walker(){
    this.x = width / 2;
    this.y = height / 2;
    
    this.r = int(random(256));
    this.g = int(random(256));
    this.b = int(random(256));
  }
  
  // move the walker based on random movement
  void step(){
    int walk_choice= int(random(4));
    
    int color_choice= int(random(6));
    
    if(walk_choice == 0){
      this.x++;
    }else if(walk_choice == 1){
      this.x--;
    }else if(walk_choice == 2){
      this.y++;
    }else{
      this.y--;
    }
    
    if(color_choice == 0){
      this.r+= 5;
    }else if(color_choice == 1){
      this.r-= 5;
    }else if(color_choice == 2){
      this.g+= 5;
    }else if(color_choice == 3){
      this.g-= 5;
    }else if(color_choice == 4){
      this.b+= 5;
    }else{
      this.b-= 5;
    }
    
    this.x = constrain(this.x, 0, width - 1);
    this.y = constrain(this.y, 0, height - 1);
    
    
    this.r = constrain(this.r, 0, 255);
    this.g = constrain(this.g, 0, 255);
    this.b = constrain(this.b, 0, 255);
  }
  
  // render the walker
  void render(){
    stroke(this.r, this.g, this.b);
    point(this.x, this.y);
  }
}
