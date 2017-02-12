function [xx,tt] = key2sinus(keynum, amp, phase, fsamp, dur )
% KEY2SINUS Produce a sinusoidal waveform corresponding to a
% given piano key number
%
% usage: xx = key2sinus(keynum, amp, phase, fsamp, dur )
%
% xx = the output sinusoidal waveform
% tt = vector of sampling times
% keynum = the piano keyboard number of the desired note
% amp, phase = sinusoid params
% fsamp = sampling frequency, e.g., 8000, 11025 or 22050 Hz
% dur = the duration (in seconds) of the output note
%
tt = 0:(1/fsamp):dur;
freqKey = 440*(2^((keynum-49)/12)); %<=============== fill in this line
Xphasor = amp * exp(1i*phase); %<=============== fill in this line
xx = real( Xphasor*exp(1i*2*pi*freqKey*tt) );