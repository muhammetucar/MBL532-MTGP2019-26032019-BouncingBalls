
float yercekimi = 0.03;
float surtunme = 0.9;
float rr = 15;

ArrayList<ZiplayanTop> toplar;

void setup()
{
  size(200, 200);
  background(255);
  
  toplar = new ArrayList <ZiplayanTop>();
  toplar.add(new ZiplayanTop (mouseX, mouseY, rr));
  
  

  
}

void draw()
{
 background(255, 50);
 
 
 for (int i = toplar.size() - 1; i >= 0; i--)
 {
   ZiplayanTop z = toplar.get(i);
  // z. zipla();
  z.buyut();
   z.ilerle();
   z.goruntule();
   
 }
 

  
}

void mousePressed()
{
  toplar.add(new ZiplayanTop(mouseX, mouseY, rr));
}
//////////////////////



class ZiplayanTop{
  
  
  //degiskenler
  float X, Y, r;
  float hizX = 0;
  float hizY = 0;
  int id;
  ZiplayanTop[] digerleri;

  
  ZiplayanTop(float X_, float Y_, float r_)
  {
      X = X_;
      Y = Y_;
      r= r_;
  }
  
  
  void goruntule()
  {
    fill(255, 0, 0, 50);
    ellipse(X, Y, r, r);
  }
  
  
  void ilerle()
  {
    hizY = hizY + yercekimi;
    X = X + hizX;
    Y = Y + hizY;
    
    if ( X > width) 
    {
      X = width - r;
      hizX = hizX * surtunme;
      hizX = hizX * -1;
    }
    
    else if (X < 0)
    {
      X = r;
      hizX = hizX * surtunme;
     hizX = hizX * -1;
    }
    
      if ( Y > height)
    {
      Y = height - r;
      hizY = hizY * surtunme;
      hizY = hizY * -1;
    }
    
    else if (Y < 0)
    {
      Y = r;
      hizY = hizY * surtunme;
      hizY = hizY * -1;
    }
    
  }
  
  void buyut()
  {
    
    r = r * 1.005;
    
    if (r > 100)
    { r = 15;
    }
  
  }
  
 
  
  
  
}
