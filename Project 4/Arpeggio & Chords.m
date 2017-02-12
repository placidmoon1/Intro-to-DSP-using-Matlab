keynum = [45, 49, 52, 57, 52, 49, 45]; %key numbers for creating an arpeggio & chords
amps = ones(1,length(keynum));
freq = []; %initialize
tStart = []; %initialize
fs = 4000; %sampling rate is 4000Hz 
tt = zeros (1, 4000*2.5+1); %initailzing time vector of duration 2.5s
for i = 1:length(keynum)
    freqKey = 440*(2^((keynum(i)-49)/12));
    freq = [freq freqKey];
end  
for i = 1:length(keynum)
    time = 0.25*(i-1); 
    tStart = [tStart time]; 
end 
dur = [0.2, 0.2, 0.2]; %first three notes have dur of 0.2s
for i = 4:length(keynum)
    duration = 2.4 - tStart(i); %plays until 2.4s
    dur = [dur duration]; %adding duration for 4th - 7th note
end 
for notes = 1:length(amps)
    nStart = round(tStart(notes)*fs)+1; 
    time = 0: 1/fs: dur(notes); 
    xs = amps(notes) * cos( freq(notes)*2*pi*time ); %no phase needed
    nStop = nStart + round(dur(notes)*fs);
    tt(nStart:nStop) = tt(nStart:nStop) + xs;
end 
soundsc(tt, fs)
plotspec(tt, fs, 256); grid on









