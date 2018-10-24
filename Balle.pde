class Balle extends GraphicObject {
  float radius = 10.0;
  
  Balle() {
    location = new PVector(random (width), random (height));
    velocity = new PVector();
    acceleration = new PVector();
  }
  
  void update(float deltaTime) {
    
    velocity.add (acceleration);
    
    location.add (velocity);
    acceleration.x = 0;
    acceleration.y = 0;
  }
  
  void display() {
    ellipse (location.x, location.y, radius, radius);
  }
}
