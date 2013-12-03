function [ mag dir ] = pMag( pset,C,t )
si = size(pset);
[row,col] = find(C == max(C(:)));
mag = sum(C)/si(1,1);
dir = (t(pset(row,1),pset(row,2)) + t(pset(row,3),pset(row,4)))/2;
end

