function [ P ] = pWeight( pset, alph, t )
si = size(pset);
P = zeros(si(1,1),1);
for i = 1:si(1,1)
    P(i,1) = (1-cos(t(pset(i,1),pset(i,2)) + t(pset(i,3),pset(i,4)) - 2*alph(i))).*(1-cos(t(pset(i,1),pset(i,2)) - t(pset(i,3),pset(i,4))));
end


end

