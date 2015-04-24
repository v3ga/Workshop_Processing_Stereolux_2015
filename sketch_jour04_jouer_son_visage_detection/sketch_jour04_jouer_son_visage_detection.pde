import v3ga.sound.*;
import v3ga.vision.*;
import ddf.minim.*;
import oscP5.*;

boolean visageDetecte = false;
FaceOSC visage;
Sound son;

void setup()
{
  size(640,480);
  visage = new FaceOSC(this);
  son = Sound.load(this, "Processing.wav");
}


void draw()
{
  if (visage.found>0)
  {
    if(visageDetecte == false)
    {
      son.play();
      visageDetecte = true;
    }
  }
  else
  {
    visageDetecte = false;
  }
}


