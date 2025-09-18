private Nave nave;
private Meteorito meteorito;

public void setup(){
  size(850, 650);
  frameRate(200);
  nave= new Nave(new PVector(width/2, height-50), 200, loadImage("nave.png"));
}

public void draw(){
  background(0);
  nave.display();
  nave.mover();
}

public void keyPressed(){
  if(key == 'a' || key == 'A'){
    nave.setDireccion(1);
  }
  if(key == 'd' || key == 'D'){
    nave.setDireccion(2);
  }
}

public void keyReleased(){
  if(key == 'd' || key == 'D' || key == 'a' || key == 'A'){
    nave.setDireccion(0);
  }
}
