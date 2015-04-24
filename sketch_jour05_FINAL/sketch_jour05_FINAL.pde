import v3ga.vision.*;
import v3ga.sound.*;
import v3ga.utils.*;
import ddf.minim.*;
import oscP5.*;
import java.io.*;

// Timing
float period = 5;
boolean isTimer = false;

// FaceOSC
FaceOSC visage;
boolean visageDetecte = false;

// Micro
Micro micro;
float microNiveau = 0.0;

// Timer
Timer timer;
float temps=0.0f;

// Monstres!
ArrayList<Monster> monstres = new ArrayList<Monster>();
Monster monsterA,monsterB;
String monsterNameA = "";
String monsterNameB = "";
Monster monster;
int monsterIndex=0;

// --------------------------------------------------------
Monster getMonster(String name)
{
  for (Monster m : monstres)
    if (m.name.equals(name))
      return m;
  return null;
}

// --------------------------------------------------------
void setup()
{
  size(1024, 768);
//  monsterProps = new Properties();

  visage = new FaceOSC(this);
  micro = new Micro(this);

  monstres.add( new MonsterAlexandre() );
  monstres.add( new MonsterJacques() );
  monstres.add( new MonsterNoe2() );
  monstres.add( new MonsterTimothee() );
  monstres.add( new MonsterLeon() );  
  monstres.add( new MonsterEfflam() );
  monstres.add( new MonsterNoe() );
  monstres.add( new MonsterLaurette() );
  monstres.add( new MonsterJulien() );
  monstres.add( new MonsterRaphael() );
  monstres.add( new MonsterBaptiste() );
  monstres.add( new MonsterMatteo() );

  for (Monster m : monstres) {
    m.setup(this);
  }
  
  // run
  monsterA = getMonster("Alexandre");
  monsterB = getMonster("Noe");
  monster = monsterA;

  timer = new Timer(this);
}

// --------------------------------------------------------
void draw()
{
  if (isTimer)
  {
    temps+=timer.dt();
    if (temps>=period){
      monster.stop();
      monster = monster == monsterA ? monsterB : monsterA;
      monster.reset();
      visageDetecte=false;
      temps=0;
    }
  }
  
  micro.update();
  microNiveau = micro.get();
  visage.update();

  monster.drawScale();
}

// --------------------------------------------------------
void keyPressed()
{
  if (keyCode == RIGHT)
  {
    monsterIndex = (monsterIndex+1)%monstres.size();
    if (monster != null) monster.stop();
    monster = monstres.get(monsterIndex);
    monster.reset();
  }
  if (key == ' ')
  {
    saveFrame("export_"+monster.name+".jpg");
  }

}
