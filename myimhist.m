function []= myimhist( I )
% Function for creating the histogram of an image
% the input must be an image
% returns the histogram

% RGB check and conversion to grayscale
[R, C, numberOfColorChannels] = size(I);
if numberOfColorChannels > 1 
    I = rgb2gray(I);
end
I = double(I);

hist= zeros(256,1);
for i=1:1:R
    for j=1:1:C
        for k=0:255
            if I(i,j)==k
                hist(k+1,1)=hist(k+1,1)+1;
            end
        end
    end
end
X(1:256) = 0:255;
stem(X,hist,'MarkerSize',0.1)
end
