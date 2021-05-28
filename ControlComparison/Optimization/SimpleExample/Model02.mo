within ControlComparison.Optimization.SimpleExample;
model Model02
  import Optimization;
  extends Modelica.Icons.Example;
  parameter Real a=1
  annotation(Evaluate=False);
  parameter Real b=1
  annotation(Evaluate=False);
  ControlComparison.Optimization.SimpleExample.Model02_part
    model01_part(a=a, b=b) annotation (Placement(transformation(extent={{-60,-30},
            {-40,-10}})));
  Optimization.Criteria.Signals.IntegratedSquaredDeviation integratedSquaredDeviation
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=time*sin(2*
        time) + 3)
    annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
  Modelica.Blocks.Interfaces.RealOutput y
    annotation (Placement(transformation(extent={{96,-10},{116,10}})));
equation
  connect(model01_part.y, integratedSquaredDeviation.u2) annotation (
      Line(
      points={{-39.4,-20},{30,-20},{30,-6},{38,-6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(realExpression.y, integratedSquaredDeviation.u1) annotation (
      Line(
      points={{-39,20},{30,20},{30,6},{38,6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(integratedSquaredDeviation.y, y) annotation (Line(
      points={{61,0},{72.25,0},{72.25,1.16573e-015},{83.5,1.16573e-015},
          {83.5,0},{106,0}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(graphics));
end Model02;
