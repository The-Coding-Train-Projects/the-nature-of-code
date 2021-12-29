
class Ball{
  PVector position;
  PVector velocity;
  
  Ball(){
    this.position= new PVector(width/2, height/2);
    this.velocity= new PVector(2, 2);
  }
  
  void move(){
    this.position.add(this.velocity);
  }
  
  void bounce(){
    if(this.position.x < 0 || this.position.x > width){
      this.velocity.x *= -1;
    }
    if(this.position.y < 0 || this.position.y > height){
      this.velocity.y *= -1;
    }
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(this.position.x, this.position.y, 48, 48);
  }
}
