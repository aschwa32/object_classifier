function [ polarM] = polar( M )
%should take in square matrix
si = size(M);
mid = floor(si/2);
polarM = zeros(si);
%r up to (x-mid(1,2))
%r = row
%theta = (column-1)/totalcols*2pi
%totalrows = length of side
%totalcols = same
for i=1:si(1,1)
    for j=1:si(1,2)
        r = i/2;
        t = ((j-1)/si(1,2))*2*pi;
        x = floor(r*cos(t)+mid(1,2)+1);
        if x< 1
            x = 1;
        elseif x > si(1,2)
            x = si(1,2);
        end
        y = floor(r*sin(t)+mid(1,1)+1);
        if y< 1
            y = 1;
        elseif y > si(1,1)
            y = si(1,1);
        end
        polarM(i,j,:) = M(y,x,:);
    end
end
end

