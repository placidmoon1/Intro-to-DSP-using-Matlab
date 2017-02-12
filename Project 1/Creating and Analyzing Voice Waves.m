%Project 1-1 %Creation of audio file
audObj1 = audiorecorder(8000,16,1);
disp ('Start speaking.')
recordblocking(audObj1, 5)
disp('End of Recording.')
audio = getaudiodata(audObj1);
audiowrite('Q1.wav', audio, 8000);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Project 1-2 %Segment of 5 periods of the voice file 
xx = audioread('Q1.wav');
ttA= 0.9:1/8000:0.93;
xxA = xx(0.9*8000:1:(0.93)*8000);
plot (ttA, xxA)
grid on;
title('Signal MAGNIFIED (0.9~0.93s) with Average Pitch Period of 49.4ms')
