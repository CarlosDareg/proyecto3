void inicio()
{
  image(presentacion,0,0);
  fill(255,random(255),random(255));
  textSize(80);
  text("México Kombat",100,100);
  
  fill(255);
  textSize(20);
  text("Presiona Enter para un jugar",230,300);
  text("Presiona 0 para salir",230,350);
  
 
  if (key == '0')
  {
    exit();
  }
}


void seleccion()
{
  if(j2==true)
  {
    image(seleccion2,0,0);
  }
  else
  {
    image(seleccion,0,0);
  }
  fill(255);
  textSize(20);
  text("Jugador "+ jugador + " selecciona", 350,150);
  
  carlos.select();
  daniel.select();
  
}


void pelea()
{
  image(back,0,0);
  textSize(20);
  fill(255,0,0);
  text("Vida "+ j1_vida,30,30);
  text("Vida "+ j2_vida,670,30); 
  textSize(30);
  fill(0);
  text("Turno jugador "+ jugador,450,150);
  
  
  carlos.display(100,280);

  daniel.display(550,280);
  
  combate();
  
  
  if(j1_vida <= 0 && a == 2)
  {
    a ++;
    jugador = 2;
  }
  if(j2_vida <= 0 && a == 2)
  {
    a++;
    jugador = 1;
  }
  
  
}


void victoria()
{
  image(presentacion,0,0);
  if(j1_vida <= 0 && jugador == 2 && a == 3)
  {
    daniel.display(350,280);
  }
  
  if(j2_vida <= 0 && jugador == 1 && a == 3)
  {
    carlos.display(350,280);
  }
  
  textSize(40);
  fill(255);
  text("jugador " + jugador + "gana",250,100);
  text("¿Volver a jugar?",250,150);
  fill(random(255),random(255),random(255));
  text("Y/N",330,250);
  
  if(keyPressed)
  {
    if(key == 'y' || key == 'Y')
    {
      a = 1;
      j1 = true;
      j1_vida = 100;
      j2 = false;
      j2_vida = 100;
      jugador = 1;
      kumbia.stop();
    }
    else if(key == 'n' || key == 'N')
    {
      a++;
    }
  }
}


void fin()
{
  image(presentacion,0,0);
  textSize(30);
  fill(255);
  text("Gracias por jugar :D",250,200);
  text("Presiona 0 para salir",240,300);
  if(keyPressed)
  
    if (key == '0')
    {
      exit();
    }
}
