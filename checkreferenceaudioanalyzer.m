function [red]= checkreferenceaudioanalyzer(name)
file=append(name,'.csv');
Directory = which(file,'-all');
out=regexp(Directory,'\','split');
flag=0;
%%
for i=1:length(out)/2
    str=out(i);
    idx(i) = find(strcmp([str{:}], 'onear')); % single line engine
end

%%
for i=1:length(out)/2
    if out{i,1}{1,idx(1)+1}=="HDM-X"
        red=1;
    elseif out{i,1}{1,idx(1)+1}=="HDM1"
        red=2;
    end
 
end

 