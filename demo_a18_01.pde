int currentTime;
int previousTime;
int deltaTime;

Balle b;

void setup () {
  size (800, 600);
  currentTime = millis();
  previousTime = millis();
  
  b = new Balle();
  b.velocity = new PVector (1, 1);
}

void draw () {
  currentTime = millis();
  deltaTime = currentTime - previousTime;
  
  update(deltaTime);
  display();
  
  previousTime = currentTime;
}



/***
  The calculations should go here
*/
void update(int delta) {
  b.update(delta);
}

/***
  The rendering should go here
*/
void display () {
  background(200);
  b.display();
}
