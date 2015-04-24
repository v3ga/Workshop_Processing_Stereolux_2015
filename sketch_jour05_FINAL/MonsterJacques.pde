class MonsterJacques extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  float microNiveau = 0.0;
  float hauteurBouche = 0;
  float yDentBas = 0;

  Sound sound01;


  void setup(PApplet p)
  {
    setName("Jacques");
    pos_oeil_gauche_debut.set( 185, 191 );
    pos_oeil_droit_debut.set( 315, 191 );
    sound01 = Sound.load(p, "audio.wav"); //pour le son du monstre
  }

  void stop()
  {
    sound01.pause();
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
      visageDetecte= false;
    }

    // Fond blanc
    background(255);

    if (visage.found==0)
    {
      fill(255, 255, 255);
      //rect(0, 0, 500, 500);
      fill(1, 1, 1);
      ellipse(250, 250, 400, 400);
      fill(255, 255, 255);
      triangle(300, 175, 400, 175, 250, 230);//oeil droit
      beginShape();//oeil gauche
      vertex(100, 175);
      vertex(200, 175);
      vertex(250, 230);
      endShape(CLOSE);
      fill(1, 1, 1);
      ellipse(185, 191, 10, 10);
      ellipse(315, 191, 10, 10);
      fill(255, 255, 255);
      rect(180, 310, 140, 25);
      triangle(180, 335, 185, 310, 190, 335);//1e dent du bas
      triangle(190, 335, 195, 310, 200, 335);//2e dent du bas
      triangle(200, 335, 205, 310, 210, 335);//3e dent du bas
      triangle(210, 335, 215, 310, 220, 335);//4e dent du bas
      triangle(220, 335, 225, 310, 230, 335);//5e dent du bas
      triangle(230, 335, 235, 310, 240, 335);//6e dent du bas
      triangle(230, 335, 235, 310, 240, 335);//7e dent du bas
      triangle(240, 335, 245, 310, 250, 335);//8e dent du bas
      triangle(240, 335, 245, 310, 250, 335);//9e dent du bas
      triangle(250, 335, 255, 310, 260, 335);//10e dent du bas
      triangle(260, 335, 265, 310, 270, 335);//11e dent du bas
      triangle(270, 335, 275, 310, 280, 335);//12e dent du bas
      triangle(270, 335, 275, 310, 280, 335);//13e dent du bas
      triangle(280, 335, 285, 310, 290, 335);//14e dent du bas
      triangle(290, 335, 295, 310, 300, 335);//15e dent du bas
      triangle(300, 335, 305, 310, 310, 335);//16e dent du bas
      triangle(310, 335, 315, 310, 320, 335);//17e dent du bas
      stroke(255, 255, 255);
      noFill();
    } 
    else
    {
      // On calcule la position du milieu des deux yeux du spectateur
      pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
      pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

      // On calcule la position relative par rapport au centre de l'écran
      // Ça nous donne la "direction" du spectateur vis à vis de l'écran 
      // et ainsi afficher nos yeux qui le "suivent"  
      direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
      direction_spectateur.x = direction_spectateur.x/320.0;
      direction_spectateur.y = pos_milieu_yeux.y - float(height/2);
      direction_spectateur.y = direction_spectateur.y/240.0;
      
      if (visage.found == 0)
        direction_spectateur.set(0,0);

      // Finalement on calcule la position de nos yeux
      // La variable "amplitude" nous dit de combien 
      float amplitude = 30;
      pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
      pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

      pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
      pos_oeil_droit.y  = pos_oeil_droit_debut.y;

      ellipse(250, 250, microNiveau*1500, microNiveau*1500);
      stroke(5, 5, 5);//noir
      fill(255, 255, 255);//noir
      rect(0, 0, 500, 500);//fond
      fill(5, 5, 5);
      ellipse(250, 250, 400, 400);
      noStroke();
      fill(255, 255, 255);//blanc
      triangle(300, 175, 400, 175, 250, 230);//oeil droit
      beginShape();//oeil gauche
      vertex(100, 175);
      vertex(200, 175);
      vertex(250, 230);
      endShape(CLOSE);

      hauteurBouche = 50+200*microNiveau;
      yDentBas = 300+hauteurBouche;

      stroke(255, 255, 255);
      fill(5, 5, 5);
      rect(178, 300, 145, hauteurBouche);//bouche
      fill(255, 255, 255);//blanc
      stroke(5, 5, 5);
      beginShape();
      vertex(200, 300);//2e dent
      vertex(210, 350);
      vertex(220, 300);
      endShape(CLOSE);
      beginShape();
      vertex(220, 300);//3e dent
      vertex(230, 350);
      vertex(240, 300);
      endShape();
      triangle(240, 300, 250, 350, 260, 300);//3e dent
      triangle(260, 300, 270, 350, 280, 300);//4e dent
      triangle(280, 300, 290, 350, 300, 300);//6e dent
      triangle(180, 300, 190, 350, 200, 300);//1e dent
      triangle(300, 300, 310, 350, 320, 300);//7e dent
      triangle(180, yDentBas, 185, yDentBas-25, 190, yDentBas);//1e dent du bas
      triangle(190, yDentBas, 195, yDentBas-25, 200, yDentBas);//2e dent du bas
      triangle(200, yDentBas, 205, yDentBas-25, 210, yDentBas);//3e dent du bas
      triangle(210, yDentBas, 215, yDentBas-25, 220, yDentBas);//4e dent du bas
      triangle(220, yDentBas, 225, yDentBas-25, 230, yDentBas);//5e dent du bas
      triangle(230, yDentBas, 235, yDentBas-25, 240, yDentBas);//6e dent du bas
      triangle(230, yDentBas, 235, yDentBas-25, 240, yDentBas);//7e dent du bas
      triangle(240, yDentBas, 245, yDentBas-25, 250, yDentBas);//8e dent du bas
      triangle(240, yDentBas, 245, yDentBas-25, 250, yDentBas);//9e dent du bas
      triangle(250, yDentBas, 255, yDentBas-25, 260, yDentBas);//10e dent du bas
      triangle(260, yDentBas, 265, yDentBas-25, 270, yDentBas);//11e dent du bas
      triangle(270, yDentBas, 275, yDentBas-25, 280, yDentBas);//12e dent du bas
      triangle(270, yDentBas, 275, yDentBas-25, 280, yDentBas);//13e dent du bas
      triangle(280, yDentBas, 285, yDentBas-25, 290, yDentBas);//14e dent du bas
      triangle(290, yDentBas, 295, yDentBas-25, 300, yDentBas);//15e dent du bas
      triangle(300, yDentBas, 305, yDentBas-25, 310, yDentBas);//16e dent du bas
      triangle(310, yDentBas, 315, yDentBas-25, 320, yDentBas);//17e dent du bas
      fill(5, 5, 5);
      ellipse(pos_oeil_gauche.x, pos_oeil_gauche.y, 10, 10);
      ellipse(pos_oeil_droit.x, pos_oeil_gauche.y, 10, 10);
    }
  }
}

