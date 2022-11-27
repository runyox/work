Circle cl;
int num=1000;
Circle[] cls;

void setup() {
  size(800, 800);
  //float x=random(width);
  //float y=random(height);
  //float d=random(50, 100);
  //color c =color(random(0, 255), random(0, 255), random(0, 255));
  //cl=new Circle(x, y, d, c);
  cls=new Circle[num];
  
  for (int i = 0;i<cls.length;i++) {
    float d=random(5,50);
  float y=random(d/2,height-d/2);
  float x=random(d/2,width-d/2);
  color c =color(random(0, 255), random(0, 255), random(0, 255));
  cls[i]=new Circle(x, y, d, c);
  }
}
void draw() {
  background(0);
  //cl.drawCircle();
   for (int i = 0;i<cls.length;i++) {
   cls[i].drawCircle();
   }
  
}
