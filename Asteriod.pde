class Asteroid extends Floater{
  //ArrayList<Asteriods>a= new ArrayList<Asteriods>();
  public double rotSpeed;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{-9,10,20,15,0,0};
    yCorners = new int[]{8,10,0,-5,-12,0};
    myCenterX=myCenterY=250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
    rotSpeed = 2.5;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
