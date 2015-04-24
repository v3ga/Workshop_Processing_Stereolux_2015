class MonsterLaurette extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  Sound sound01;
  float niveauSonore = 0.1;
  boolean joueSon = false;

  void setup(PApplet p)
  {
    setName("Laurette");
    sound01 = Sound.load(p, "BRUIT.wav");
    pos_oeil_gauche_debut.set( 175, 225 );
    pos_oeil_droit_debut.set( 320, 225 );
    joueSon = false;
  }

  void stop()
  {
    sound01.pause();
  }

  void draw()
  {
    background(255, 255, 255);
    
    if (microNiveau >= niveauSonore && joueSon==false)
    {
      sound01.setVolume(0.7);
      sound01.play();
      joueSon=true;
    }
    
    if (microNiveau<niveauSonore)
    {
      joueSon=false;
    }

    //on calcule la pos du milieu des yeux du spectateur

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
      direction_spectateur.set(0, 0);
    }

    // Finalement on calcule la position de nos yeux
    // La variable "amplitude" nous dit de combien 

    float amplitude = 40;
    pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

    pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_droit.y  = pos_oeil_droit_debut.y;

    //visage

    fill(3, 0, 0);
    ellipse(250, 250, 450, 450);

    noFill();
    fill(255, 255, 255);
    ellipse (250, 250, 410, 410);

    //-------------------------------------------------------------------------------------------

    //grand oeil

    fill(3, 0, 0);
    ellipse(250, 150, 250+microNiveau*200, 1+microNiveau*600);

    noFill();
    fill(255, 255, 255);
    ellipse(250, 150, 100+microNiveau*200, 1+microNiveau*600);

    noFill();
    fill(3, 0, 0);
    ellipse(250, 150, 30+microNiveau*400, 1+microNiveau*610);
    //-------------------------------------------------------------------------------------------

    //petit oeil gauche

    ellipse(175, 225, 100+microNiveau*200, 1+microNiveau*600);
    fill(255, 255, 255);
    ellipse(pos_oeil_gauche.x, 225, 50+microNiveau*200, 1+microNiveau*600);
    noFill();
    fill(3, 0, 0);
    ellipse(pos_oeil_gauche.x, 225, 10+microNiveau*400, 1+microNiveau*610);

    //--------------------------------------------------------------------------------------------

    //petit oeil droit
    ellipse(320, 225, 100+microNiveau*200, 1+microNiveau*600);
    fill(255, 255, 255);
    ellipse(pos_oeil_droit.x, 225, 50+microNiveau*200, 1+microNiveau*600);
    noFill();
    fill(0, 0, 0);
    ellipse(pos_oeil_droit.x, 225, 10+microNiveau*400, 1+microNiveau*610);

    //----------------------------------------------------------------------------------------------
    rect(150, 350, 205, 40+microNiveau*500);

    //---------------------------------------------------------------------------------------------

    //dents haut

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(155, 350, 170, 350, 162, 370);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(170, 350, 185, 350, 177, 370);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(185, 350, 200, 350, 192, 370);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(200, 350, 215, 350, 207, 380);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(215, 350, 230, 350, 222, 385);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(230, 350, 250, 350, 240, 390);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(250, 350, 270, 350, 260, 390);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(270, 350, 285, 350, 277, 385);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(285, 350, 300, 350, 292, 380);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(300, 350, 315, 350, 307, 370);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(315, 350, 330, 350, 322, 370);

    if (visage.found>0)

    {

      fill(random(255), random(255), random(255));
    }

    else

    {

      noStroke();
    }

    triangle(330, 350, 345, 350, 337, 370);

    //dent bas

    triangle(250, 350+microNiveau*500, 260, 390+microNiveau*500, 240, 390+microNiveau*500);
  }
}

