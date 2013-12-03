function [ slopes ] = angles( pset )
x1 = pset(:,2);
x2 = pset(:,4);
y1 = pset(:,1);
y2 = pset(:,3);

slopes = atan((y2-y1)./(x2-x1));



end

