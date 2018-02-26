class luchador 
{
  String nombre;
  int vida;
  int ataque;
  
  luchador (String nombre_, int vida_, int ataque_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    
  }
  
  void display (int px, int py, float e)
  { 
    
    pushMatrix ();
    
      scale (e);
      translate (px,py);
     
    switch (nombre)
    {
      case "Rock":
        piedra ();
      break;
      
      case "Paper":
        papel ();
      break;
      
      case "Scissors":
        tijeras ();
      break;
      
      case "Lizard":
        lagarto ();
      break;
      
      case "Spock":
        spock ();
      break;
      
    }
    
    popMatrix ();
    
    
  }
  
}

class pantalla 
{
  String nombrePantalla;
  
  
  pantalla (String nombrePantalla_)
  {
    nombrePantalla = nombrePantalla_;
  }
  
  void display ()
  {
    switch (nombrePantalla)
    {
      case "Intro":
        pantallaInicio ();
      break;
      
      case "Selection":
        pantallaSeleccion ();
      break;
      
      case "Combat":
        pantallaCombate ();
      break;
      
      case "End":
        pantallaConclusion ();
      break;
    }
    
  }
  
}

luchador piedra1;
luchador papel1;
luchador tijeras1;
luchador lagarto1;
luchador spock1;

luchador piedra2;
luchador papel2;
luchador tijeras2;
luchador lagarto2;
luchador spock2;

luchador jugador1;
luchador jugador2;

pantalla Inicio;
pantalla Seleccion;
pantalla Combate;
pantalla Conclusion;

int contador;
int turno;
boolean seleccionj1, seleccionj2;

int vidaj1, vidaj2;
int ataquej1, ataquej2;
String nombrej1, nombrej2;


void setup ()
{
  size (1000, 800);
  
  contador= 0;
  turno = 0;
  
  piedra1 = new luchador ("Rock", 9, 1);
  papel1 = new luchador ("Paper", 7, 3);
  tijeras1 = new luchador ("Scissors", 8, 1);
  lagarto1 = new luchador ("Lizard", 9, 2);
  spock1 = new luchador ("Spock", 10, 3);
  
  piedra2 = new luchador ("Rock", 9, 1);
  papel2 = new luchador ("Paper", 7, 3);
  tijeras2 = new luchador ("Scissors", 8, 1);
  lagarto2 = new luchador ("Lizard", 9, 2);
  spock2 = new luchador ("Spock", 10, 3);
  
  jugador1 = new luchador (nombrej1, vidaj1, ataquej1);
  jugador2 = new luchador (nombrej2, vidaj2, ataquej2);
  
  Inicio = new pantalla ("Intro");
  Seleccion = new pantalla ("Selection");
  Combate = new pantalla ("Combat");
  Conclusion = new pantalla ("End");
}

void draw ()
{
  Pantallas ();
}

