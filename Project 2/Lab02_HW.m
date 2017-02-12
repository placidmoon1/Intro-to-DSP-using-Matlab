close all
clear all
num_sinusoid = [50 10]; %changed from [1 3 5 10] to [50 10] to portray Sum of 50 sinusoids on the left and 10 sinusoids on the right.
f0 = 2; %fundamental freq = 1 Hz
for jj = 1:length(num_sinusoid)
    clear cosIn
    for kk = 1:num_sinusoid(jj) %calculate the freq and amp of each harmonic
        cosIn(kk).freq = kk*f0;
        cosIn(kk).complexAmp = (1-(-1)^kk)/pi/kk*exp(1j/2*pi);
    end
    dur = 3;
    dt = 0.002; %dt changed from 0.05 to 0.002 for more sample size in period 
    tstart = 0;
    a(jj) = addCosVals(cosIn, dur, tstart, dt);
    subplot(1,2,jj) %changed from subplot (2,2,jj) to (1,2,jj) to portray only 2 subplots rather than 4. 
    plot(a(jj).times, a(jj).values)
    title(sprintf('Sum of %d sinusoids',num_sinusoid(jj)))
end

