class MonsterTimothee extends Monster
{
  // 500x500


  PFont maFont;

  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  Sound sound01;

  void setup(PApplet p)
  {
    setName("Timothee");

    maFont = loadFont("Amienne-Bold-48.vlw");
    sound01 = Sound.load(p, "Grenouille2.wav");

    pos_oeil_gauche_debut.set( 125, 125 );

    // Position par défaut de l'oeil de droite sur l'écran
    pos_oeil_droit_debut.set( 375, 125 );
  }

  void stop()
  {
    sound01.pause();
  } 

  void draw()
  {
    // réaction au son
    background(255, 255, 255);
    if (visage.found>0)
    {
      if (visageDetecte == false)
      {
        sound01.play();
        visageDetecte = true;
      }
    } 
    else
    {
      sound01.pause();
      visageDetecte = false;
    }
    fill(255, 0, 0);
  ellipse(250, 250, microNiveau*300, microNiveau*300);

  // On calcule la position du milieu des deux yeux du spectateur
  pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
  pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

  // On calcule la position relative par rapport au centre de l'écran
  // Ça nous donne la "direction" du spectateur vis à vis de l'écran 
  // et ainsi afficher nos yeux qui le "suivent"  
  direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
  direction_spectateur.x = direction_spectateur.x/320.0;
  direction_spectateur.y = 0;

  if (visage.found == 0)
  {
  direction_spectateur.set(0,0);
  }

  // Finalement on calcule la position de nos yeux
  // La variable "amplitude" nous dit de combien 
  float amplitude = 35;
  pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
  pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

  pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
  pos_oeil_droit.y  = pos_oeil_droit_debut.y;

  // forme de la tête
  fill(0, 0, 0);
  ellipse(250, 250, 300, 300);

  // forme du corps
  fill(0, 0, 0);
  ellipse(250, 500, 450, 450);

  // bouche
  fill(255, 255, 255);
  triangle(250, 350, 175, 275, 325, 275);

  // dents du haut
  stroke(0, 0, 0);
  strokeWeight(2);
  triangle(250, 290, 240, 275, 260, 275);
  triangle(225, 290, 215, 275, 235, 275);
  triangle(275, 290, 265, 275, 285, 275);
  triangle(300, 290, 290, 275, 310, 275);
  triangle(200, 290, 190, 275, 210, 275);
  strokeWeight(1);

  // dent de gauche
  stroke(0, 0, 0);
  strokeWeight(2);
  triangle(230, 300, 210, 310, 220, 320);
  strokeWeight(1);

  // dent de droite
  stroke(0, 0, 0);
  strokeWeight(2);
  triangle(270, 300, 290, 310, 280, 320);
  strokeWeight(1);

  // dent du bas
  stroke(0, 0, 0);
  strokeWeight(2);
  triangle(250, 320, 240, 340, 260, 340);
  strokeWeight(1);

  // bras gauche
  strokeWeight(10);
  fill(0, 0, 0);
  line(50, 425, 45, 250);
  line(51, 425, 46, 250);

  // bras droit
  fill(0, 0, 0);
  line(450, 425, 455, 250);
  line(451, 425, 456, 250);

  // main gauche
  fill(0, 0, 0);
  line(45, 250, 30, 230);
  line(50, 425, 45, 230);
  line(45, 250, 60, 230);

  // main droite
  fill(0, 0, 0);
  line(455, 250, 440, 230);
  line(450, 425, 455, 230);
  line(455, 250, 470, 230);
strokeWeight(1);
  
  // soleil
  strokeWeight(2);
  fill(249, 255, 90);
  ellipse(500, 1, 100, 100);
  strokeWeight(1);

  // texte
  fill(255, 255, 255);
  textFont(maFont);
  text("Crazy Frog", 180, 450);
  
 
  
    // forme et intérieur des yeux
  strokeWeight(3);
  fill(255, 255, 255);
  ellipse(125, 125, microNiveau*500+75, microNiveau*500+75);
  ellipse(375, 125, microNiveau*500+75, microNiveau*500+75);
  fill(0, 0, 0);
  ellipse(pos_oeil_gauche.x, 125, microNiveau*500+32.5, microNiveau*500+32.5);
  ellipse(pos_oeil_droit.x, 125, microNiveau*500+32.5, microNiveau*500+32.5);
  strokeWeight(1);
  /*
ellipse(pos_oeil_droit_debut.x,pos_oeil_droit_debut.y,80+30,80+30);
   ellipse(pos_oeil_gauche_debut.x,pos_oeil_droit_debut.y,80+30,80+30);
   noStroke();
   fill(0);
   ellipse(pos_oeil_droit.x,pos_oeil_droit.y,20,20);
   ellipse(pos_oeil_gauche.x,pos_oeil_gauche.y,20,20);
   */
 // nez
  stroke(255,255,255);
  strokeWeight(5);
  line(245,225, 230,250);
  line(255,225, 270,250);
  strokeWeight(1);
  stroke(0,0,0);
  }
}

