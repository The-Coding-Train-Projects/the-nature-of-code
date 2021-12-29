class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    this.position = new PVector(width/2, height/2);
    this.velocity = new PVector(0, 2);
    this.acceleration = new PVector(0.01, 0);
  }
  
  void update(){
    this.velocity.add(acceleration);
    this.position.add(velocity);
  }
  
  void edges(){
    if(this.position.x > width) this.position.x = 0;
    if(this.position.x < 0) this.position.x = width;
    if(this.position.y > height) this.position.y = 0;
    if(this.position.y < 0) this.position.y = height;
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(this.position.x, this.position.y, 40, 40);
  }
}
