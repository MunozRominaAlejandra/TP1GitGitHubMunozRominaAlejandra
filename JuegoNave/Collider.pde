static class Collider{
  public static boolean isCollision1(ArrayList<Bala> bala, Meteorito meteorito){
    for(Bala b : bala){
      float distancia = PVector.dist(b.getPosicion(), meteorito.getPosicion());
      if (distancia < 50) {
        return true;
      }
    }
    return false;
  }
  public static boolean isCollision2(ArrayList<Meteorito> meteorito, Nave nave){
    for(Meteorito m : meteorito){
      float distancia = PVector.dist(nave.getPosicion(), m.getPosicion());
      if (distancia < 65){
        return true;
      }
    }
    return false;
  }
}
