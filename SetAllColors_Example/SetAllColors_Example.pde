import beads.*;
import org.jaudiolibs.beads.*;

import codeandchords.Module;

Module module;

int  scaleDegree;

void setup()
{
  size(925, 520);
  
  module  = new Module(this);
  module.setupModule();
  
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
}

void draw()
{
  background(150);
  
  scaleDegree  = module.getScaleDegree(0);
  
  module.legend(scaleDegree, 0);
  
  module.getModuleMenu().runMenu();
}
