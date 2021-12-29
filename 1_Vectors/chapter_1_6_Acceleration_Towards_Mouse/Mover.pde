class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector mouse;
  
  Mover(){
    this.position = new PVector(width/2, height/2);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
    this.mouse= new PVector(mouseX, mouseY);
  }
  
  void update(){
    this.mouse.x= mouseX;
    this.mouse.y= mouseY;
    
    this.mouse.sub(this.position);
    this.mouse.setMag(0.5);
    
    this.acceleration = this.mouse;
    
    this.velocity.add(acceleration);
    this.velocity.limit(5);
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
