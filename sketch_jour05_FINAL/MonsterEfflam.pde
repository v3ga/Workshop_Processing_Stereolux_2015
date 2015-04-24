class MonsterEfflam extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  Sound sound01, sound02;

  void setup(PApplet p)
  {
    setName("Efflam");

    pos_oeil_gauche_debut.set( 180, 195 );
    pos_oeil_droit_debut.set( 325, 169 );

    sound01 = Sound.load(p, "audio_1.wav");
    sound02 = Sound.load(p, "audio_2.wav");
  }
  
  void stop()
  {
    sound01.pause();
  }

  void draw()
  {
    background(200);

   if (visage.found==0)
    {
      if (visageDetecte == false)
      {
        sound01.play();
      }
      visageDetecte = true;
    }

    else
    {
      visageDetecte= false;
    }

    if (visage.found>0)
    {
      pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
      pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

      direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
      direction_spectateur.x = direction_spectateur.x/320.0;
      direction_spectateur.y = 0;

      float amplitude = 40;
      pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
      pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

      pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
      pos_oeil_droit.y  = pos_oeil_droit_debut.y;

      strokeWeight(5);

      fill(0, 0, 0);
      quad(100, 150, 450, 100, 450, 450, 100, 450);
      fill(0, 255, 0);
      quad(150, 100, 100, 100, 100, 400, 450, 100);
      fill(0, 0, 0);
      ellipse(255, 340, 290, 80);
      ellipse(175, 190, 120, 70);
      ellipse(325, 170, 120, 70);
      fill(0, 255, 0);
      rect(175, 190, 10, 10);
      rect(319, 165, 10, 10);
      fill(255, 0, 0);

      fill(255, 0, 0);
      ellipse(255, 340, 70, 100);
      strokeWeight(1);
      noStroke();
      fill(255, 0, 0);
      ellipse(pos_oeil_droit.x, pos_oeil_droit.y, microNiveau*600, microNiveau*600);
      ellipse(pos_oeil_gauche.x, pos_oeil_gauche.y, microNiveau*600, microNiveau*600);
    } 
    else
    {
      fill(0, 0, 0);
      quad(100, 150, 450, 100, 450, 450, 100, 450);
      fill(0, 255, 0);
      quad(150, 100, 100, 100, 100, 400, 450, 100);
      fill(0, 0, 0);
      ellipse(255, 340, 290, 80);
      ellipse(175, 190, 120, 70);
      ellipse(325, 170, 120, 70);
      fill(0, 255, 0);
      rect(130, 170, 90, 40);
      rect(280, 150, 90, 40);
      fill(0, 0, 0);
      rect(130, 320, 250, 40);
      fill(0, 0, 0);
      quad(140, 320, 390, 320, 390, 410, 140, 410);
      fill(0, 255, 0);
      triangle(140, 320, 190, 320, 160, 360);
      triangle(190, 320, 240, 320, 210, 360);
      triangle(240, 320, 290, 320, 260, 360);
      triangle(290, 320, 340, 320, 310, 360);
      triangle(340, 320, 390, 320, 360, 360);

      triangle(140, 410+microNiveau*100, 190, 410+microNiveau*100, 160, 370+microNiveau*150);
      triangle(190, 410+microNiveau*100, 240, 410+microNiveau*100, 210, 370+microNiveau*150);
      triangle(240, 410+microNiveau*100, 290, 410+microNiveau*100, 260, 370+microNiveau*150);
      triangle(290, 410+microNiveau*100, 340, 410+microNiveau*100, 310, 370+microNiveau*150);
      triangle(340, 410+microNiveau*100, 390, 410+microNiveau*100, 360, 370+microNiveau*150);
      fill(255, 0, 0);
      ellipse(175, 190, 30, 30);
      ellipse(325, 170, 30, 30);
    }
  }
}

