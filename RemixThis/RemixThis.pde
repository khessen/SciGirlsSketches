import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

// This Module is what will give us access to the Code+Chords functions:
Module module;

// This variable will be set to the note that is currently being sung:
int  scaleDegree;


void setup()
{
  // Rather than setting a size(width, height), make it full screen:
  fullScreen();
  
  // Initialize the Module for 6 inputs:
  module  = new Module(this);
  module.setupModule(6);
  
  // Set the colors:
  module.setColor0forAllInputs(120, 5, 75);
  module.setColor1forAllInputs(96, 52, 167);
  module.setColor2forAllInputs(205, 117, 198);
  module.setColor3forAllInputs(117, 172, 198);
  module.setColor4forAllInputs(222, 137, 157);
  module.setColor5forAllInputs(192, 208, 208);
  module.setColor6forAllInputs(143, 154, 208);
  module.setColor7forAllInputs(243, 216, 161);
  module.setColor8forAllInputs(161, 182, 124);
  module.setColor9forAllInputs(224, 221, 192);
  module.setColor10forAllInputs(121, 157, 229);
  module.setColor11forAllInputs(204, 136, 75);
  
  // Set the attack and release values 
  // (not strictly necessary, but they default to 200,
  // so if we want them to be different than that, we need to specify like this):
  module.setAttack(0, 400);
  module.setRelease(0, 600);
}

void draw()
{
  // Set a purple background:
  background(73, 3, 46);

  // Get the current note for input 0:
  scaleDegree  = module.getScaleDegree(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(scaleDegree, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  rect(50, 50, 200, 200);
  
  // For testing purposes, draw the scale:
  module.legend(scaleDegree, 0);

  // ... now do it again for each input:
  scaleDegree  = module.getScaleDegree(1);
  module.setColor(scaleDegree, 1);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  rect(350, 50, 200, 200);
  
  module.legend(scaleDegree, 1);
  
  scaleDegree  = module.getScaleDegree(2);
  module.setColor(scaleDegree, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  rect(650, 50, 200, 200);
  
  module.legend(scaleDegree, 2);

  scaleDegree  = module.getScaleDegree(3);
  module.setColor(scaleDegree, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  rect(50, 350, 200, 200);
  
  module.legend(scaleDegree, 3);

  scaleDegree  = module.getScaleDegree(4);
  module.setColor(scaleDegree, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  rect(350, 350, 200, 200);
  
  module.legend(scaleDegree, 4);

  scaleDegree  = module.getScaleDegree(5);
  module.setColor(scaleDegree, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  rect(650, 350, 200, 200);  
 
  module.legend(scaleDegree, 5);
}
