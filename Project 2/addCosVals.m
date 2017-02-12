function sigOut = addCosVals(cosIn, dur, tstart, dt)
    tt = tstart:dt:tstart+dur;
    ax = [];
    for i = 1:1:length(cosIn)
        xx = abs(cosIn(i).complexAmp)*cos(2*pi*(cosIn(i).freq)*tt+angle(cosIn(i).complexAmp));
        ax = [ax; xx];
    end
    ax = sum (ax);
    sigOut.times = tt; 
    sigOut.values = ax;
    
end 