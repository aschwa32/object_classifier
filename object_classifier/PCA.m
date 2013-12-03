function [ coM, mean ] = PCA( M, n )
%each row is different image
%n features to pick
si = size(M);
mean = sum(M)/si(1,1);
for i=1:si(1,1)
    newM(i,:) = M(i,:)- mean;
end

coM = newM'*newM;
[c d e] = svd(coM);



end

