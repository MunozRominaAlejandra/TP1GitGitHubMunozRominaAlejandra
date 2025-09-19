class Bala extends GameObject{
  public Bala(PVector posicion, float velocidad, PImage img){
    super(posicion, velocidad, img);
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 20, 20);
  }
  
  public void mover(){
    posicion.y -= (velocidad * Time.getDeltaTime(frameRate));
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
}
