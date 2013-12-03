function [ op ] = reduceIm( M )
si = size(M);
op = zeros(floor(si(1,1)/2),floor(si(1,2)/2),si(1,3));
for i=1:floor(si(1,1)/2)
    for j = 1:floor(si(1,2)/2)
        for k = 1:si(1,3)
            op(i,j,k) = sum(sum(M(((2*i-1):2*i),((2*j-1):2*j),k)))/4;
        end
    end
end

end

