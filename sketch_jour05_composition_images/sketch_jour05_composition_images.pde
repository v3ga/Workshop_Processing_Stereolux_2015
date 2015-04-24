int w = 1024;
int h = 768;
int wImage = 1024/3;
int hImage = 768/3;
String[] imageNames = {
"export_Alexandre.jpg","export_Baptiste.jpg",
"export_Efflam.jpg","export_Jacques.jpg",
"export_Julien.jpg","export_Laurette.jpg",
"export_Leon.jpg","export_Matteo.jpg",
"export_Noe.jpg","export_Noe2.jpg",
"export_Raphael.jpg","export_Timothee.jpg"
};

PGraphics composition = createGraphics(wImage*3,hImage*4);
size(composition.width,composition.height);
int x=0;
int y=0;
composition.beginDraw();
for (int i=0;i<imageNames.length;i++)
{
  PImage image = loadImage(imageNames[i]);
  composition.image(image,x,y,wImage,hImage);
  
  x+=wImage;
  if (x>=composition.width){
    x = 0;
    y+=hImage;
  }
}
composition.endDraw();

image(composition,0,0,width,height);
