class Boundry
{
  Body b;
  
  float x;
  float y;
  float w;
  float h;

  
  
  Boundry(float x_,float y_,float w_,float h_)
  {
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    BodyDef bd=new BodyDef();
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    bd.type=BodyType.STATIC;
    b=box2d.createBody(bd);    
    
    PolygonShape ps=new PolygonShape();
    float box2dw=box2d.scalarPixelsToWorld(w/2);
    float box2dh=box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(box2dw,box2dh);
    
    b.createFixture(ps,1);
    
  }
  
  void display()
  {
   
    fill(0);
    stroke(0);
    rectMode(CENTER);
    rect(x,y,w,h);
  
  }
  
}
