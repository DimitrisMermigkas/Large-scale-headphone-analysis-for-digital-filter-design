function [ym,normImp] = CreateImp(MagnInterp,num)
FlippedInterp=flip(MagnInterp(1:num-1));
VecMagndB=[MagnInterp(1),MagnInterp(1:num-1),FlippedInterp,MagnInterp(1)];
VecMagnLin=10.^(VecMagndB/20);
Fs=44100;

ph = linspace(0,-180,num);
ph2=fliplr(ph);
VectorPhase=[ph,-ph2];



%% IFFT
Z=VecMagnLin.*exp(1j*VectorPhase);
InvZ=ifft(Z);
RealZ=real(InvZ);
time=0:1/Fs:(length(Z)-1)/Fs;



%% Normilize Impulse
Imp=[RealZ(num+1:end),RealZ(1:num)];
ImpDB=db(abs(Imp));

[Max,idx]=max(Imp);
impulse=Imp(idx-128:idx+128-1);

normImp=impulse./(abs(max(impulse)))*0.8;
[y,ym]=rceps(normImp);
end

