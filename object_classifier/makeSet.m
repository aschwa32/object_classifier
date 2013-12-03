function [ pset ] = makeSet( M, x, y )
si = size(M);
up = y - 1;
down = si(1,1) - y;
left = x - 1;
right = si(1,2) - x;

if up >= down
    ysi = down;
else
    ysi = up;
end

if left >= right
    xsi = right;
else
    xsi = left;
end

pnum = ysi*xsi*2+(ysi+xsi);

pset = zeros(pnum, 4);
i=1;
for j = 1:(xsi +1)
    for k = 1:(2*ysi+1)
        if (y-ysi+k-1) ~= y || (x-xsi + j - 1) ~= x
           pset(i, :) = [(y-ysi+k-1) (x-xsi + j - 1)  (y+ysi-k+1) (x+xsi - j + 1) ];
           i = i+1;
        end
    end
end


end

