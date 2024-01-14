function [FreqInterp,MagnInterp,FreqOriginal,MagnOriginal] = interpolation(name,num)
    HEAD=append(name,'.csv');
    filename1=readmatrix(HEAD);
    FreqOriginal=filename1(:,1);                                   %Διαβάζει Συχνότητες
    MagnOriginal=filename1(:,2);                                   %dB
    FreqInterp=linspace(20,19956,num);
    MagnInterp=interp1(FreqOriginal,MagnOriginal,FreqInterp);
end

