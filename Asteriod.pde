class Asteroid extends Floater{
  //ArrayList<Asteriods>a= new ArrayList<Asteriods>();
  public double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-9,10,20,15,0,0};
    yCorners = new int[]{8,10,0,-5,-12,0};
    myCenterX=(Math.random()*400);
    myCenterY=(Math.random()*400);
    myXspeed =(Math.random()*9)-5;
    myYspeed =(Math.random()*9)-5;
    myPointDirection = 0;
    rotSpeed = 2.5;
    //stroke(255);
    myColor=color(150);
    stroke(150);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
