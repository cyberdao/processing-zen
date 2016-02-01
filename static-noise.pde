void setup() {
  size(300,300);  
}

void draw() {
  background(255);
  noStroke();
  float f = map( mouseX, 0, width, 0,128 );
  for( int x = 0; x < 60; x++) {
    for( int y = 0; y <60; y++) {
      fill( random( f ) + (128 - f ));
      rect( x*5, y*5, 5, 5);
    }
  }
  filter( BLUR, map( mouseY, 0, height, 0, 4));
}
