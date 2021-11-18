Spaceship bob = new Spaceship();
Star[] Sue = new Star[200];
public void settings(){
  size(500,500);
  Sue = new Star[125];
  for(int i = 0;i<Sue.length;i++){
    Sue[i]= new Star();
  }
}

public void draw(){
  background(0);
  for(int i =0; i<Sue.length;i++){
    Sue[i].show();
  }
    if(keyPressed){
      if(key=='a'||key=='A'){
        bob.turn(-10);
      }
      if(key=='a'||key=='A'){
        bob.accelerate(0,2);
      }
      if(key=='h'||key=='H'){
        bob.setXspeed();
      }
  }
  bob.move();
  bob.show();
}

public void keyPressed(){
  if(key=='h'){
    bob.turn(-10);
  }
}
