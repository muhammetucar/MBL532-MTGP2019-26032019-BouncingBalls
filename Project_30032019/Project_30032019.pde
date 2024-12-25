
int  topSayisi = 5;
float yercekimi = 0.03;
float surtunme = -0.9;
ZiplayanTop[] top = new ZiplayanTop[topSayisi];

void setup()
{
  size(600, 600);
  background(255);
  for (int i = 0; i < topSayisi; i++)
  {
    top[i] = new ZiplayanTop( random(width), random(height), random(30, 70), i, top);
  }
}



void draw()
{
  background(255, 50);
  for (ZiplayanTop z : top)
  {
    z.goruntule();
    z.ilerle();
    
    if (key == CODED) {
    if (keyCode == UP);
    {     
      z.zipla();     //collision detection yapicaz, ne bilmiyorum     
    }
  }
}
}
