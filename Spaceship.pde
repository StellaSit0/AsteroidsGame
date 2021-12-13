class Spaceship extends Floater{
   public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myCenterX=myCenterY=250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
    myColor=255;
  }
  public void hyperspace(){
  myCenterX = (int)(Math.random()*400);
  myCenterY = (int)(Math.random()*400);
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public void setX(double x){
    myCenterX=x;
  }
  public void setY(double y){
    myCenterY=y;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
