# PhDcourse_ephys
Material, code and test data for SWC PhD students

JL00001 and YW0001 are example cells recorded by students, please download 


We recorded the follwing stimuli/trains/pulses:

- Rheobase 
- IV
- Passive
- Sag
- Ramp

TASK: students should use the funcitons read_wavesurfer_file_example and loadDataFile_wavesurfer.m to read out traces. 
and compute the following passive and active intrinsic properties 

- Resting membrane potential (Vrest, mV): The membrane potential measured after break-in (use IV).
- Input resistance, RIN (MΩ): Estimated by the linear fit of the I-ΔV curve (using subthreshold de- and hyperpolarizing pulses in Passive stimulus).
- Membrane time constant, τm (ms): This was estimated using an exponential fit to the recovery of the voltage response following hyperpolarizing step currents (Passive)
- Rheobase (pA): The minimum current amplitude of infinite duration required for action potential generation. Measured by depolarizing current pulses (Rheobase pulse)
- Sag in percentage (Sag ratio): 100((V_ss-V_min)/(V_rest-V_min )), where Vss is the voltage at steady-state, Vrest the resting membrane potential and Vmin the minimum     voltage reached during hyperpolarizing current injections of -300 pA.  
-	Minimal membrane voltage during Afterhyperpolarization (APVmin): This was estimated as the membrane potential minimum during the period of the AHP (Rheobase).
-	Peak membrane voltage of action potential (APVpeak, Rheobase).
- Threshold voltage at action potential initiation (APVthresh, Rheobase).
- Maximal amplitude of AHP (AHP): It was measured as the difference between the APVthresh and APVmin (APV)
- Max. Spike frequency, APfreqmax (Hz): The maximum action potential number evoked by step-current injections divided by the pulse duration. 




