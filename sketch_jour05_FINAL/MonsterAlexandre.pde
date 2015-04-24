class MonsterAlexandre extends Monster
{
  float r = 0;
  float theta = 0;
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();
  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();
  PVector pos_milieu_yeux = new PVector();
  PVector direction_spectateur = new PVector();
  Sound sound01; //pour le son du monstre
  float microNiveau2 = 0.0;

  void setup(PApplet p)
  {
    setName("Alexandre");
    sound01 = Sound.load(p, "son_monstre.mp3"); //pour le son du monstre
    pos_oeil_gauche_debut.set( 125, 125 );
    pos_oeil_droit_debut.set( 250+125, 480/4 );
  }

  void stop()
  {
    //sound01.stop();
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


    // On calcule la position du milieu des deux yeux du spectateur
    pos_milieu_yeux.x = (visage.getEyeLeftPosition().x + visage.getEyeRightPosition().x)/2;
    pos_milieu_yeux.y = (visage.getEyeLeftPosition().y + visage.getEyeRightPosition().y)/2;

    // On calcule la position relative par rapport au centre de l'écran
    // Ça nous donne la "direction" du spectateur vis à vis de l'écran 
    // et ainsi afficher nos yeux qui le "suivent"  
    direction_spectateur.x = pos_milieu_yeux.x - float(width/2);
    direction_spectateur.x = direction_spectateur.x/320.0;
    direction_spectateur.y = 0;

    // Finalement on calcule la position de nos yeux
    // La variable "amplitude" nous dit de combien 
    float amplitude = 50;
    pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

    pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
    pos_oeil_droit.y  = pos_oeil_droit_debut.y;

    strokeWeight(5);
    // FIN DE FACE OSC




    micro.update();
    microNiveau = micro.get();
    microNiveau2 = 1-micro.get(); // variables pour le micro


    frameRate(100);    //  début du programme
    smooth();
    background(0, 0, 0);
    point(350, 250);
    fill(225, 50, 25);
    noStroke();

    fill(255, 0, 0);
    arc(width/2, height/2+150, microNiveau2*200, microNiveau2*200, 0, PI, CHORD); // si ne marche pas remplacer microniveau 2 par 200
    strokeWeight(1);
    stroke(0, 0, 0);
    fill(0, 0, 0);
    noStroke(); // bouche du monstre




      ellipse(100, 350, microNiveau2*100, microNiveau2*100); // bouche
    ellipse(125, 380, microNiveau2*100, microNiveau2*100);
    ellipse(200, 380, microNiveau2*100, microNiveau2*100);
    ellipse(150, 390, microNiveau2*100, microNiveau2*100);
    ellipse(160, 386, microNiveau2*100, microNiveau2*100);
    ellipse(240, 395, microNiveau2*100, microNiveau2*100);
    ellipse(270, 392, microNiveau2*100, microNiveau2*100);
    ellipse(330, 380, microNiveau2*100, microNiveau2*100);
    ellipse(370, 350, microNiveau2*100, microNiveau2*100);
    ellipse(430, 350, microNiveau2*100, microNiveau2*100);
    ellipse(430, 400, microNiveau2*100, microNiveau2*100);
    ellipse(430, 450, microNiveau2*100, microNiveau2*100);


    fill(255, 0, 0);
    stroke(230, 100, 0);
    triangle(170, 340+50, 185, 380+50, 200, 340+50);
    triangle(200, 340+50, 215, 380+50, 230, 340+50);
    triangle(230, 340+50, 245, 380+50, 260, 340+50);
    triangle(260, 340+50, 275, 380+50, 290, 340+50);
    triangle(290, 340+50, 305, 380+50, 320, 340+50);
    triangle(320, 340+50, 335, 380+50, 350, 340+50); // dents du monstre

    strokeWeight(10);
    line(150, 270, 350, 270);


    noFill();

    noStroke();
    strokeWeight(20);
    fill(80, 175, 34);
    ellipse(125, 125, 200, 200); //oeil vert
    fill(227, 93, 9);
    ellipse(250+125, 125, 150, 150);//oeil rouge

    stroke(255, 0, 0);
    strokeWeight(10);
    line(70, 20, 250, 100); // sourcil
    fill(129, 41, 31);

    stroke(129, 41, 31);          //détection du visage
    stroke(0, 0, 0);
    noFill();
    fill(11, 13, 90);
    ellipse(pos_oeil_droit.x, pos_oeil_droit.y, microNiveau*700, microNiveau*700);//yeux avec son
    ellipse(pos_oeil_gauche.x, pos_oeil_gauche.y, microNiveau*700, microNiveau*700);
    stroke(0);
    noFill();
    ellipse(pos_oeil_droit_debut.x, pos_oeil_droit_debut.y, 80+30, 80+30);
    ellipse(pos_oeil_gauche_debut.x, pos_oeil_droit_debut.y, 80+30, 80+30);

    noStroke();
    fill(0);
    ellipse(pos_oeil_droit.x, pos_oeil_droit.y, 20, 20);
    ellipse(pos_oeil_gauche.x, pos_oeil_gauche.y, 20, 20);



    fill(255, 0, 0);  //la spirale qui ne fonctionne pas
    spirale(125, 125);
    spirale(375, 125);




    theta += 0.01;
    r=r+0.09;
    if (theta>0.2)
    {
      theta = 0.2;
    }
  }

  void spirale(float xx, float yy)
  {
    float x = xx+r * cos(theta);
    float y = yy+r * sin(theta);
    ellipse(x, y, 10, 10);
  }
}

