class MonsterRaphael extends Monster
{
  void setup(PApplet p)
  {
    setName("Raphael");
  }

  void draw()
  {
    background(0, 0, 0);
    fill(255, 0, 0);
    ellipse(125, 125, 150, 150);
    fill(255, 255, 255);
    ellipse(250+125, 125, 150, 150);
    fill(0, 0, 0);
    ellipse(125, 125, 150, 800*microNiveau);
    ellipse(250+125, 125, 150, 800*microNiveau);
    line(0, 250, 500, 250);
    fill(0, 255, 0);
    ellipse (size.x/2, size.x/2-microNiveau*100, 100, 100);
    fill(0, 6, 255);
    arc(size.x/2, size.y/2+150, microNiveau*500, microNiveau*500, 0, PI, CHORD);
    arc(size.x/2, 350, microNiveau*500, microNiveau*500, PI, 2*PI, CHORD);
  }
}

