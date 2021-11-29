class Surface
{
   ArrayList<Vec2> surface;
   Body body;
   
  Surface()
  {
    surface=new ArrayList<Vec2>();
    surface.add(new Vec2(0,height/2));
    surface.add(new Vec2(width/4,height/2+100));
    surface.add(new Vec2(width/2,height/2-50));
    surface.add(new Vec2(width,height/2));
    ChainShape chain=new ChainShape();
    Vec2[] vertices=new Vec2[surface.size()];
    
    //Convert each vertex to Box2D World coordinates
    for(int i=0;i<vertices.length;i++)
    {
      vertices[i]=box2d.coordPixelsToWorld(surface.get(i));
      
    }
    
    //create the chainshappe with arry of vec2
    
    chain.createChain(vertices,vertices.length);
    
    BodyDef bd=new BodyDef();
    body=box2d.createBody(bd);
    body.createFixture(chain,1);
   
  }
  
  void display()
  {
    
    strokeWeight(1);
    noFill();
    stroke(0);
    beginShape();
    for(Vec2 v : surface)
    {
      vertex(v.x,v.y);
    }
    endShape();
  }
  
  
}