void piedra ()
{
  fill (#CE8A1B);
  noStroke ();
  
  beginShape ();
    
    vertex (490, 0);
    vertex (510, 0);
    vertex (515, 10);
    vertex (525, 10);
    vertex (530, 20);
    vertex (580, 30);
    vertex (610, 50);
    vertex (620, 75);
    vertex (630, 80);
    vertex (635, 100);
    vertex (630, 120);
    vertex (640, 130);
    vertex (670, 160);
    vertex (700, 180);
    vertex (720, 190);
    vertex (730, 210);
    vertex (750, 250);
    vertex (780, 265);
    vertex (785, 270);
    vertex (785, 280);
    vertex (770, 300);
    vertex (790, 320);
    vertex (800, 330);
    vertex (820, 350);
    vertex (825, 355);
    vertex (825, 370);
    vertex (830, 385);
    vertex (825, 390);
    vertex (825, 405);
    vertex (820, 425);
    vertex (800, 440);
    vertex (790, 460);
    vertex (770, 485);
    vertex (785, 500);
    vertex (785, 515);
    vertex (780, 520);
    vertex (750, 535);
    vertex (730, 550);
    vertex (720, 580);
    vertex (700, 595);
    vertex (670, 610);
    vertex (640, 640);
    vertex (630, 660);
    vertex (620, 680);
    vertex (610, 690);
    vertex (580, 720);
    vertex (530, 725);
    vertex (525, 735);
    vertex (515, 745);
    vertex (510, 760);
    vertex (490, 760);
    vertex (480, 760);
    vertex (470, 745);
    vertex (455, 735);
    vertex (440, 725);
    vertex (425, 720);
    vertex (415, 700);
    vertex (400, 685);
    vertex (380, 685);
    vertex (365, 670);
    vertex (340, 670);
    vertex (330, 685);
    vertex (320, 680);
    vertex (280, 685);
    vertex (235, 635);
    vertex (200, 650);
    vertex (150, 635);
    vertex (140, 600);
    vertex (130, 575);
    vertex (120, 565);
    vertex (110, 530);
    vertex (100, 500);
    vertex (90, 475);
    vertex (80, 450);
    vertex (70, 410);
    vertex (60, 385);
    vertex (70, 370);
    vertex (80, 355);
    vertex (90, 350);
    vertex (100, 340);
    vertex (110, 325);
    vertex (120, 300);
    vertex (130, 280);
    vertex (140, 265);
    vertex (150, 250);
    vertex (140, 220);
    vertex (130, 200);
    vertex (120, 190);
    vertex (110, 175);
    vertex (130, 150);
    vertex (140, 135);
    vertex (150, 125);
    vertex (160, 110);
    vertex (230, 120);
    vertex (250, 90);
    vertex (265, 75);
    vertex (255, 60);
    vertex (270, 55);
    vertex (300, 50);
    vertex (330, 20);
    vertex (360, 15);
    vertex (400, 20);
    
  
  endShape ();
 
}

void papel ()
{  
    stroke (0);
    
    fill (255);
  
    for (int x= 0; x<=70; x+=10)
    {
    quad (x+200, x+100, x+700, x+200, x+600, x+700, x+200, x+600);
    }
  
}

void tijeras ()
{
   noStroke ();
  
    fill (200);
    arc (250, 200, 100, 200, radians (90), radians (270));
    arc (300, 200, 100, 200, radians (270), radians (360+90));
  
    fill (#C52CE8);
  
    ellipse (255, 350, 50, 100);
    ellipse (300, 350, 50, 100);
  
    fill (255);
  
    ellipse (255, 350, 25, 50);
    ellipse (300, 350, 25, 50);
 
}

void lagarto ()
{
  noStroke ();
  fill (0, 255, 0);

  beginShape ();
  
    vertex (390, 40); //1
    vertex (460, 90); //2
    vertex (460, 160); //3
    vertex (440, 200); //4
    vertex (440, 240); //5
    vertex (600, 210); //6
    vertex (600, 120); //7
    vertex (570, 90); //8
    vertex (600, 100); //9
    vertex (615, 60); //10 
    vertex (620, 100); //11
    vertex (650, 90); //12
    vertex (630, 120); //13
    vertex (650, 230); //14
    vertex (500, 290); //15
    vertex (440, 440); //16
    vertex (560, 470); //17
    vertex (540, 550); //18
    vertex (600, 570); //19
    vertex (630, 540); //20
    vertex (620, 575); //21
    vertex (660, 585); //22
    vertex (620, 595); //23
    vertex (630, 630); //24
    vertex (600, 590); //25
    vertex (490, 580); //26
    vertex (495, 510); //27
    vertex (390, 510); //28
    vertex (315, 540); //29
    vertex (310, 610); //30
    vertex (250, 700); //31
    vertex (180, 700); //32
    vertex (210, 630); //33
    vertex (215, 675); //34
    vertex (240, 675); //35
    vertex (270, 600); //36
    vertex (270, 510); //37
    vertex (320, 480); //38
    vertex (250, 450); //39
    vertex (210, 500); //40
    vertex (140, 460); //41
    vertex (100, 490); //42
    vertex (120, 450); //43
    vertex (90, 410); //44
    vertex (130, 430); //45
    vertex (140, 390); //46
    vertex (150, 440); //47
    vertex (200, 460); //48
    vertex (220, 390); //49
    vertex (320, 410); //50
    vertex (350, 320); //51
    vertex (210, 290); //52
    vertex (210, 190); //53
    vertex (170, 170); //54
    vertex (210, 170); //55
    vertex (210, 130); //56
    vertex (230, 170); //57
    vertex (260, 150); //58
    vertex (240, 190); //59
    vertex (250, 250); //60
    vertex (360, 250); //61
    vertex (360, 210); //62
    vertex (340, 170); //63
    vertex (330, 110); //64
    vertex (390, 40); //1
    
   endShape ();
}

void spock ()
{    
    noStroke ();

    fill (#FAE188);

    beginShape ();

      vertex (50, 170); //1
      vertex (60, 130); //2
      vertex (90, 120); //3
      vertex (120, 160); //4
      vertex (116, 90); //5
      vertex (126, 50); //6
      vertex (166, 40); //7
      vertex (196, 80); //8
      vertex (246, 310); //9
      vertex (266, 340); //10
      vertex (296, 340); //11
      vertex (316, 300); //12
      vertex (366, 60); //13
      vertex (396, 20); //14
      vertex (436, 30); //15
      vertex (446, 70); //16
      vertex (442, 100); //17
      vertex (472, 60); //18
      vertex (502, 70); //19
      vertex (512, 110); //20
      vertex (462, 500); //21
      vertex (482, 530); //22
      vertex (532, 440); //23
      vertex (572, 420); //24
      vertex (622, 420); //25
      vertex (642, 430); //26
      vertex (642, 450); //27
      vertex (602, 480); //28
      vertex (502, 650); //29
      vertex (396, 690); //30
      vertex (176, 680); //31  
      vertex (100, 550); //32
      vertex (50, 170); //1

    endShape ();

    stroke (0);

    line (120, 160, 166, 360);
    line (442, 100, 386, 360);
  
}

void pantallaInicio ()
{  
  background (0);
  String titulo = "Not your average Rock, Paper, Scissors game";
  fill (255);
  textSize(66);
  textAlign(CENTER,CENTER);
  text (titulo, 90, 20, 800, 200);
  
  String instrucciones = "Presiona 'a' para empezar el juego.";
  fill (255);
  textSize(36);
  textAlign(CENTER,CENTER);
  text (instrucciones, 150, 400, 700, 50);
  
  String cout = " <<Scissors cut paper. Paper covers rock, Rock crushes lizard. Lizard poisons Spock. Spock smashes scissors. Scissors decapitate lizard. Lizard eats paper. Paper disapproves Spock. Spock vaporizes rock. And as it always has been: rock crushes scissors.>>                     - Cooper, Sheldon.";
  fill (255);
  textSize (12);
  textAlign (RIGHT, CENTER);
  text (cout, 550, 600, 400, 200);
  
  keyPressed ();
  if (key == 'a')
  {
    contador += 1;
  }
  
}

void pantallaSeleccion ()
{
  background (0);
  
  if (seleccionj1 && seleccionj2)
  {
    contador += 1;
    turno += 1;
    
  }
  
  String instrucciones = "Seleccionen los luchadores";
  fill (255);
  textSize (66);
  textAlign (CENTER, BOTTOM);
  text (instrucciones, width/2, 100);
  
  String j1 = "JUGADOR 1";
  fill (255);
  textSize (20);
  textAlign (CENTER, TOP);
  text (j1, 250, 130);
  
  String j2 = "JUGADOR 2";
  fill (255);
  textSize (20);
  textAlign (CENTER, TOP);
  text (j2, 800, 130);
  
  piedra1. display (400, 1800, 0.10);
  papel1. display (100, 1800, 0.15);
  tijeras1. display (0, 1300, 0.3);
  lagarto1. display  (110, 3600, 0.15);
  spock1. display (200, 4500, 0.15);
  
  piedra2. display (5800, 1800, 0.10);
  papel2. display (3700, 1800, 0.15);
  tijeras2. display (1800, 1300, 0.3);
  lagarto2. display  (3750, 3600, 0.15);
  spock2. display (3900, 4500, 0.15);
  
  String piedra = "Vida: 9 \nAtaque: 1";
  String papel = "Vida: 7 \nAtaque: 3";
  String tijeras = "Vida: 8 \nAtaque: 1";
  String lagarto = "Vida: 9 \nAtaque: 2";
  String spock = "Vida: 10 \nAtaque: 3";
  
  fill (255);
  textSize (14);
  
  textAlign (LEFT, CENTER);
  
  text (piedra, 160, 210);
  text (papel, 160, 340);
  text (tijeras, 160, 460);
  text (lagarto, 160, 590);
  text (spock, 160, 720);
  
  text (piedra, 720, 210);
  text (papel, 720, 340);
  text (tijeras, 720, 460);
  text (lagarto, 720, 590);
  text (spock, 720, 720);
  
  fill (255, 0, 0);
  textSize (60);
  textAlign (LEFT, CENTER);
  
  text ("q", 280, 200);
  text ("w", 280, 330);
  text ("e", 280, 450);
  text ("r", 280, 580);
  text ("t", 280, 710);
  
  text ("p", 840, 200);
  text ("o", 840, 330);
  text ("i", 840, 450);
  text ("u", 840, 580);
  text ("y", 840, 710);
  
  keyPressed ();
    switch (key)
    {
      case 'q':
        jugador1 = piedra1;
        nombrej1 = piedra1.nombre;
        vidaj1 = piedra1.vida;
        ataquej1 = piedra1.ataque;
        
        seleccionj1 = true;
        
        stroke (255);
        noFill ();
        rect (30, 170, 340, 100);        
      break;
      
      case 'w':
        jugador1 = papel1;
        nombrej1 = papel1.nombre;
        vidaj1 = papel1.vida;
        ataquej1 = papel1.ataque;
        
        seleccionj1 = true;
        
        stroke (255);
        noFill ();
        rect (30, 280, 340, 110);
      break;
      
      case 'e':
        jugador1 = tijeras1;
        nombrej1 = tijeras1.nombre;
        vidaj1 = tijeras1.vida;
        ataquej1 = tijeras1.ataque;
        
        seleccionj1 = true;
        
        stroke (255);
        noFill ();
        rect (30, 410, 340, 110);
      break;
      
      case 'r':
        jugador1 = lagarto1;
        nombrej1 = lagarto1.nombre;
        vidaj1 = lagarto1.vida;
        ataquej1 = lagarto1.ataque;
        
        seleccionj1 = true;
        
        stroke (255);
        noFill ();
        rect (30, 540, 340, 110);
      break;
      
      case 't':
        jugador1 = spock1;
        nombrej1 = spock1.nombre;
        vidaj1 = spock1.vida;
        ataquej1 = spock1.ataque;
        
        seleccionj1 = true;
        
        stroke (255);
        noFill ();
        rect (30, 670, 340, 110);
      break;
      
      case 'p':
        jugador2 = piedra2;
        nombrej2 = piedra2.nombre;
        vidaj2 = piedra2.vida;
        ataquej2 = piedra2.ataque;
        
        seleccionj2 = true;
        
        stroke (255);
        noFill ();
        rect (560, 170, 340, 100);
      break;
      
      case 'o':
        jugador2 = papel2;
        nombrej2 = papel2.nombre;
        vidaj2 = papel2.vida;
        ataquej2 = papel2.ataque;
        
        seleccionj2 = true;
        
        stroke (255);
        noFill ();
        rect (560, 280, 340, 110);
      break;
      
      case 'i':
        jugador2 = tijeras2;
        nombrej2 = tijeras2.nombre;
        vidaj2 = tijeras2.vida;
        ataquej2 = tijeras2.ataque;
        
        seleccionj2 = true;
        
        stroke (255);
        noFill ();
        rect (560, 410, 340, 110);
      break;
      
      case 'u':
        jugador2 = lagarto2;
        nombrej2 = lagarto2.nombre;
        vidaj2 = lagarto2.vida;
        ataquej2 = lagarto2.ataque;
        
        seleccionj2 = true;
        
        stroke (255);
        noFill ();
        rect (560, 540, 340, 110);
      break;
      
      case 'y':
        jugador2 = spock2;
        nombrej2 = spock2.nombre;
        vidaj2 = spock2.vida;
        ataquej2 = spock2.ataque;
        
        seleccionj2 = true;
        stroke (255);
        noFill ();
        rect (560, 670, 340, 110);
      break;
      
    }
  
}

void pantallaCombate ()
{
  background (0);
  
  if (vidaj1 <= 0 || vidaj2 <=0)
  {
    contador += 1;
  }
  
  String titulo = "Luchadores, ¡COMBATAN!";
  fill (255);
  textSize (60);
  textAlign (CENTER, CENTER);
  text (titulo, 500, 30);
  
  String Turno1 = "Jugador 1,\nPresiona la tecla: \nf";
  String Turno2 = "Jugador 2,\nPresiona la tecla: \nj";
 
  if (turno == 1)
  {
    fill (255, 0, 0);
    textSize (40);
    textAlign (CENTER, CENTER);
    text (Turno1, 50, 450, 300, 300);
  }
  
  if (turno == 2)
  {
    fill (255, 0, 0);
    textSize (40);
    textAlign (CENTER, CENTER);
    text (Turno2, 650, 450, 300, 300);
  }
  
  
  switch (turno)
  {
    case 1:
      keyPressed ();
      if (key == 'f')
      {
        vidaj2 -= ataquej1;
        turno = 2;
      }
    break;
    
    case 2:
      keyPressed ();
      if (key == 'j')
      {
        vidaj1 -= ataquej2;
        turno = 1;
      }
    break;
  }
  
  noStroke ();
  
  fill (200);
  
  rect (60, 120, 200, 10, 7);
  rect (700, 120, 200, 10, 7);
  
  fill (255, 255, 0);
  
  rect (60, 120, vidaj1*20, 10, 7);
  rect (700, 120, vidaj2*20, 10, 7);
  
  
  if (jugador1.nombre == "Rock")
  {
    jugador1.display(200, 700, 0.3);
  }
  
  if (jugador2. nombre == "Rock")
  {
    jugador2.display(2200, 700, 0.3);
  }
  
  if (jugador1.nombre == "Paper") 
  {
    jugador1.display(80, 300, 0.4);
  }
  
  if (jugador2. nombre == "Paper")
  {
    jugador2.display(1500, 300, 0.4);
  }
  
  if (jugador1.nombre == "Scissors") 
  {
    jugador1.display(30, 200, 0.6);
  }
  
  if (jugador2.nombre == "Scissors")
  {
    jugador2.display(1100, 200, 0.6);
  }
  
  if (jugador1.nombre == "Lizard")
  {
    jugador1.display(40, 350, 0.4);
  }
  
  if (jugador2. nombre == "Lizard")
  {
    jugador2.display(1700, 350, 0.4);
  }
  
  if (jugador1.nombre == "Spock")
  {
    jugador1.display(100, 400, 0.4);
  }
  
  if (jugador2. nombre == "Spock")
  {
    jugador2.display(1750, 400, 0.4);
  }
  
}

void pantallaConclusion ()
{
  background (0);
  
  String titulo = "Ganador:";
  fill (255);
  textSize (60);
  textAlign (CENTER, CENTER);
  text (titulo, 500, 100);
  
  if (vidaj1 <= 0)
  {
    String gj2 = "Jugador 2";
    fill (255, 0, 0);
    textSize (60);
    textAlign (CENTER, CENTER);
    text (gj2, 500, 200);
    
    switch (nombrej2)
    {
      case "Rock":
        jugador2.display (850, 700, 0.4);
      break;
      
      case "Paper":
        jugador2.display (500, 500, 0.5);
      break;
      
      case "Scissors":
        jugador2.display (450, 300, 0.7);
      break;
      
      case "Lizard":
        jugador2.display (600, 500, 0.5);
      break;
      
      case "Spock":
        jugador2.display (700, 500, 0.5);
      break;
      
    }
    
  }
  
  if (vidaj2 <= 0)
  {
    String gj1 = "Jugador 1";
    fill (255, 0, 0);
    textSize (60);
    textAlign (CENTER, CENTER);
    text (gj1, 500, 200);
    
    switch (nombrej1)
    {
      case "Rock":
        jugador1.display (850, 700, 0.4);
      break;
      
      case "Paper":
        jugador1.display (500, 500, 0.5);
      break;
      
      case "Scissors":
        jugador1.display (450, 300, 0.7);
      break;
      
      case "Lizard":
        jugador1.display (600, 500, 0.5);
      break;
      
      case "Spock":
        jugador1.display (700, 500, 0.5);
      break;
      
    }
    
  }
  
  String instruccion = "Presiona 'm' si quieres volver a jugar";
  fill (255);
  textSize (30);
  textAlign (CENTER, CENTER);
  text (instruccion, 500, 700);
  
  keyPressed ();
  if (key == 'm')
  {
    contador = 0;
    turno = 0;
    seleccionj1 = false;
    seleccionj2 = false;
  }
  
}

void Pantallas ()
{
  switch (contador)
  {
  case 0:
    Inicio.display ();
  break;
  
  case 1:
    Seleccion.display ();
  break;
  
  case 2:
    Combate.display ();
  break;
  
  case 3:
    Conclusion.display ();
  break;
  
  }
  
  if (contador > 3)
  {
    contador = 0;
  }
}