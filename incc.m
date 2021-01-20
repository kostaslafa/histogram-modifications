function [ Iout ] = incc( I,r1,s1,r2,s2 )
% Function for increasing the contrast
% r1,s1,r2,s2 are parameters of the transformation
% for r1=r2, s1 = 0 and s2 = 255 this transformation return a binary image 

% RGB check and conversion to grayscale 
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
I = double(I);

% assign old brightness values to new based on r1, s1, r2, s2
for i = 1:R
    for j = 1:C
        if (I(i,j)< r1)
            Inew(i,j) = ((s1-0)/(r1-0))*I(i,j);
        end
        if ((I(i,j)>=r1) && (I(i,j)<= r2))
            Inew(i,j) = ((s2 - s1)/(r2 - r1))*(I(i,j) - r1)+ s1;
        end
        if (I(i,j)>r2)
            Inew(i,j) = ((255 - s2)/(255 - r2))*(I(i,j) - r2) + s2;
        end
    end
end
Iout = uint8(Inew);
end
