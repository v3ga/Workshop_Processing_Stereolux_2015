class MonsterNoe extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  Sound test01;
  Sound lol01;


  void setup(PApplet p)
  {
    setName("Noe");
    setSize(700, 700);
    test01 = Sound.load(p, "test.wav");
    lol01 = Sound.load(p, "lol01.wav");
    pos_oeil_gauche_debut.set( 200, 300 );
    pos_oeil_droit_debut.set( 400, 300 );
  }

  void stop()
  {
    test01.pause();
    lol01.pause();
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
    direction_spectateur.y = pos_milieu_yeux.y-float(height/2);
    direction_spectateur.y = direction_spectateur.y/240.0;

    // Finalement on calcule la position de nos yeux
    // La variable "amplitude" nous dit de combien 
    float amplitudex = 50;
    float amplitudey = 20;
    pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitudex*direction_spectateur.x;
    pos_oeil_gauche.y = pos_oeil_gauche_debut.y + amplitudey*direction_spectateur.y;
    pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitudex*direction_spectateur.x;
    pos_oeil_droit.y  = pos_oeil_droit_debut.y + amplitudey*direction_spectateur.y;
    //--------------------------------------------------------------------------
    background(200);
    micro.update();
    micro.get();
    microNiveau =1.2+micro.get();

    fill(0);
    ellipse(350, 300, 500, 350);
    //membres
    //bras gauche
    stroke (255);
    fill(255);
    strokeWeight(20);
    line(120, 320, 90, 500);
    strokeWeight(10);
    line(95, 490, 50, 510);
    line(85, 490, 90, 520);
    line(85, 490, 70, 520);
    //bras droit
    stroke (255);
    fill(255);
    strokeWeight(20);
    line(size.x-120, 320, size.x-90, 500);
    strokeWeight(10);
    line(size.x-95, 500, size.x-100, 520);
    line(size.x-85, 490, size.x-90, 520);
    line(size.x-85, 490, size.x-70, 520);
    //jambes
    stroke (255);
    fill(255);
    strokeWeight(20);
    line(280, 480, 280, 650);
    //-------------------------------------

    //------------
    stroke (255);
    fill(255);
    strokeWeight(20);
    line(450, 480, 450, 650);







    //corp en noir
    noStroke();
    fill(0);
    ellipse(150, 250, 100*microNiveau, 100*microNiveau);
    ellipse(150, 250, 100*microNiveau, 100*microNiveau);
    ellipse(200, 250, 100*microNiveau, 100*microNiveau);
    ellipse(250, 300, 150*microNiveau, 150*microNiveau);
    ellipse(300, 180, 100*microNiveau, 100*microNiveau);
    ellipse(200, 200, 100*microNiveau, 100*microNiveau);
    ellipse(250, 180, 70*microNiveau, 70*microNiveau);
    ellipse(280, 200, 100*microNiveau, 100*microNiveau);
    ellipse(300, 400, 50*microNiveau, 50*microNiveau);
    ellipse(200, 350, 100*microNiveau, 100*microNiveau);
    ellipse(150, 320, 100*microNiveau, 100*microNiveau);
    ellipse(400, 450, 100*microNiveau, 100*microNiveau);
    ellipse(400, 320, 100*microNiveau, 100*microNiveau);
    ellipse(500, 400, 100*microNiveau, 100*microNiveau);
    ellipse(265, 400, 100*microNiveau, 100*microNiveau);
    ellipse(452, 400, 100*microNiveau, 100*microNiveau);
    ellipse(359, 400, 100*microNiveau, 100*microNiveau);
    ellipse(200, 400, 100*microNiveau, 100*microNiveau);
    ellipse(350, 250, 100*microNiveau, 100*microNiveau);
    ellipse(400, 250, 100*microNiveau, 100*microNiveau);
    ellipse(450, 300, 150*microNiveau, 150*microNiveau);
    ellipse(500, 200, 100*microNiveau, 100*microNiveau);
    ellipse(500, 400, 50*microNiveau, 50*microNiveau);
    ellipse(400, 350, 100*microNiveau, 100*microNiveau);
    ellipse(350, 320, 100*microNiveau, 100*microNiveau);
    ellipse(300, 250, 100*microNiveau, 100*microNiveau);
    ellipse(400, 400, 100*microNiveau, 100*microNiveau);
    ellipse(392, 200, 100*microNiveau, 100*microNiveau);
    ellipse(150, 250, 100*microNiveau, 100*microNiveau);
    ellipse(200, 250, 100*microNiveau, 100*microNiveau);
    ellipse(250, 300, 150*microNiveau, 150*microNiveau);
    ellipse(300, 180, 100*microNiveau, 100*microNiveau);
    ellipse(200, 200, 100*microNiveau, 100*microNiveau);
    ellipse(250, 180, 70*microNiveau, 70*microNiveau);
    ellipse(280, 200, 100*microNiveau, 100*microNiveau);
    ellipse(300, 400, 50*microNiveau, 50*microNiveau);
    ellipse(200, 350, 100*microNiveau, 100*microNiveau);
    ellipse(150, 320, 100*microNiveau, 100*microNiveau);
    ellipse(400, 450, 100*microNiveau, 100*microNiveau);
    ellipse(400, 320, 100*microNiveau, 100*microNiveau);
    ellipse(500, 400, 100*microNiveau, 100*microNiveau);
    ellipse(265, 400, 100*microNiveau, 100*microNiveau);
    ellipse(452, 400, 100*microNiveau, 100*microNiveau);
    ellipse(359, 400, 100*microNiveau, 100*microNiveau);
    ellipse(200, 400, 100*microNiveau, 100*microNiveau);
    ellipse(350, 250, 100*microNiveau, 100*microNiveau);
    ellipse(400, 250, 100*microNiveau, 100*microNiveau);
    ellipse(450, 300, 150*microNiveau, 150*microNiveau);
    ellipse(500, 200, 100*microNiveau, 100*microNiveau);
    ellipse(500, 400, 50*microNiveau, 50*microNiveau);
    ellipse(400, 350, 100*microNiveau, 100*microNiveau);
    ellipse(350, 320, 100*microNiveau, 100*microNiveau);
    ellipse(300, 250, 100*microNiveau, 100*microNiveau);
    ellipse(400, 400, 100*microNiveau, 100*microNiveau);
    ellipse(392, 200, 100*microNiveau, 100*microNiveau);
    ellipse(150, 250, 100*microNiveau, 100*microNiveau);
    ellipse(200, 250, 100*microNiveau, 100*microNiveau);
    ellipse(250, 300, 150*microNiveau, 150*microNiveau);
    ellipse(300, 180, 100*microNiveau, 100*microNiveau);
    ellipse(200, 200, 100*microNiveau, 100*microNiveau);
    ellipse(250, 180, 70*microNiveau, 70*microNiveau);
    ellipse(280, 200, 100*microNiveau, 100*microNiveau);
    ellipse(300, 400, 50*microNiveau, 50*microNiveau);
    ellipse(200, 350, 100*microNiveau, 100*microNiveau);
    ellipse(150, 320, 100*microNiveau, 100*microNiveau);
    ellipse(400, 450, 100*microNiveau, 100*microNiveau);
    ellipse(400, 320, 100*microNiveau, 100*microNiveau);
    ellipse(500, 400, 100*microNiveau, 100*microNiveau);
    ellipse(265, 400, 100*microNiveau, 100*microNiveau);
    ellipse(452, 400, 100*microNiveau, 100*microNiveau);
    ellipse(359, 400, 100*microNiveau, 100*microNiveau);
    ellipse(200, 400, 100*microNiveau, 100*microNiveau);
    ellipse(300, 440, 100*microNiveau, 100*microNiveau);
    ellipse(280, 440, 40*microNiveau, 40*microNiveau);
    ellipse(460, 200, 70*microNiveau, 70*microNiveau);
    ellipse(550, 400, 70*microNiveau, 70*microNiveau);
    ellipse(550, 300, 70*microNiveau, 70*microNiveau);
    ellipse(500, 350, 100*microNiveau, 100*microNiveau);
    ellipse(560, 300, 70*microNiveau, 70*microNiveau);
    ellipse(560, 280, 70*microNiveau, 70*microNiveau);
    ellipse(540, 200, 100*microNiveau, 100*microNiveau);
    ellipse(520, 220, 120*microNiveau, 120*microNiveau);
    ellipse(370, 150, 80*microNiveau, 80*microNiveau);
    ellipse(400, 140, 80*microNiveau, 80*microNiveau);
    ellipse(430, 150, 80*microNiveau, 80*microNiveau);
    ellipse(500, 150, 100*microNiveau, 100*microNiveau);
    ellipse(550, 350, 100*microNiveau, 100*microNiveau);
    ellipse(200, 170, 100*microNiveau, 100*microNiveau);
    ellipse(280, 150, 100*microNiveau, 100*microNiveau);
    ellipse(320, 150, 100*microNiveau, 100*microNiveau);
    ellipse(420, 460, 70*microNiveau, 70*microNiveau);
    //-----------------------------------------------------------------------------

    //oeil gauche
    //globe
    noStroke();
    fill(255);
    ellipse(200, 300, 100, 100);
    //pupille
    fill(0);
    ellipse(pos_oeil_gauche.x, pos_oeil_droit.y, 50, 50);
    fill(255);
    //point blanc
    ellipse(pos_oeil_gauche.x+10, pos_oeil_droit.y+10, 10, 10);

    //oeil droit
    //globe
    fill(255);
    ellipse(400, 300, 100, 100);
    //pupille
    fill(0);
    ellipse(pos_oeil_droit.x, pos_oeil_droit.y, 50, 50);
    fill(255);
    //point blanc
    ellipse(pos_oeil_droit.x+10, pos_oeil_droit.y+10, 10, 10);
    //bouche
    ellipse(300, 370, 60, 60);
    fill(0);
    ellipse(300, 350, 40, 40);
    ellipse(330, 360, 40, 40);
    ellipse(270, 350, 40, 40);
    ellipse(240, 380, 40, 40);

    //------------------------------------------------------
    if (visage.found>0)
    {
      if (visageDetecte == false)
      {

        lol01.play();
      }
      visageDetecte = true;
      fill(0);
    }
    else
    {
      visageDetecte = false;
      //oeil gauche
      //globe
      noStroke();
      fill(0);
      ellipse(200, 300, 100, 100);
      //pupille
      fill(0);
      ellipse(pos_oeil_gauche.x, pos_oeil_droit.y, 50, 50);
      fill(0);
      //point blanc
      ellipse(pos_oeil_gauche.x+10, pos_oeil_droit.y+10, 10, 10);

      //oeil droit
      //globe
      fill(0);
      ellipse(400, 300, 100, 100);
      //pupille
      fill(0);
      ellipse(pos_oeil_droit.x, pos_oeil_droit.y, 50, 50);
      fill(0);
      //point blanc
      ellipse(pos_oeil_droit.x+10, pos_oeil_droit.y+10, 10, 10);
      //bouche
      ellipse(300, 370, 60, 60);
      fill(0);
      ellipse(300, 350, 40, 40);
      ellipse(330, 360, 40, 40);
      ellipse(270, 350, 40, 40);
      ellipse(240, 380, 40, 40);
    }
  }
}

