class ZiplayanTop
{
  //degiskenler
  float X, Y, r;
  float hizX = 0;
  float hizY = 0;
  int id;
  ZiplayanTop[] digerleri;

  ZiplayanTop(float X_, float Y_, float r_, int id_, ZiplayanTop[] digerleri_)
  {
    X = X_;
    Y = Y_;
    r = r_;
    id = id_;
    digerleri = digerleri_;
  }



public void goruntule()
  {
    fill(255, 0, 0);
    ellipse(X, Y, r, r);
}



public void ilerle()
{
    hizY = hizY + yercekimi;
    X = X + hizX;
    Y = Y + hizY;

    if (X > width)
    {
      X = width - r;
      hizX = hizX * surtunme;
    } else if (X < 0)
    {
      X = r;
      hizX = hizX * surtunme;
    }

    if (Y > height)
    {
      Y = height - r;
      hizY = hizY * surtunme;
    } else if (Y < 0)
    {
      Y = r;
      hizY = hizY * surtunme;
    }
}




public void zipla()
{
    for (int i = id +1; i< topSayisi; i++)
    {
      float dx = digerleri[i].X - X;
      float dy = digerleri[i].Y - Y;
      float uzaklik = sqrt(dx * dx + dy * dy);
      float minD = digerleri[i].r/2 + r/2;
      if (uzaklik < minD)
      {
        float aci = atan2(dy, dx);
        float hedefX = X + cos(aci) * minD;
        float hedefY = sin(aci) * minD;
        float ax = (hedefX - digerleri[i].X) * 0.05;
        float ay = (hedefY - digerleri[i].Y) * 0.05;

        hizX = hizX - ax;
        hizY = hizY - ay;
      }
    }
}
  
  
  
}
