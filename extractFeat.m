function pinakas= extractFeat(col)
load('Features.mat');


for i=1:6
    for j=1:5
        pinakas(i,j)= Spectral_Features{col,1}(i,j);
    end
end
end
