# Project 4: Synthesis of AM and FM Signals 

The objective of this project was to learn to how AM (Amplitude Modulated) and FM (Frequency Modulated) signals can be synthesized. 
The resulting signal can be analyzed to show its time-frequency behavior by using the `spectrogram` or `plotspec` operation. In this project, I created a `chirp signal` that shows behavior of frequency modulation and `arpeggio & chords` of F4, A4, C5, and F5

## How does Project 4 work? 

Chirp Signal: 
  1. Using `makeLFMvals.m` and the commented out code that features an example struct for the sinusoid, it's possible to create a FM chirp signal whose frequencies increase over time in a linear fashion. 
  2. The resulting spectrogram of the FM chirp signal is plotted in `Chirp Signal.jpg`. 

Arpeggio & Chords: 
  1. Using `Arpeggio & Chords.m`, it's possible to create an arpeggio and chords through notes of varying starting times and duration. 
  2. The resulting time-frequency spectrogram is plotted in `Arpeggio plotspec.jpg`.

Exponential Frequency Modulation(FM) Signals: 
  1. Using `Exponential_FM_Spectrogram.m`, it's possible to create a signal whose frequency modulates exponentially as time increases. 
  2. The resulting time-frequency spectrogram of the signal is plotted in `Exponential FM Time-Frequency Spectrogram`. 

