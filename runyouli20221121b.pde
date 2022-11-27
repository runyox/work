
void setup()
{
 
  size(800,600);
  background(255);
}
void draw()
{
  for(int i=0 ;i<10;i++)
  {
    for(int j=0;j<10;j++)
    {
      fill(20*i,20*j,100);
    rect(80*i,80*j,60,60);
    }
  }
    
    
 //for(int i = 0 ; i<200 ; i=i+1)
 //{
 // fill(*i);
  
 // rect(2*i,2*i,142,323);
 //}
  
}
