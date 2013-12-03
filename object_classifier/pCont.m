function [ C ] = pCont( pset, d, p, r)
si = size(pset);
C = zeros(si(1,1),1);

for i = 1:si(1,1)
    C(i) = d(i)*p(i)*r(pset(i,1),pset(i,2))*r(pset(i,3),pset(i,4));
end


end

