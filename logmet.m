function [Iout,T] = logmet( I, a )
% Function for the log transformation
% the input I must be an image
% a is a parameter of the algorithm
% the output is the processed image


% RGB check and conversion to grayscale 
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
I = double(I); 

b = 255/ log(1+(255*a));

% creating the transformation function
T = zeros(1,256);
for g = 1:1:256
    T(1,g) = round(b * log(1 + (a * g) ));
end
T(1) = 0;
T(256) = 255;

% creating final image
Iout = zeros(R,C);
for m = 1:1:R
    for n = 1:1:C
        if I(m,n)==0
            Iout(m,n) = 0;
        else
            Iout(m,n) = T(I(m,n)+1);
        end
    end
end
Iout = uint8(Iout); 
end
