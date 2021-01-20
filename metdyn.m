function [Iout,T] = metdyn( I, p )
% Function for the Raise to Power transformation
% the input I must be an image
% input p is the value of the power
% the output is the processed image


% RGB check and conversion to grayscale 
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
I = double(I);

% creating the transformation function
for i = 2:256;
T(1,i) = 255 * (i/256) .^ p;
end
T(1,1) = 0;

% creating the final image 
for m = 1:1:R
    for n = 1:1:C
       Iout(m,n) = T(1,I(m,n)+1) ;
    end
end

% 2nd way
% g = I ./ 255;
% Iout = uint8(255*g.^p);

Iout = uint8(Iout);

end
