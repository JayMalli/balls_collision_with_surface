ArrayList <Boundry> boundries;
ArrayList <Box> boxes;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
Box2DProcessing box2d;
//Surface surface;

void setup()
{
  size(640,360);
  box2d=new Box2DProcessing(this);
  box2d.createWorld();
  boxes=new ArrayList<Box>();
  boundries=new ArrayList<Boundry>();
  //surface=new Surface();
  //add boundries
  boundries.add(new Boundry(175,height-175,width/3,10));
  boundries.add(new Boundry(width-250,height-90,width/3,10));
}

void draw()
{
  background(255);
  box2d.step();
  //surface.display();
  if(mousePressed)
  {
     Box p=new Box();
     boxes.add(p);
  }
  
  for(Boundry walls : boundries)
  {
     walls.display();  
  }
  
  for(Box b: boxes)
  {
    b.display();
    
  }
  
 
}
