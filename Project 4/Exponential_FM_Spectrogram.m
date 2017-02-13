sigFMexp.Amp = 7.7; %-- Amplitude
sigFMexp.fc = 395; %-- center frequency
sigFMexp.beta = 1.77;%-- FM parameter
sigFMexp.gamma = 5;  %-- FM parameter
sigFMexp.t1 = 0;%-- starting time
sigFMexp.t2 = 3.04; %-- ending time
dt = 4000;
tt = sigFMexp.t1: 1/dt: sigFMexp.t2;
FM = 7.7 * cos (2*pi*(sigFMexp.fc.*tt + sigFMexp.gamma/sigFMexp.beta*exp(sigFMexp.beta*tt)));
plotspec(FM, dt);
soundsc(FM, dt);