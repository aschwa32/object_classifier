function [ dx dy ] = gradientM( A )
 
si = size(A);
x2 = zeros(si);
y2 = zeros(si);
x2(1:si(1,1), 1:(si(1,2)-1)) = A(1:si(1,1), 2:si(1,2));
y2(1:(si(1,1)-1), 1:si(1,2)) = A(2:si(1,1), 1:si(1,2));
dx = A-x2;
dy = A-y2;
dx(1:si(1,1), si(1,2)) = 0;
dy(si(1,1), 1:si(1,2)) = 0;

end

