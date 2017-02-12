% generating a C-major scale
xxZero = zeros(1,800); 
sum = [];
real = [];
for i = [40  42  44  45  47  49  51  52]+9
    keynum = i; 
    amp = 15; 
    phase = 0; 
    fsamp = 8000;
    dur = 0.4;
    tt = 0:1/fsamp:6.5+1/fsamp*12;
    [xx] = key2sinus(keynum, amp, phase, fsamp, dur );
    sum = [xxZero xx]; 
    real = [real sum];
end 
fs = 8000; 
spectrogram(real, 1024, [], [], fs, 'yaxis'); 
colorbar;
soundsc(real, 8000)