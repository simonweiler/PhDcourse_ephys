
%% Ephys course 11.10.2021: Readout traces for Rheobase, IV, Passive, Sag and Ramp (SW 2022)

%you need loadDataFile_wavesurfer.m as dependency and test data in folder
%with  h5 files 

%%  Close all windows and clear all variables
clear all;close all;

%% put directory of folder with data here!!!

exp_folder='C:\Users\simonw\S1-V1 interaction Dropbox\Simon Weiler\Callosal_L6\SWC_stuff\Code_students_2021\JL00001';


%% Read out traces and plot traces 
%search for file format 
list=dir([char(exp_folder) '\*.h5']);
cd(exp_folder);
%create figure 
fig1=figure;set(fig1, 'Position', [200, 200, 2000, 800]);set(gcf,'color','w');
stimtype=[1 6 3 9 5];
for i=1:length(list)
temp=1;
data = loadDataFile_wavesurfer(list(i).name);
traces=[];traces=data.(['sweep_000',num2str(temp)]).analogScans(:,1);
%plot
subplot(round(length(list))/2,round(length(list)/2),i);
plot(traces,'k');box off;ylabel('Membrane Voltage (mV)');
name_stim=list(i).name;
title(name_stim(1:end-8));


%read out sampling rate;
sr=data.header.AcquisitionSampleRate;

%total time in seconds of each recording 
total_length(i)=length(traces)/sr;
end

%aux info about stimuli
iv_aux=data.header.StimulusLibrary.Stimuli.element1.Delegate;
passive_aux=data.header.StimulusLibrary.Stimuli.element6.Delegate;
ramp_aux=data.header.StimulusLibrary.Stimuli.element3.Delegate;
rheobase_aux=data.header.StimulusLibrary.Stimuli.element9.Delegate;
sag_aux=data.header.StimulusLibrary.Stimuli.element5.Delegate;
