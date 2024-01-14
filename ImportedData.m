function Results=ImportedData(Imp,Fs)

load('mid.mat')
load('topoct.mat')
load('treble.mat')
load('low.mat')

temp1=filter(low,Imp);
temp2=filter(mid,Imp);
temp3=filter(treble,Imp);
temp4=filter(topoct,Imp);

data=periodogram(Imp);
data1=periodogram(temp1);
data2=periodogram(temp2);
data3=periodogram(temp3);
data4=periodogram(temp4);



Results(3,1) = FeatureSpectralFlatness(data,Fs);
Results(3,2) = FeatureSpectralFlatness(data1,Fs);
Results(3,3) = FeatureSpectralFlatness(data2,Fs);
Results(3,4) = FeatureSpectralFlatness(data3,Fs);
Results(3,5) = FeatureSpectralFlatness(data4,Fs);



Results(1,1) = FeatureSpectralCentroid(data,Fs);
Results(1,2) = FeatureSpectralCentroid(data1,Fs);
Results(1,3) = FeatureSpectralCentroid(data2,Fs);
Results(1,4) = FeatureSpectralCentroid(data3,Fs);
Results(1,5) = FeatureSpectralCentroid(data4,Fs);

Results(2,1) = FeatureSpectralSpread(data,Fs);
Results(2,2) = FeatureSpectralSpread(data1,Fs);
Results(2,3) = FeatureSpectralSpread(data2,Fs);
Results(2,4) = FeatureSpectralSpread(data3,Fs);
Results(2,5) = FeatureSpectralSpread(data4,Fs);

Results(5,1) = FeatureSpectralKurtosis(data,Fs);
Results(5,2) = FeatureSpectralKurtosis(data1,Fs);
Results(5,3) = FeatureSpectralKurtosis(data2,Fs);
Results(5,4) = FeatureSpectralKurtosis(data3,Fs);
Results(5,5) = FeatureSpectralKurtosis(data4,Fs);

Results(6,1) = FeatureSpectralSkewness(data,Fs);
Results(6,2) = FeatureSpectralSkewness(data1,Fs);
Results(6,3) = FeatureSpectralSkewness(data2,Fs);
Results(6,4) = FeatureSpectralSkewness(data3,Fs);
Results(6,5) = FeatureSpectralSkewness(data4,Fs);


Results(4,1) = FeatureSpectralRolloff(data,Fs);
Results(4,2) = FeatureSpectralRolloff(data1,Fs);
Results(4,3) = FeatureSpectralRolloff(data2,Fs);
Results(4,4) = FeatureSpectralRolloff(data3,Fs);
Results(4,5) = FeatureSpectralRolloff(data4,Fs);