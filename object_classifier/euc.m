function [ oM ] = euc( pM, v )
si = size(pM);
oM = zeros(si(1,1),1);
for i=1:si(1,1)
    oM(i,:) = sqrt(sum((pM(i,:)-v).^2));
end


end

