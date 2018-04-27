import processing.sound.*;

SoundFile kumbia;
SoundFile fight;

SoundFile[] ferra;
int f = 3;
SoundFile[] fua;
int u = 3;
SoundFile[] merga;
int m = 2;
SoundFile canaca;

PImage presentacion;
PImage back;
PImage seleccion;
PImage seleccion2;

PImage ferrasr;
PImage ferrasl;
PImage pollor;
PImage pollol;
PImage fuar;
PImage fual;
PImage canacar;
PImage canacal;
PImage nimergasr;
PImage nimergasl;



float j1_vida;
float j2_vida;

boolean j1;
boolean j2;

personaje carlos;
personaje daniel;

float pp;
int a;
int jugador;

void setup()
{
  size(800,600);
  a = 0;
  jugador = 1;
  pp = random(10);
  
  j1_vida = 100;
  j2_vida = 100;
  
  carlos = new jugador1();
  daniel = new jugador2();
  
  j1 = false;
  j2 = false;
  
  presentacion = loadImage("presentacion.png");
  back = loadImage("fondo.jpg");
  seleccion = loadImage("seleccion.png");
  seleccion2 = loadImage("seleccion2.png");
  
  ferrasr = loadImage("ferras_r.png");
  ferrasl = loadImage("ferras_l.png");
  canacar = loadImage("canaca_r.png");
  canacal = loadImage("canaca_l.png");
  nimergasr = loadImage("nimergas_r.png");
  nimergasl = loadImage("nimergas_l.png");
  fuar = loadImage("fua_r.png");
  fual = loadImage("fua_l.png");
  pollor = loadImage("pollo_r.png");
  pollol = loadImage("pollo_l.png");
  
  kumbia = new SoundFile(this,"kumbia.mp3");
  fight = new SoundFile(this,"fight.mp3");
  
  canaca = new SoundFile(this,"canaca.mp3");
  
  ferra = new SoundFile[f];
  for(int i = 0;i<f;i++)
  {
    ferra[i] = new SoundFile(this, "f" + (i+1) + ".mp3");
  }
  
  fua = new SoundFile[u];
  for(int i = 0;i<u;i++)
  {
    fua[i] = new SoundFile(this, "u" + (i+1) + ".mp3");
  }
  
  merga = new SoundFile[m];
  for(int i = 0; i<m; i++)
  {
    merga[i] = new SoundFile(this, "m" + (i+1) + ".mp3");
  }
  
}

void draw()
{
  switch(a)
  {
    case 0:
    inicio();
    break;
    
    case 1:
    seleccion();
    break;
    
    case 2:
    pelea();
    break;
      
    case 3:
    victoria();
    break;
    
    case 4:
    fin();
    break;
    
    case 5:
    fin();
    break;
    
    default:
    image(presentacion,0,0);
    exit();
    break;
    
  }
  
}


void keyReleased()
{
  if(key == ENTER)
  {
    a ++;
  }
  
}





void combate()
{
  if(keyPressed)
  {
    if( j1 == true)
    {
      if(key == 'z'|| key == 'Z')
      {
        j2_vida -= round(random(10));
        j1 = false;
        j2 = true;
        jugador = 2;
      }
    }
  }
  
  if(keyPressed)
  {
    if(j2 == true)
    {
      if(key == 'm' || key == 'M')
      {
        j1_vida -= round(random(10));
        j1 = true;
        j2 = false;
        jugador = 1;
      }
    }
  }
  
}
