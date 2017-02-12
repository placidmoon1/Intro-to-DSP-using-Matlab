%Project 1-2 %Plotting the Voice File (voice file, denoted as Q1.wav) 
xx = audioread('Q1.wav');
xx = xx(1+0.6*8000:8000*1.4+0.6*8000)
tt = 0:1/8000:1.4-1/8000,
plot (tt, xx);
grid on; 
title('Original Signal');

%Project 1-3 %Extracting segment of 5 periods of the voice file 
xx = audioread('Q1.wav');
ttA= 0.9:1/8000:0.93;
xxA = xx(0.9*8000:1:(0.93)*8000);
plot (ttA, xxA)
grid on;
title('Signal MAGNIFIED (0.9~0.93s) with Average Pitch Period of 49.4ms')
