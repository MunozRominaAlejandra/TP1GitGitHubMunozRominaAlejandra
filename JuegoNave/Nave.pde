class Nave extends GameObject{
  public int direccion;
  public ArrayList<Bala> bala;  
  public Nave(PVector posicion, float velocidad, PImage img){
    super(posicion, velocidad, img);
    direccion= 0;
    bala= new ArrayList<Bala>();
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 90, 90);
    if(direccion == 3){
      bala.add(new Bala(new PVector(this.posicion.x, this.posicion.y), 300, loadImage("bala.png")));
    }
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
  
  public void disparar(){
    for(int i=0; i< bala.size(); i++){
      Bala b = bala.get(i);
      b.display();
      b.mover();
      if(b.getPosicionY() < 0-45){
        bala.remove(i);
      }
    }
  }
  
  public void setDireccion(int direccion) {
    this.direccion = direccion;
  }
}
