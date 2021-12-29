TerrainGenerator generator;

void setup(){
  size(400, 400);
  
  // creating a walker object
  generator= new TerrainGenerator();
  background(255);
  frameRate(1);
}

void draw(){
  
  generator.generate_terrain();
}
