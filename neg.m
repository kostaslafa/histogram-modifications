function In = neg( I )
% Function for creating the negative of an image
% the input must be an image
% the output is the negative image

% RGB check and conversion to grayscale 
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
I = double(I); 

% 1st way (faster)
In = 255-I;

% 2nd way(using transformation function)
% T(1,1:256) = 255:-1:0;
% for m = 1:1:R
%     for n = 1:1:C
%         In(m,n) = T(I(m,n)+1);
%     end
% end

In = uint8(In);
end

