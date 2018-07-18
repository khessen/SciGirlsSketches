import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

Module module;

int  scaleDegree;

void setup()
{
  //Set the size of the window
  fullScreen();
  
  //Create a new module and call the setupModule(int numInputs) method
  module  = new Module(this);
  module.setupModule(1);
}

void draw()
{
  //Draw the background
  background(0);
  
  //Draw the outline of the rectangle used for the volume meter
  noFill();
  strokeWeight(6);
  stroke(100);
  rect(300, 600, 200, -500);
  
  //Draw the title
  fill(255);
  textSize(60);
  text("Volume Detector", 650, 350);
  
  //Draw the loud and quiet indecators
  fill(210);
  textSize(20);
  text("LOUD!!!", 200, 100);
  text("quiet", 200, 600);
  
  //Set the bar height to equal the amplitude
  int barHeight = (int) module.getAmplitude(0);
  
  //Set the fill color
  fill(143, 154, 208);
  
  //Draw the bar.  barHeight is negative because the positive y direction is down
  //so the height must be negative to make the bar go up
  noStroke();
  rect(300, 600, 200, -barHeight/4); 
}
