class Box
{
  float x;
  float y;
  float w;
  float h;
  float r;
  Body body;
    
  Box()
  {
    //x=x_;
    //y=y_;
    w=16;
    h=16;
    r=8;
    BodyDef bd=new BodyDef();
    bd.type=BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(mouseX,mouseY));
    body = box2d.world.createBody(bd);
       
     CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    //ps.setAsBox(box2dw,box2dh);
    
    FixtureDef fd=new FixtureDef();
    fd.shape=cs;
    fd.density=1;
    fd.friction=0.3;
    fd.restitution=0.7;
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(random(-5,5),random(-5,-5)));
    body.setAngularVelocity(random(-1,1));
  }
  
  void display()
  {
   
    
    Vec2 pos=box2d.getBodyPixelCoord(body);
    float a=body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(175);
    stroke(0);
    rectMode(CENTER);
    ellipse(0,0,r*2,r*2);
    line(0,0,r,0);
    popMatrix();

  }
  
  
  
  
}
