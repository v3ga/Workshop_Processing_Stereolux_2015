class MonsterLeon extends Monster
{
  PVector pos_oeil_debut = new PVector();
  PVector pos_oeil = new PVector();

  PVector pos_milieu_yeux = new PVector();
  PVector direction_spectateur = new PVector();

  PVector p = new PVector();
  int nb = 100;
  float d = 200;

  void setup(PApplet p)
  {
    setName("Leon");
    pos_oeil_debut = new PVector(250, 250);
  }

  void draw()
  {
    // On calcule la position du milieu des deux yeux du spectateur
    pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
    pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

    // On calcule la position relative par rapport au centre de l'écran
    // Ça nous donne la "direction" du spectateur vis à vis de l'écran 
    // et ainsi afficher nos yeux qui le "suivent"  
    direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
    direction_spectateur.x = direction_spectateur.x/320.0;
    direction_spectateur.y = 0;

    float amplitude =80;

    pos_oeil.x = pos_oeil_debut.x - amplitude*direction_spectateur.x;
    pos_oeil.y = pos_oeil_debut.y;

    //---------------------------------------------------------------------------------------------------------------------------

    micro.update();
    microNiveau = 12 *micro.get();
    background(255, 255, 255);

    pushMatrix();
    translate(size.x/2, size.y/2);  
    stroke(0, 0, 0);
    for (int i=0;i<nb;i++)
    {
      stroke(random(150), random(150), random(255));
      line(0, 0, d+random(58)*microNiveau, 0);
      rotate( radians(360)/nb );
    }
    popMatrix();

    stroke(0);
    fill(255, 255, 255);
    ellipse(250, 250, 55, 55);
    fill(0, 0, 0);
    ellipse(250, 250, 45, 45);
    stroke(255, 255, 255);
    fill(255, 255, 255);
    float d = dist(pos_oeil.x, pos_oeil.y, 250, 250);

    d = constrain(d, 0, 45/2);   
    p.set(pos_oeil.x-250, pos_oeil.y-250);
    p.normalize();
    p.mult(d);
    ellipse(250+p.x, 250+p.y, 5, 5);
  }
}

