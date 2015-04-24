class MonsterBaptiste extends Monster
{
  PVector pos_oeil_gauche_debut = new PVector();
  PVector pos_oeil_droit_debut = new PVector();

  PVector pos_oeil_gauche = new PVector();
  PVector pos_oeil_droit = new PVector();

  PVector pos_milieu_yeux = new PVector();

  PVector direction_spectateur = new PVector();

  float pupille = 0.0;
  float amplitudeMicro = 1500;
  
  Sound sound01;
  
  PFont ecrit;

  void setup(PApplet p)
  {
    setName("Baptiste");
    ecrit=loadFont("ComicSansMS-28.vlw");
    pos_oeil_gauche_debut.set( 195, 170 );
    pos_oeil_droit_debut.set( 285, 170 );
    sound01 = Sound.load(p, "vietnam.mp3");
  }

  void reset()
  {
    sound01.play();
  }

  void stop()
  {
    sound01.pause();
  }

  void draw()
  {
    microNiveau =0.06+micro.get();
    pupille =micro.get();
  
    background(255);

  //Hasard X
  int lower = 165;
  int higher = 290;

  int X = (int)(Math.random() * (higher-lower)) + lower;

  //2ème Hasard X
  int petit = 165;
  int grand = 290;

  int X2 = (int)(Math.random() * (grand-petit)) + petit;

  //3ème Hasard X
  int peti = 165;
  int gran = 290;

  int X3 = (int)(Math.random() * (gran-peti)) + peti;

  //4ème Hasard X
  int pet = 165;
  int gra = 290;

  int X4 = (int)(Math.random() * (gra-pet)) + pet;

  //5ème Hasard X
  int pe = 165;
  int gr = 290;

  int X5 = (int)(Math.random() * (gr-pe)) + pe;

  //6ème Hasard X
  int p = 165;
  int g = 290;

  int X6 = (int)(Math.random() * (g-p)) + p;

  //7ème Hasard X
  int roqs = 165;
  int baptiste = 290;

  int X7 = (int)(Math.random() * (baptiste-roqs)) + roqs;

  //8ème Hasard X
  int roq = 165;
  int baptist = 290;

  int X8 = (int)(Math.random() * (baptist-roq)) + roq;

  //9ème Hasard X
  int ro = 165;
  int baptis = 290;

  int X9 = (int)(Math.random() * (baptis-ro)) + ro;

  //10ème Hasard X
  int r = 165;
  int bapti = 290;

  int X10 = (int)(Math.random() * (bapti-r)) + r;

  //11ème Hasard X
  int anticonstitution = 165;
  int bapt = 290;

  int X11 = (int)(Math.random() * (bapt-anticonstitution)) + anticonstitution;

  //12ème Hasard X
  int anticonstitutio = 165;
  int bap = 290;

  int X12 = (int)(Math.random() * (bap-anticonstitutio)) + anticonstitutio;

  //13ème Hasard X
  int anticonstituti = 165;
  int ba = 290;

  int X13 = (int)(Math.random() * (ba-anticonstituti)) + anticonstituti;

  //14ème Hasard X
  int anticonstitut = 165;
  int epithete = 290;

  int X14 = (int)(Math.random() * (epithete-anticonstitut)) + anticonstitut;

  //15ème Hasard X
  int anticonstitu = 165;
  int epithet = 290;

  int X15 = (int)(Math.random() * (epithet-anticonstitu)) + anticonstitu;

  //16ème Hasard X
  int anticonstit = 165;
  int epithe = 290;

  int X16 = (int)(Math.random() * (epithe-anticonstit)) + anticonstit;

  //17ème Hasard X
  int anticonsti = 165;
  int epith = 290;

  int X17 = (int)(Math.random() * (epith-anticonsti)) + anticonsti;

  //18ème Hasard X
  int anticonst = 165;
  int epit = 290;

  int X18 = (int)(Math.random() * (epit-anticonst)) + anticonst;

  //19ème Hasard X
  int anticons = 165;
  int epi = 290;

  int X19 = (int)(Math.random() * (epi-anticons)) + anticons;

  //20ème Hasard X
  int anticon = 165;
  int ep = 290;

  int X20 = (int)(Math.random() * (ep-anticon)) + anticon;

  //Hasard Y
  int smallest= 190;
  int bigger = 280;

  int Y = (int)(Math.random() * (bigger-smallest)) + smallest;

  //2ème Hasard Y
  int smalles= 190;
  int bigge = 280;

  int Y2 = (int)(Math.random() * (bigge-smalles)) + smalles;

  //3ème Hasard Y
  int smalle= 190;
  int bigg = 280;

  int Y3 = (int)(Math.random() * (bigg-smalle)) + smalle;

  //4ème Hasard Y
  int small= 190;
  int big = 280;

  int Y4 = (int)(Math.random() * (big-small)) + small;

  //5ème Hasard Y
  int smal= 190;
  int bi = 280;

  int Y5 = (int)(Math.random() * (bi-smal)) + smal;

  //6ème Hasard Y
  int sma= 190;
  int b = 280;

  int Y6 = (int)(Math.random() * (b-sma)) + sma;

  //7ème Hasard Y
  int sm= 190;
  int constitutionel = 280;

  int Y7 = (int)(Math.random() * (constitutionel-sm)) + sm;

  //8ème Hasard Y
  int s= 190;
  int constitutione = 280;

  int Y8 = (int)(Math.random() * (constitutione-s)) + s;

  //9ème Hasard Y
  int blain= 190;
  int constitution = 280;

  int Y9 = (int)(Math.random() * (constitution-blain)) + blain;

  //10ème Hasard Y
  int blai= 190;
  int constitutio = 280;

  int Y10 = (int)(Math.random() * (constitutio-blai)) + blai;

  //11ème Hasard Y
  int bla= 190;
  int constituti = 280;

  int Y11 = (int)(Math.random() * (constituti-bla)) + bla;

  //12ème Hasard Y
  int bl= 190;
  int constitut = 280;

  int Y12 = (int)(Math.random() * (constitut-bl)) + bl;

  //13ème Hasard Y
  int antico = 190;
  int constitu = 280;

  int Y13 = (int)(Math.random() * (constitu-antico)) + antico;

  //14ème Hasard Y
  int antic = 190;
  int constit = 280;

  int Y14 = (int)(Math.random() * (constit-antic)) + antic;

  //15ème Hasard Y
  int anti = 190;
  int consti = 280;

  int Y15 = (int)(Math.random() * (consti-anti)) + anti;

  //16ème Hasard Y
  int ant = 190;
  int conist = 280;

  int Y16 = (int)(Math.random() * (conist-ant)) + ant;

  //17ème Hasard Y
  int an = 190;
  int cons = 280;

  int Y17 = (int)(Math.random() * (cons-an)) + an;

  //18ème Hasard Y
  int a = 190;
  int con = 280;

  int Y18= (int)(Math.random() * (con-a)) + a;

  //19ème Hasard Y
  int coucou = 190;
  int co = 280;

  int Y19= (int)(Math.random() * (co-coucou)) + coucou;

  //20ème Hasard Y
  int couco = 190;
  int c = 280;

  int Y20= (int)(Math.random() * (c-couco)) + couco;

  // On met à jour les données qui proviennent de l'application FaceOSC
  visage.update();

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
  float amplitude = 50;
  pos_oeil_gauche.x = pos_oeil_gauche_debut.x - amplitude*direction_spectateur.x;
  pos_oeil_gauche.y = pos_oeil_gauche_debut.y;

  pos_oeil_droit.x  = pos_oeil_droit_debut.x - amplitude*direction_spectateur.x;
  pos_oeil_droit.y  = pos_oeil_droit_debut.y;
  
  //Corps
  noFill();
  stroke(0, 0, 0);
  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X, Y, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X2, Y2, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X3, Y3, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X4, Y4, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X5, Y5, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X6, Y6, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X7, Y7, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X8, Y8, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X9, Y9, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X10, Y10, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);

  ellipse(X11, Y11, microNiveau*1500, microNiveau*1500);
  ellipse(X12, Y12, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X13, Y13, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X14, Y14, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X15, Y15, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X16, Y16, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X17, Y17, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X18, Y18, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X19, Y19, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);
  ellipse(X20, Y20, microNiveau*amplitudeMicro, microNiveau*amplitudeMicro);  

  float pupille=microNiveau*1000;
  if (pupille >= 255 )
  {
    textFont(ecrit);
    fill(0, 0, 0);
    text("PAS LA PEINE DE CRIER!!", 100, 110);
  }
  //Yeux
  fill(255, 255, 255);
  ellipse(pos_oeil_droit_debut.x, pos_oeil_droit_debut.y, 80, 80);
  ellipse(pos_oeil_gauche_debut.x, pos_oeil_droit_debut.y, 80, 80);
  //Pupilles
  fill(pupille, pupille, pupille);
  ellipse(pos_oeil_gauche.x, pos_oeil_gauche.y, 35, 35); 
  ellipse(pos_oeil_droit.x, pos_oeil_droit.y, 35, 35);
  }
}

