function OptimizationLastRunModel
/* Automatically generated at Fri May 28 16:17:33 2021 */

/* This function needs Optimization library 2.2.3 or higher */

    input Boolean interactive=true annotation(Dialog(tab="Advanced"));
    output Boolean runOK annotation(Dialog(tab="Advanced", group="Output"));
protected
    Optimization.Internal.Version.V22.ModelOptimizationSetup setup=
        Optimization.Internal.Version.V22.ModelOptimizationSetup(
            modelName="ControlComparison.Optimization.SimpleExample.Model02",
            plotScript="",
            saveSetup=true,
            saveSetupFilename="OptimizationLastRunModel.mo",
            convertSetup=false,
            askForTunerReUse=true,
            tuner=
                Optimization.Internal.Version.V22.Tuner(
                    UseTunerMatrixForDiscreteValues=false,
                    tunerParameters=
                        {
                            Optimization.Internal.Version.V22.TunerParameter(
                                name="a",
                                active=true,
                                Value=5,
                                min=-10,
                                max=10,
                                equidistant=0,
                                scaleToBounds=false,
                                discreteValues=fill(0,0),
                                unit=""),
                            Optimization.Internal.Version.V22.TunerParameter(
                                name="b",
                                active=true,
                                Value=1,
                                min=-10,
                                max=10,
                                equidistant=0,
                                scaleToBounds=false,
                                discreteValues=fill(0,0),
                                unit="")
                        },
                    tunerMatrix=
                        zeros(0,2)),
            criteria=
                {
                    Optimization.Internal.Version.V22.Criterion(
                        name="y",
                        active=true,
                        usage=Optimization.Internal.Version.V22.Types.CriterionUsage.Minimize,
                        demand=1,
                        unit="")
                },
            preferences=
                Optimization.Internal.Version.V22.Preferences(
                    optimizationOptions=
                        Optimization.Internal.Version.V22.OptimizationOptions(
                            method=Optimization.Internal.Version.V22.Types.OptimizationMethod.sqp,
                            ObjectiveFunctionType=Optimization.Internal.Version.V22.Types.ObjectiveFunctionType.Max,
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
                            startTime=20,
                            stopTime=25,
                            outputInterval=0,
                            numberOfIntervals=500,
                            integrationMethod=Optimization.Internal.Version.V22.Types.IntegrationMethod.Dassl,
                            integrationTolerance=9.9999999999999995e-7,
                            fixedStepSize=0,
                            autoLoadResults=true,
                            useDsFinal=true,
                            translateModel=false,
                            setCriteriaSimulationFailed=true,
                            CriteriaSimulationFailedValue=1e+6,
                            simulationMode=Optimization.Internal.Version.V22.Types.SimulationMode.Multi,
                            parallelizationMode=Optimization.Internal.Version.V22.Types.ParallelizationMode.None,
                            numberOfThreads=0,
                            copyFiles=
                            fill("",0)),
                    sensitivityOptions=
                        Optimization.Internal.Version.V22.SensitivityOptions(
                            TypeOfSensitivityComputation=Optimization.Internal.Version.V22.Types.SensitivityMethod.ExternalDifferencesSymmetric,
                            automaticSensitivityTolerance=true,
                            sensitivityTolerance=9.9999999999999995e-7)))
    ;
algorithm
    runOK := Optimization.Tasks.ModelOptimization.run22(setup, interactive);
    annotation(__Dymola_interactive=true);
end OptimizationLastRunModel;
