abstract class GameObject{
  protected PVector posicion;
  protected float velocidad;
  protected PImage img;
  
  public GameObject(PVector posicion, float velocidad, PImage img){
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.img = img;
  }
  
  public abstract void display();
  public abstract void mover();
}
