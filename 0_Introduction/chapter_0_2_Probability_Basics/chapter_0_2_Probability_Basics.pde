Walker walker;

void setup(){
  size(800, 600);
  
  // creating a walker object
  walker= new Walker();
  background(255);
}

void draw(){
  // run the walker object
  walker.step();
  walker.render();
}
