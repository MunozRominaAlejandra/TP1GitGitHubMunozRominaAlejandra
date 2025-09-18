private Nave nave;
private ArrayList<Meteorito> meteorito;

public void setup(){
  size(850, 650);
  frameRate(200);
  nave= new Nave(new PVector(width/2, height-50), 200, loadImage("nave.png"));
  meteorito= new ArrayList<Meteorito>();
  meteorito.add(new Meteorito(new PVector(random(0, width), -100), random(100, 300), loadImage("meteorito.png")));
  meteorito.add(new Meteorito(new PVector(random(0, width), -100), random(100, 300), loadImage("meteorito.png")));
  meteorito.add(new Meteorito(new PVector(random(0, width), -100), random(100, 300), loadImage("meteorito.png")));
}

public void draw(){
  background(0);
  nave.display();
  nave.mover();
  nave.disparar();
  for(int i=0; i< meteorito.size(); i++){
    Meteorito m = meteorito.get(i);
    m.display();
    m.mover();
    if(m.getPosicionY() > height+100){
      meteorito.remove(i);
      meteorito.add(new Meteorito(new PVector(random(0, width), -100), random(100, 300), loadImage("meteorito.png")));
    }
  }
}

public void keyPressed(){
  if(key == 'a' || key == 'A'){
    nave.setDireccion(1);
  }
  if(key == 'd' || key == 'D'){
    nave.setDireccion(2);
  }
  if(key == ' '){
    nave.setDireccion(3);
  }
}

public void keyReleased(){
  if(key == 'd' || key == 'D' || key == 'a' || key == 'A' || key == ' '){
    nave.setDireccion(0);
  }
}
