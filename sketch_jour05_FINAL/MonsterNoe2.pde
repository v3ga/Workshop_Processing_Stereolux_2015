class MonsterNoe2 extends Monster
{
  float yTriangle1=0;
  Sound sound01;

  // PVector est une type de données qui peut contenir un "x" et un "y" en même temps
  // Là on va stocker les positions des yeux dessinés lorsqu'ils ne bougent pas
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  // Là on va stocker la position des yeux en mouvement et qui va dépendre
  // de la position à l'origine (variables oeil_gauche et oeil_droit) et du déplacement
  // du spectateur
  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  // Vecteur qui va nous donner la position du visage (on prend le "milieu" des yeux comme référence)
  PVector pos_milieu_yeux = new PVector();

  // Vecteur qui va nous donner la direction du spectateur (s'il est à droite ou à gauche)
  PVector direction_spectateur = new PVector();


  void setup(PApplet p)
  {
    setName("_Noe_");
    sound01 = Sound.load(p, "sound robot.wav");

    pos_oeil_gauche_debut.set( 310, 310 );
    pos_oeil_droit_debut.set( 190, 310 );
    direction_spectateur.set(0,0);
  }

  void draw()
  {
    if (visage.found>0)
    {
      if (visageDetecte == false)
      {
        sound01.play();
      }
      visageDetecte = true;
    }
    else
    {
      visageDetecte = false;
    }
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
    float amplitude = 50;
    pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

    pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_droit.y  = pos_oeil_droit_debut.y;

  background(0, 0, 0);


  //yeux
  noFill();
  stroke(255);
  ellipse(pos_oeil_droit.x, pos_oeil_droit.y, 10+microNiveau*300, 10+microNiveau*300);
  ellipse( pos_oeil_gauche.x, pos_oeil_gauche.y, 10+microNiveau*300, 10+microNiveau*300);



  // bas crane

  stroke(255, 255, 255);
  line(150, 250, 350, 250);

  line(150, 250, 125, 300);
  line(350, 250, 375, 300);

  line2(150, 250, 150, 175-microNiveau*300);
  line2(150, 250, 175, 275);

  line2(250,250,150,220);

  line2(250, 250, 225, 275);
  line2(240, 310, 250, 390);
  line2(240, 310, 210, 385);
  line(350, 350, 375, 300);
  line(125, 300, 150, 350);
  line2(225, 275, 175, 275);
  line2(175, 275, 125, 300);
  line2(155, 285, 140, 330);
  line2(225, 275, 240, 310);
  line2(150, 350, 200, 350);
  line2(200, 350, 210, 385);
  line2(210, 385, 250, 390);
  line2(140, 330, 200, 350);
  line2(240, 310, 200, 350);
  //haut crane
  yTriangle1 = 90-microNiveau*600;
  line2(137, 275, 150, 175-microNiveau*300);
  line2(150, 175-microNiveau*300, 170, 160);
  // pik


  line(160, 200, 190, 90-microNiveau*600);
  line(190, 90-microNiveau*600, 200, 220);
  line(190, 90-microNiveau*600, 230, 150);
  line2(220, 200, 250, 60-microNiveau*800);
  line(250, 60-microNiveau*600, 250, 235);
  line(340, 210, 310, 80-microNiveau*300);
  line(310, 80-microNiveau*300, 275, 220);
  line(310, 80-microNiveau*300, 270, 150);

  //machoir
  line2(165, 350, 200, 400+microNiveau*300);
  line2(185, 350, 215, 400+microNiveau*300);

 line2(215, 400+microNiveau*300, 250,435+microNiveau*300);

  line2(250, 410+microNiveau*300, 215, 400+microNiveau*300);
  line2(200, 400+microNiveau*300, 200, 425+microNiveau*300);
  line2(250,435+microNiveau*300,200,425+microNiveau*300);
  }

  void line2(float x1, float y1, float x2, float y2)
  {
    line(x1, y1, x2, y2);
    line(size.x-x1, y1, size.x-x2, y2);
  }
}

