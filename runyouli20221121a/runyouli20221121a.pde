void setup()//只支持英文符号 执行一次的一次
{
  size(400,500);
  background(0);
  frameRate(300);
}
void draw()
{
  
  fill(random(0,255),random(0,255),random(0,255));
  noStroke();
  ellipse(random(0,400),random(0,500),20,20);
  
}
