
class Ball{
  PVector position;
  PVector velocity;
  
  int radius;
  int diameter;
  
  Ball(){
    this.position= new PVector(width/2, height/2);
    this.velocity= new PVector(2, 2);
    
    this.radius = 20;
    this.diameter = this.radius * 2;
  }
  
  void move(){
    this.position.add(this.velocity);
  }
  
  void bounce(){
    if(this.position.x - this.radius < 0 || this.position.x + this.radius > width){
      this.velocity.x *= -1;
    }
    if(this.position.y - this.radius < 0 || this.position.y + this.radius > height){
      this.velocity.y *= -1;
    }
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(this.position.x, this.position.y, this.diameter, this.diameter);
  }
}
