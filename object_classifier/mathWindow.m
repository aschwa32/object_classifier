function [ fim2 ] = mathWindow( im )
si = size(im);
sigma = si(1,1)^2/4;
mid = floor(si/2);
gauss = ones(si);

for i=1:si(1,1)
    for j=1:si(1,2)
        gauss(i,j,:) = .3989*exp(-((i-mid(1,1))^2+(j-mid(1,2))^2)^2/(2*sigma^2))/sigma;
    end
end

%remember gauss will make numbers very small
pim = im;
%pim = polar(im.*gauss*si(1,1)*si(1,2)/1.5);
si = size(pim);
for i=1:si(1,1)
    for j=1:si(1,2)
        gauss(i,j,:) = .3989*exp(-((i-mid(1,1))^2+(j-mid(1,2))^2)^2/(2*sigma^2))/sigma;
    end
end

pim2 = pim.*gauss*si(1,1)*si(1,2)/1.5;
fim = abs(fft(pim2));
fim2 = reshape(fim,1,si(1,1)*si(1,2)*si(1,3));
end

