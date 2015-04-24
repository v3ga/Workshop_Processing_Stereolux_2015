class Monster
{
  float scale = 1.0f;
  String name = "";
  PVector size = new PVector(500,500);

  void setName(String s){this.name = s;}
  void setSize(float w, float h){this.size.set(w,h);}
  void setup(PApplet p){}
  void draw(){}
  void drawScale()
  {
    pushMatrix();
    float s = float(height) / size.y; 
    float w = s*size.x;
    translate((width-w)/2,0);
    scale(s,s);
    pushStyle();
    draw();
    popStyle();
    popMatrix();
  }
  void stop(){}
  void reset()
  {
    
  }
}

