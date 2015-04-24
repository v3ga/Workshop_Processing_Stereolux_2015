import v3ga.vision.*;
import oscP5.*;

// Variable qui va contenir les données qui proviennent de l'application FaceOSC
FaceOSC visage;

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

// ----------------------------------------------------------
void setup()
{
  // Taille de la fenêtre
  size(640,480);

  // On créer le visage ici !
  visage = new FaceOSC(this);

  // Position par défaut de l'oeil de gauche sur l'écran
  pos_oeil_gauche_debut.set( 640/2-140, 480/4 );

  // Position par défaut de l'oeil de droite sur l'écran
  pos_oeil_droit_debut.set( 640/2+140, 480/4 );
}

// ----------------------------------------------------------
void draw()
{
  // On met à jour les données qui proviennent de l'application FaceOSC
  visage.update();
  
  // Fond blanc
  background(255);

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

  // Grosses Lignes!!
  strokeWeight(5);

  // Maintenant qu'on a tout calculé on peut dessiner ! 
  // Le contour des yeux
  stroke(0);
  noFill();
  ellipse(pos_oeil_droit_debut.x,pos_oeil_droit_debut.y,80+30,80+30);
  ellipse(pos_oeil_gauche_debut.x,pos_oeil_droit_debut.y,80+30,80+30);

  noStroke();
  fill(0);
  ellipse(pos_oeil_droit.x,pos_oeil_droit.y,20,20);
  ellipse(pos_oeil_gauche.x,pos_oeil_gauche.y,20,20);
  
  // Bouche
  noFill();
  stroke(0);
  arc(width/2, height/2+100, 200,40, PI/10, PI-PI/10);
  
  strokeWeight(1);
  //visage.drawGraph(FaceOSC.GRAPH_MOUTH_HEIGHT, 0,height-60,width,60);
}


