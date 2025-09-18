class Meteorito extends GameObject{
  public float tamano;
  public Meteorito(PVector posicion, float velocidad, PImage img){
    super(posicion, velocidad, img);
    tamano= random(50,100);
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, tamano, tamano);
  }
  
  public void mover(){
    posicion.y += (velocidad * Time.getDeltaTime(frameRate));
  }
  
  public float getPosicionY(){
    return posicion.y;
  }
}
