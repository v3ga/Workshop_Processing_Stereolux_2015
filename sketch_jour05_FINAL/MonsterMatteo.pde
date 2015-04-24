class MonsterMatteo extends Monster
{
  // 600x600
  
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  Sound sound01;
  PFont maFonte;

  void setup(PApplet p)
  {
    setName("Matteo");
    setSize(600,600);
    sound01 = Sound.load(p, "truc01.wav"); 
    maFonte = loadFont("DejaVuSansMono-BoldOblique-24.vlw");


    pos_oeil_gauche_debut.set( 150, 150 );
    pos_oeil_droit_debut.set( 450, 150 );
  }
  
    void stop()
  {
    sound01.pause();
  }


  void draw()
  {
    background(255, 255, 255);

    // On calcule la position du milieu des deux yeux du spectateur
    pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
    pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

    // On calcule la position relative par rapport au centre de l'écran
    // Ça nous donne la "direction" du spectateur vis à vis de l'écran 
    // et ainsi afficher nos yeux qui le "suivent"  
    direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
    direction_spectateur.x = direction_spectateur.x/320.0;
    direction_spectateur.y = 0;

    if (visage.found==0)
    {
      direction_spectateur.set(0,0);
    }


    // Finalement on calcule la position de nos yeux
    // La variable "amplitude" nous dit de combien 
    float amplitude = 20;
    pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

    pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_droit.y  = pos_oeil_droit_debut.y;


    fill(50, microNiveau*300, microNiveau*300);
    rect(30, 0, 540, 570);
    fill(250, 0, 0);
    ellipse(pos_oeil_gauche_debut.x, 150, 50, 15+microNiveau*500);
    ellipse(pos_oeil_droit_debut.x, 150, 50, 15+microNiveau*500);
    fill(0, 0, 0);
    ellipse(pos_oeil_gauche.x, 150, 25, 15+microNiveau*500);
    ellipse(pos_oeil_droit.x, 150, 25, 15+microNiveau*500);
    fill(250, 0, 0);
    ellipse(300, 450, microNiveau*900, microNiveau*900);
    fill(255, 0, 0);
    ellipse(300, 450, 100+microNiveau*300, 100+microNiveau*300);
    fill(0, 0, 0);
    ellipse(150, 0, 200+microNiveau*300, 200+microNiveau*300);
    ellipse(450, 0, 200+microNiveau*300, 200+microNiveau*300);
    ellipse(300, 280, 100+microNiveau*300, 100+microNiveau*300);
    fill(0, 0, 0);
    ellipse(300, 450, 75+microNiveau*300, 75+microNiveau*300);
    noFill();
    fill(0, 0, 0);
    line(570, 0, 570, 570);
    line(30, 570, 30, 0);
    line(30, 570, 570, 570);
    triangle(570, 570, 570, 400, 400, 570);
    triangle(30, 570, 200, 570, 30, 400);
    fill(0, 0, 0);
  }
}

