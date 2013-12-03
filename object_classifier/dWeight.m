function [ D ] = dWeight(pset,sigma)
x1 = pset(:,2);
x2 = pset(:,4);
y1 = pset(:,1);
y2 = pset(:,3);

D = ((.4)/sigma)*exp(-((x1-x2).^2+(y1-y2).^2).^(1/2)/(2*sigma));




end

