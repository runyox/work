Particle current;
ArrayList<Particle> snowflake;
void setup()
{
  size(400, 400);
  current = new Particle(width/2, 0);
  snowflake = new ArrayList<Particle>();
}
void draw() {
  translate(width/2, height/2);
  rotate(PI/6);
  //background(27,0,94);
  while (!current.finished()&&!current.intersects(snowflake)) {
    current.update();
  }
  snowflake.add(current);
  current=new Particle(width/2.5, 0);
  for (int i=0; i<6; i++) {
    rotate(PI/3);
    current.show();
    for (Particle p : snowflake) {
      p.show();
    }
    pushMatrix();
    scale(1, -1);
    current.show();
    for (Particle p : snowflake) {
      p.show();
    }
    popMatrix();
  }
}
void keyPressed() {
  if (key == 'r') {
    background(random(255), random(255), random(255));
  }
}
