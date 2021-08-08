within ControlComparison.Optimization.Airside;
function GDL36OptimizationHeating
  import Optimization;
  extends Optimization.Internal.Icons.ExampleFunction;
  /*
 
2 Tuners (a, b), start values = {5, 1}
Box constraints: {-10 ... 10, -10 ... 10}
1  Criterion (y)
 
Optimal Solution = {4, 2}
Criterion at solution = {0}
 
 */
  input Boolean interactive=false annotation(Dialog(tab="Advanced"));
  input Real startTime;
  input Real stopTime;
  output Boolean runOK annotation(Dialog(tab="Advanced", group="Output"));

protected
    Optimization.Internal.Version.V22.ModelOptimizationSetup setup=
        Optimization.Internal.Version.V22.ModelOptimizationSetup(
            modelName="ControlComparison.Testbeds.VAVReheat.Guideline36MPCHeating",
            plotScript="",
            saveSetup=true,
            saveSetupFilename="OptimizationLastRunModel.mo",
            convertSetup=false,
            askForTunerReUse=true,
            tuner=
                Optimization.Internal.Version.V22.Tuner(
                    UseTunerMatrixForDiscreteValues=false,
                    tunerParameters=
                        {   Optimization.Internal.Version.V22.TunerParameter(
                                name="conAHU.TSupSetOcc",
                                active=true,
                                Value=291.15,
                                min=285.15,
                                max=291.15,
                                equidistant=0,
                                scaleToBounds=false,
                                discreteValues=fill(0,0),
                                unit="K"),
                             Optimization.Internal.Version.V22.TunerParameter(
                                name="conAHU.dpStaSet",
                                active=true,
                                Value=50,
                                min=25,
                                max=410,
                                equidistant=0,
                                scaleToBounds=false,
                                discreteValues=fill(0,0),
                                unit="Pa")},
                    tunerMatrix=
                        zeros(0,2)),
            criteria=
                {   Optimization.Internal.Version.V22.Criterion(
                        name="sitEneTotInt.y",
                        active=true,
                        usage=Optimization.Internal.Version.V22.Types.CriterionUsage.Minimize,
                        demand=1,
                        unit=""),
                        Optimization.Internal.Version.V22.Criterion(
                        name="TAirTotDev.y",
                        active=true,
                        usage=Optimization.Internal.Version.V22.Types.CriterionUsage.Minimize,
                        demand=4E-05,
                        unit="")},
            preferences=
                Optimization.Internal.Version.V22.Preferences(
                    optimizationOptions=
                        Optimization.Internal.Version.V22.OptimizationOptions(
                            method=Optimization.Internal.Version.Current.Types.OptimizationMethod.simsa,
                            ObjectiveFunctionType=Optimization.Internal.Version.Current.Types.ObjectiveFunctionType.SumAbs,
                            OptTol=9.9999999999999995e-7,
                            maxEval=1000,
                            evalBestFinal=false,
                            saveBest=true,
                            saveHistory=true,
                            listFilename="OptimizationLog.log",
                            listOn=true,
                            listOnline=true,
                            listIncrement=100,
                            numberOfShownDigits=3,
                            onPlace=true,
                            listTuners=true,
                            GaPopSize=10,
                            GaNGen=100,
                            GridBlock=50),
                    simulationOptions=
                        Optimization.Internal.Version.V22.SimulationOptions(
                            startTime=startTime,
                            stopTime=stopTime,
                            outputInterval=0,
                            numberOfIntervals=500,
                            integrationMethod=Optimization.Internal.Version.V22.Types.IntegrationMethod.Cvode,
                            integrationTolerance=9.9999999999999995e-7,
                            fixedStepSize=0,
                            autoLoadResults=true,
                            useDsFinal=true,
                            translateModel=false,
                            setCriteriaSimulationFailed=true,
                            CriteriaSimulationFailedValue=1e+6,
                            simulationMode=Optimization.Internal.Version.V22.Types.SimulationMode.Single,
                            parallelizationMode=Optimization.Internal.Version.V22.Types.ParallelizationMode.None,
                            numberOfThreads=0,
                            copyFiles=
                            fill("",0)),
                    sensitivityOptions=
                        Optimization.Internal.Version.V22.SensitivityOptions(
                            TypeOfSensitivityComputation=Optimization.Internal.Version.V22.Types.SensitivityMethod.ExternalDifferencesSymmetric,
                            automaticSensitivityTolerance=true,
                            sensitivityTolerance=9.9999999999999995e-7)));

algorithm
    runOK := Optimization.Tasks.ModelOptimization.run22(setup, interactive);
  annotation (preferedView="info", Documentation(info="<html>
<p>
This example demonstrates a model optimization problem with<br>
<br>
2 Tuners, start values = {5, 1}, Box constraints: -10 ... 10<br>
1  Criterion to be minimized<br>
<br> 
Optimal Solution = {4,2}<br>
Criteria at solution = {0}<br>
<br>
The goal of the optimization is to fit the signal of Model01.x to that of Model01.z by tuning the model parameters
Model01.a and Model01.b.
</p>
</html>
"),          __Dymola_interactive=false);
end GDL36OptimizationHeating;
