
class TerrainGenerator{
  float t_x;
  float t_y;
  float unit_size;
  
  TerrainGenerator(){
    this.t_x = 1;
    this.t_y = 1;
    
    this.unit_size = 1;
  }
  
  void generate_terrain(){
    for(int i=0; i<width; i+= unit_size){
      for(int j=0; j<height; j+= unit_size){
        float r_x = noise(i*this.t_x);
        float r_y = noise(j*this.t_y);
        
        r_x= int(map(r_x, 0, 1, 0, 384));
        r_y= int(map(r_y, 0, 1, 0, 384));
        
        int r_total= int(r_x + r_y);
        
        int r = 0;
        int g = 0;
        int b = 0;
        
        if(r_total <= 256){
          r= r_total;
        }else if(r_total < 512){
          r= 255;
          g= r_total - 256;
        }else if(r_total < 768){
          r= 255;
          g= 255;
          b= r_total - 512;
        }else{
          r= 255;
          g= 255;
          b= 255;
        }
        
        r = constrain(r, 0, 255);
        g = constrain(g, 0, 255);
        b = constrain(b, 0, 255);
        
        // drawing the rendered image pixel by pixel
        stroke(r,g,b);
        fill(r,g,b);
        //print(r,g,b,"\n");
        rect(i, j, this.unit_size,this.unit_size);
        
        this.t_x += 0.1;
        this.t_y += 0.1;
      }
    }
  }
}
