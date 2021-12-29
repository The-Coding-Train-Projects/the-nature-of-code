
class Ball{
  float x;
  float y;
  float x_speed;
  float y_speed;
  
  Ball(){
    this.x = width/2;
    this.y = height/2;
    this.x_speed = 2;
    this.y_speed = 2;
  }
  
  void move(){
    this.x += this.x_speed;
    this.y += this.y_speed;
  }
  
  void bounce(){
    if(this.x < 0 || this.x > width){
      this.x_speed *= -1;
    }
    if(this.y < 0 || this.y > height){
      this.y_speed *= -1;
    }
  }
  
  void display(){
    ellipse(this.x, this.y, 20, 20);
  }
}
