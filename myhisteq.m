function Ie = myhisteq( I )
% Function for global histogram equalization
% the input I must be an image
% the output is the equalized image

% RGB check and conversion to grayscale 
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
h = imhist(I);

% calculating the cumulative distribution function
for i = 1:1:256
    sumh(1,i) = sum(h(1:i));
end
for j = 1:1:256
    P(1,j) = (1/(R*C))*sumh(1,j);
end

% creating the transformation function
for k = 1:1:256
    T(1,k) = uint8(255*P(1,k));
end

% creating the final image
Ie = zeros(R,C);
for m = 1:1:R
    for n = 1:1:C
        Ie(m,n) = T(I(m,n)+1);
    end
end
Ie = uint8(Ie);
end

