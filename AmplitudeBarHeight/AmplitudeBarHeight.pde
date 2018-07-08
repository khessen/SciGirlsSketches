import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

Module module;

int  scaleDegree;

void setup()
{
  //Set the size of the window
  size(900, 600);
  
  //Create a new module and call the setupModule(int numInputs) method
  module  = new Module(this);
  module.setupModule(1);
}

void draw()
{
  //Draw the background
  background(0);
  
  //Set the bar height to equal the amplitude
  int barHeight = (int) module.getAmplitude(0);
  
  //Set the fill color using the color values from module
  fill(143, 154, 208);
  
  //Draw the bar.  barHeight is negative because the positive y direction is down
  //    so the height must be negative to make the bar go up
  rect(0, height, width, -barHeight); 
}
