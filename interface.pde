interface personaje
{
  void select();
  void display(int x, int y);
}

class jugador1 implements personaje
{
  int s;
  int xa1,xa2,xb1,xb2,xc1,xc2;
  int ya1,ya2,yb1,yb2,yc1,yc2;
  int fx = round(random(3));
  int fd = round(random(2));
  
  void select()
  {
    {
      if(keyPressed == true)
      {
        if(key == '1')
        {
          s = 'q';
          j1 = false;
          j2 = true;
          jugador = 2;
          ferra[fd].play();
        }
        if(key == '2')
        {
          s = 'w';
          j1 = false;
          j2 = true;
          jugador = 2;
          fua[fd].play();
        }
        if(key == '3')
        {
          s = 'e';
          j1 = false;
          j2 = true;
          jugador = 2;
        }
        if(key == '4')
        {
          s = 'r';
          j1 = false;
          j2 = true;
          jugador = 2;
          merga[fd].play();
        }
        if(key == '5')
        {
          s = 't';
          j1 = false;
          j2 = true;
          jugador = 2;
          canaca.play();
        }
      }
    }
  }
  
  void display(int x, int y)
  {
    switch(s)
    {
      case 'q':
      ferras_p1(x,y);
      break;
      
      case 'w':
      fua_p1(x,y);
      break;
      
      case 'e':
      pollo_p1(x,y);
      break;
      
      case 'r':
      mergas_p1(x,y);
      break;
      
      case 't':
      canaca_p1(x,y);
      break;
      
      default:
      pollo_p1(x,y);
      break;
    }
  }
  
  
  
  
}





//--------------------------------------------------------------------------------------------------------------------jugador 2






class jugador2 implements personaje
{
  int c;
  
  int xa1,xa2,xb1,xb2,xc1,xc2;
  int ya1,ya2,yb1,yb2,yc1,yc2;
  
  int fx = round(random(3));
  int fd = round(random(2));
  
  void select()
  {
      if(keyPressed == true)
      {
        if(key == '6')
        {
          c = 'q';
          j1 = true;
          j2 = false;
          a ++;
          jugador = 1;
          ferra[fd].play();
          fight.play();
          kumbia.play();
        }
        if(key == '7')
        {
          c = 'w';
          j1 = true;
          j2 = false;
          a ++;
          jugador = 1;
          fua[fd].play();
          fight.play();
          kumbia.play();
        }
        if(key == '8')
        {
          c = 'e';
          j1 = true;
          j2 = false;
          a ++;
          jugador = 1;
          fight.play();
          kumbia.play();
        }
        if(key == '9')
        {
          c = 'r';
          j1 = true;
          j2 = false;
          a ++;
          jugador = 1;
          merga[fd].play();
          fight.play();
          kumbia.play();
        }
        if(key == '0')
        {
          c = 't';
          j1 = true;
          j2 = false;
          a ++;
          jugador = 1;
          canaca.play();
          fight.play();
          kumbia.play();
        }
      }
    }
  
  
  void display(int x, int y)
  {
    switch(c)
    {
      case 'q':
      ferras_p2(x,y);
      break;
      
      case 'w':
      fua_p2(x,y);
      break;
      
      case 'e':
      pollo_p2(x,y);
      break;
      
      case 'r':
      mergas_p2(x,y);
      break;
      
      case 't':
      canaca_p2(x,y);
      break;
      
      default:
      pollo_p2(x,y);
      break;
    }
  }
  
  
  
}
