%Project 1-1 %Creation of audio file 
audObj1 = audiorecorder(8000,16,1);
disp ('Start speaking.')
recordblocking(audObj1, 5)
disp('End of Recording.')
audio = getaudiodata(audObj1);
audiowrite('Q1.wav', audio, 8000); %name of audio file is Q1. wav
