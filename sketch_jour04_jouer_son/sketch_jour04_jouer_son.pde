import v3ga.sound.*;
import ddf.minim.*;


Sound sound01;

void setup()
{
  size(640,480);
 sound01 = Sound.load(this, "Processing.wav");
}

void draw()
{
}

void mousePressed()
{
  sound01.play();
}



