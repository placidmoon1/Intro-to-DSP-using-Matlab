# Project 3: Synthesis of Sinusoidal Signals: Music and DTMF Synthesis

The objective of this project was to synthesize piano key notes and DTMF (dual tone multi frequency) signals and plot frequency-time spectrograms corresponding to the signals. 

More precisely speaking, in this project, I created a "C-major scale" and a "Touch-Tone Dial Function" (based on the Extended DTMF encoding table for Touch Tone dialing) that creates a DTMF signal unique to a phone number. 

## Project 3 Information 

Creating a C-major scale: 

1. I first created a helper function `key2sinus.m` that converts piano keys to sinusodial signals.
2. Then, using the `Creating & Plotting a C Major Scale.m` I created a spectrogram (`spectrogram` or `plotspec`) and played the C major scale (using `soundsc`) 
3. I plotted the created time-frequency spectrogram in `C-Major Scale Spectrogram.jpg`. 

Creating a DTMF Signal:

1. I created the `DTMFdial.m` code using arrays and vectors to emulate the Extended DTMF encoding table in MatLab. 
2. Using `DTMFdial.m`, I plotted the DTMF signal that the phone number `268073A` produces. 
