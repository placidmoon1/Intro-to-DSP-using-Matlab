function xx = DTMFdial(keyNames,fs)
%DTMFDIAL Create a signal vector of tones that will dial
% a DTMF (Touch Tone) telephone system.
%
% usage: xx = DTMFdial(keyNames,fs)
% keyNames = vector of CHARACTERS containing valid key names
% fs = sampling frequency (1/Ts)
% xx = signal vector that is the concatenation of DTMF tones.
%
TTkeys = ['1','2','3','A';
    '4','5','6','B';
    '7','8','9','C';
    '*','0','#','D'];
TTcolTones = [1209,1336,1477,1633]; %-- in Hz
TTrowTones = [697,770,852,941];
numKeys = length(keyNames);
durDualTone = 0.18; %-- in seconds
LenDualTone = 0:1/fs:0.18;
durSilence = 0.048;
LenSilence = length(keyNames)-1;
Silence = zeros(1,round(0.048*fs));
xx = [];%- initialize xx to be long enough to hold the entire output
n1 = 1;
for kk=1:numKeys
    [row,col] = find(TTkeys==keyNames(kk));
    key = cos(2*pi*LenDualTone*TTcolTones(col))+cos(2*pi*LenDualTone*TTrowTones(row));
    xx = [xx key Silence];
end
plotspec(xx,fs); grid on
soundsc(xx,fs);