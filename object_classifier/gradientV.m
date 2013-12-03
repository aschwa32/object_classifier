function [ R t ] = gradientV( dX,dY )
C = 1 + (dX.^2 + dY.^2).^(1/2);
D = dY./dX;
R = log(C);
E = repNVals(D);
t = atan(E);

end

