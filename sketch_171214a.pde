import processing.sound.*;


PImage[] pic = new PImage[5];
int totalSongs = 2;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;




void setup() {
size (600, 600);
String title = "Music Player";
PFont titleFont;
titleFont = createFont ("Arial-Black", 55); 
rect (125, 70, 360, 85); 
fill (0); 
textAlign (CENTER); 
textFont(titleFont, 60); 
text(title, 305, 135, 45); 




fill(255); 
  pic[1] = loadImage("StopButton.png");
  pic[0] = loadImage("play-button_318-42541.jpg");
  pic[2] = loadImage("FastForwardButton.jpg");
  pic[3] = loadImage("PreviousButton.png");
  pic[4] = loadImage("QuitButton.png");
  rect (190, 522, 50, 50);
  rect (315, 522, 50, 50);
  rect (416, 522, 50, 50);
  rect (92, 522, 50, 50);
  size (600, 600); 
  image(pic[1], 315, 522, 50, 50);
  image(pic[0], 190, 522, 50, 50);
  image(pic[2], 416, 522, 50, 50);
  image(pic[3], 92, 522, 50, 50);
  image(pic[4], 500, 550, 100, 50);
 
  
  
  song[0] = new SoundFile(this, "Lil_Pump_Gucci_Gang.MP3");
  song[1] = new SoundFile(this, "Drake_OneDance_POWER.MP3");
}

void draw() {  
//println ("Mouse X Variaable is " + mouseX);
//println ("Mouse Y Variaable is " + mouseY);


}


void mousePressed () {
  
   if (indexSong < 0 | indexSong >= song.length) {
    if (indexSong < 0) {
      indexSong = 0;
      println("You are pressing the Previous Button a lot \n" +
        "Please press the Next Button or the Play Button.");
      println("Your song number is changed to " + indexSong + ".");
    } else {
      indexSong = song.length - 1;
      println ("You are at the end of the song list, \n" +
        "Press the Previous Song or Play Keys");
      //println("You are pressing the Next Button a lot \n" +
      //"Please press the Back Button or the Play Button.");
      println("Your song number is changed to " + indexSong + ".");
    }
  }
  
  if (mouseX>=500 && mouseX <=600 && mouseY>=550 && mouseY<=600) {
    exit ();
  }
  
  if (mouseX>=315 && mouseX <=600 && mouseY>=522 && mouseY<=600) {
    song[indexSong].stop();
  }

  if (mouseX>=190 && mouseX <=600 && mouseY>=522 && mouseY<=600) {
    song[indexSong].play();
  }
  
  if (mouseX>=315 && mouseX <=600 && mouseY>=522 && mouseY<=600) {
    song[indexSong].stop();
  }
  
   if (mouseX>=416 && mouseX <=600 && mouseY>=522 && mouseY<=600) {
    song[indexSong].stop();
    indexSong = indexSong + 1;
    }
}