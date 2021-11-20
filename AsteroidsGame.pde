Spaceship bob;
Star[] Sue = new Star[200];
public void setup(){
  size(500,500);
  //fill(0);
  Sue = new Star[125];
  for(int i = 0;i<Sue.length;i++){
    Sue[i]= new Star();
  }
  bob = new Spaceship();
}

public void draw(){
  background(0);
  for(int i =0; i<Sue.length;i++){
    Sue[i].show();
  }
  bob.move();
  bob.show();
}
public void keyPressed(){
  if(key=='a'||key=='A'){
    bob.turn(15);
  }
  if(key=='d'||key=='D'){
    bob.turn(-15);
  }
  if(key=='j'||key=='J'){
    bob.accelerate(0.1);
  }
  if(key=='l'||key=='L'){
    bob.accelerate(-0.1);
  }
  if(key == ' '){
    bob.setXspeed(0);
    bob.setYspeed(0);
    background(0);
    bob.hyperspace();
   }
}
