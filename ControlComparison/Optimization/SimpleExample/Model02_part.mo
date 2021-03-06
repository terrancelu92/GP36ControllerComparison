within ControlComparison.Optimization.SimpleExample;
model Model02_part
  import Optimization;
  extends Optimization.Internal.Icons.Model;
  parameter Real a=1 annotation(Evaluate=False);
  parameter Real b=2 annotation(Evaluate=False);
  Real x1;
  Real x2;
  Modelica.Blocks.Interfaces.RealOutput y=x1
    annotation (Placement(transformation(extent={{96,-10},{116,10}})));
initial equation
  x1 = 3;
  x2 = 0;
  // to be simulated for 5 s.
equation
  der(x1) = x2;
  der(x2) = a*(cos(b*time) - x1 + 3);
  annotation (Icon(graphics));
end Model02_part;
