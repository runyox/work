Circle cl;
int num=100;
Circle[] cls;

int connections;

void setup() {
  size(800, 800);
  initiateData();
  //float x=random(width);
  //float y=random(height);
  //float d=random(50, 100);
  //color c =color(random(0, 255), random(0, 255), random(0, 255));
  //cl=new Circle(x, y, d, c);
}


//  for (int i = 0; i<cls.length; i++) {
//    float d=random(5, 50);
//    float y=random(d/2, height-d/2);
//    float x=random(d/2, width-d/2);
//    color c =color(random(0, 255), random(0, 255), random(0, 255));
//    cls[i]=new Circle(x, y, d, c);
//  }
//}
void initiateData () {
  cls=new Circle[num];
  for (int i = 0; i < cls.length; i++) {
    float d=random(5, 50);
    float y=random(d/2, height-d/2);
    float x=random(d/2, width-d/2);
    color c =color(random(0, 255), random(255), random(255));
    cls[i]=new Circle (x, y, d, c);
  }
}
void draw() {
  background(0);
  connections=0;
  //cl.drawCircle();
  for (int i = 0; i<cls.length; i ++ ) {
    cls[i].drawCircle();
  }
  for (int i = 0; i<cls.length; i++) {
    for (int j = 0; j<cls.length; j++) {
      float dcc=dist(cls[i].x, cls[i].y, cls[j].x, cls[j].y);
      if (dcc>0 && dcc<100) {
        strokeWeight(1);
        stroke(200, 0, 255);
        line(cls[i].x, cls[i].y, cls[j].x, cls[j].y);

        connections ++;
      }
    }
  }
  fill(255);
  text("connections: " +connections, 50, 50);
}
void keyPressed() {
  if (key == 'r') {
    initiateData();
  }
}
