class MonsterJulien extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  PFont maFont;
  Sound sound01;


  void setup(PApplet p)
  {
    setName("Julien");
    pos_oeil_gauche_debut.set( 250, 170 );
    maFont = loadFont ("DilleniaUPCBold-48.vlw");
    sound01 = Sound.load(p, "son.wav");
  }
  
  void stop()
  {
    sound01.pause();
  }

  void draw()
  {
    fill (0, 0, 0);
    textFont ( maFont);
    text("ceci est un curly mignon", 10, 10);
    visage.update();
    micro.update();
    microNiveau = micro.get ();

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

    background (191, 185, 185);
    fill (0, 0, 0);
    textFont ( maFont);
    text("ceci est un curly mignon", 10, 80);
    fill (57, 7, 7);
    rect (  200, 425, 30, 50);
    rect (175, 475, 55, 40);
    noFill () ;
    fill (246, 255, 0);
    ellipse (250, 174, 165, 170);
    ellipse (250, 350, 165, 180);
    quad (180, 200, 190, 185, 200, 200, 180, 200);
    //line (170,200,170,330);
    //fill (246,255,0);// je sais pas ce que c est 
    stroke (246, 255, 0);
    ellipse (250, 174, 165, 170);//la tete
    ellipse (250, 350, 165, 180);
    rect (173, 210, 153, 146);//corps ou le cou
    noFill ();
    fill (222, 208, 208);
    ellipse (pos_oeil_gauche_debut.x, 170, microNiveau*489+ 80, microNiveau*489+ 80);//oeuil
    noFill();
    fill (0, 0, 0);
    ellipse (pos_oeil_gauche.x, 169, microNiveau*500+20, microNiveau*500+ 20);//oeuil
    noFill ();
    stroke (0);
    strokeWeight(5);
    line (173, 255, 88, 200);
    line (88, 200, 80, 205);
    line (88, 200, 80, 195);
    line (88, 200, 87, 190);
    line ( 326, 255, 345, 145);
    line ( 345, 145, 350, 150);// finir pour les doigts 
    line ( 345, 145, 353, 145);
    line ( 345, 145, 350, 140);
    noFill ();
    fill (255, 0, 0);
    //quad ( microNiveau*500+240, microNiveau*500+245, microNiveau*500+250, microNiveau*500+235, microNiveau*500+260, microNiveau*500+245, microNiveau*500+240, microNiveau*500+245);
    strokeWeight(3);
    pushMatrix();
    translate(250, 250);
    scale(1+microNiveau*7);
    triangle(0, -10, -50, 50, 50, 50);
    popMatrix();
    noFill ();
    fill (57, 7, 7);
    strokeWeight(5);
    rect (  200, 425, 30, 50);
    rect (175, 475, 55, 40);
    rect ( 255, 425, 30, 50); 
    rect (230, 475, 55, 40);
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
  }
}

