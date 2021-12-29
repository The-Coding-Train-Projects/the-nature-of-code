
float[] vals;
float[] norms;

void setup(){
  size(400, 300);
  
  // creating a walker object
  vals= new float[width];
  norms= new float[width];
}

void draw(){
  background(100);
  
  // pick a random number between 0 and 1 based on custom distribution
  float n = montecarlo();
  
  // what index of the array did we pick
  int index = int(n * width);
  vals[index]++;
  stroke(255);
  
  boolean normalization = false;
  float max_y = 0.0;
  
  // draw graph based on values in norms array
  // if a value is greater than the height, set normal
  for(int i = 0; i < vals.length; i++){
    line(i, height, i, height - norms[i]);
    
    if(vals[i] > height) normalization = true;
    if(vals[i] > max_y) max_y = vals[i];
  }
  
  // if normalization is true then normalize the height
  // otherwise, just copy the info
  for(int i = 0; i < vals.length; i++){
    if(normalization) norms[i] = (vals[i] / max_y) * ();
    else norms[i] = vals[i];
  }
}

// an algorithm for picking a random number based on
// here probability is determined by the formula y = x
float montecarlo(){
  // create a flag 
  boolean found_one = false;
  int hack = 0; // let's count just so we do not get 
  
  while(!found_one && hack < 10000){
    // pick two random numbers
    float r1 = (float) random(1);
    float r2 = (float) random(1);
    
    // equation y = x * x (we can change the equation)
    float y = r1 * r1;
    
    // if r2 is valid, we will use this value
    if(r2 < y){
      found_one = true;
      return r1;
    }
    hack++;
  }
  
  // if this step gets executed, then the hack has exceeded the limit
  // or the equation is computationally complex
  return 0;
}
