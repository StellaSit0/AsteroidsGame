Spaceship bob;
ArrayList <Asteroid> mom = new ArrayList <Asteroid> ();
Star[] Sue = new Star[200];
public void setup(){
  size(500,500);
  background(0);
  stroke(255);
  Sue = new Star[125];
  for(int i = 0;i<Sue.length;i++){
    Sue[i]= new Star();
  }
  
  for(int i=0;i<10;i++){
    mom.add(new Asteroid());
  }
  bob = new Spaceship();
}

public void draw(){
  background(0);
  for(int i =0; i<Sue.length;i++){
    Sue[i].show();
  }
  for(int b=0;b<mom.size();b++){
    //fill(0);
    mom.get(b).show();
    mom.get(b).move();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)mom.get(b).getX(),(float)mom.get(b).getY());
    if(d<10){
      mom.remove(b);
    }
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
