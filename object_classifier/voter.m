function [ c ] = voter( PCAset, im)
%tsetsize is 14 for this
%12 for no fruit
tsetsize = 12;
%should be 50 values for windows
wsi = size(im);
windows = wsi(1,1);
distances = zeros(tsetsize,1);
votes = zeros(windows,2);
for i=1:windows
    [votes(i,1),votes(i,2)] = min((euc(PCAset,im(i,:)))');
end
votes(:,2) = floor((votes(:,2)-1)/windows+1);
for i=1:windows
    distances(votes(i,2),1) = distances(votes(i,2),1) + 1/(votes(i,1)+1);
end
[~,c] = max(distances);
end

