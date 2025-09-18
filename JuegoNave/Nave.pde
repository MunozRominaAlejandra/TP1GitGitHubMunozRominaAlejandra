class Nave extends GameObject{
  public int direccion;
  
  public Nave(PVector posicion, float velocidad, PImage img){
    super(posicion, velocidad, img);
    direccion= 0;
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 90, 90);
  }
  
  public void mover(){
    switch(direccion){
      case 1: {
        if(posicion.x > 45){
          posicion.x -= (velocidad * Time.getDeltaTime(frameRate));
          break;
        }
      }
      case 2: {
        if(posicion.x < (width-45)){
          posicion.x += (velocidad * Time.getDeltaTime(frameRate));
          break;
        }
      }
    }
  }
  
  public void disparar(Bala bala){
  }
  
  public void setDireccion(int direccion) {
    this.direccion = direccion;
  }
}
