//aids in figuring this out are as follows:
//this was used to help me make the animation and save frames
//https://funprogramming.org/114-How-to-create-movies-using-Processing.html
//this discussion and code from user JR were used to figure out the fading
//this method is not recommended b/c call to createGraphics inside draw() is hard on memory
//https://processing.org/discourse/beta/num_1265045578.html, not recommended
//maybe one of these methods from StackOverflow could be used
//https://stackoverflow.com/questions/9215231/making-a-fading-trail-in-processing
//and of course the documenttation for the language
//https://www.processing.org/reference/

//TODO, perhaps figure out how to do this with other shapes as well, like quads, arcs, and more

//setting up the drawing background and parameters
void setup(){
  size(640,360);
  background(120,15,75);
  frameRate(25);
  noStroke();
  ellipseMode(CENTER);
  rectMode(CENTER);
}

//making the drawings
void draw(){
  
  fill(random(255),random(255),random(255),25); //the "better alternative to using buffers
  rect(width/2,height/2,width,height); //we just draw a rectangle over the screen
  
  if(frameCount % 2 == 0){
    
    //making and placing a random rectangle
    fill(random(255), random(255), random(255)); //makes a random RGB color
    float sz_1 = random(200); //making a variable for the rectangle size
    float sz_2 = random(200); //another variable for rectangle dimensions
    
    //width and height are system variables, and we can use them to randomly place a rect
    rect(random(width), random(height), sz_1, sz_2);
    
  } else if(frameCount % 2 == 1){
    
    //making and placing a random ellipse
    fill(random(255), random(255), random(255)); //makes a random RGB color
    float sz_1 = random(200); //making a variable for the rectangle size
    float sz_2 = random(200); //another variable for rectangle dimensions
    
    //width and height are system variables, and we can use them to randomly place an ellipse
    ellipse(random(width), random(height), sz_1, sz_2);
    
  } else {
    
    //we make a random rectangle if all else fails
    fill(random(255), random(255), random(255)); //makes a random RGB color
    float sz_1 = random(200); //making a variable for the rectangle size
    float sz_2 = random(200); //another variable for rectangle dimensions
    
    //width and height are system variables, and we can use them to randomly place a rect
    rect(random(width), random(height), sz_1, sz_2);
  }
  
  saveFrame("frame-####.jpg"); //saves frame as a jpeg
  
  if(frameCount > 500){ 
    noLoop(); //this breaks us out of the drawing loop
  }
  
}
