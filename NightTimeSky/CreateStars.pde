void createStars() {
  //Noticem the code for drawing one or more stars
  float minRadius = width*1/27.7777777777; // Based on 500 width, 20 max, and 2 min radii
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star (random(width), random(height), random(Star.maxRadius-minRadius, Star.maxRadius));
  }
  //Need to change "18"
  float xParameter = random(width);
  float yParameter = random(height);
  float radiusParameter = random(Star.maxRadius-minRadius, Star.maxRadius);
  while (xParameter < radiusParameter || width-xParameter < radiusParameter) {
    xParameter = random(width);
  }
  while (yParameter < radiusParameter || height-yParameter < radiusParameter) {
    yParameter = random(width);
  }
}
