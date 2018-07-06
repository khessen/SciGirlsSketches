import beads.*;
import org.jaudiolibs.beads.*;

import codeandchords.Module;

Module module;

int  scaleDegree;

void setup()
{
  size(900, 600);
  
  module  = new Module(this);
  module.setupModule(6);
  
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
  
  module.setAttack(0, 400);
  module.setRelease(0, 600);
}

void draw()
{
  background(73, 3, 46);
  
  scaleDegree  = module.getScaleDegree(0);
  module.setColor(scaleDegree, 0);
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  rect(50, 50, 200, 200);
  
  module.legend(scaleDegree, 0);

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
