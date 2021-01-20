close all;
% these demos are using the image Lenna.png
RGB = imread('Lenna.png');
I = rgb2gray(RGB);

% demo for histogram equalization
Ie = myhisteq(I);
figure('Name', 'Histogram equalization)
subplot(3,2,1);
imshow(I)
title('Input image')

subplot(3,2,2);
myimhist(I)
title('Histogram of original image')

subplot(3,2,3);
imshow(Ie)
title('Image after equalization')

subplot(3,2,4);
myimhist(Ie)
title('Histogram after equalization')

Ie1 = histeq(I);
subplot(3,2,5);
imshow(Ie1)
title('Image after MATLAB equalization')

subplot(3,2,6);
myimhist(Ie1)
title('Histogram after MATLAB equalization')

% demo for negative image
In = neg(I);
figure('Name', 'Negative image')
subplot(1,2,1)
imshow(I)
title('Original image')
subplot(1,2,2)
imshow(In)
title('Negative image')

% demo for raise to power operator
[Ip,Tp] = metdyn(I,0.5);
figure('Name', 'Raise to power operator')

subplot(2,3,1);
imshow(I)
title('Original Image')
subplot(2,3,3)
imshow(Ip)
title('Final image')

subplot(2,3,4);
imhist(I)
title('Histogram of original image')
subplot(2,3,5);
plot(Tp)
title('Form of Ô for selected power p')
subplot(2,3,6)
imhist(Ip)
title('Histogram of final image')

% demo for log transformation
[Ilog,Tlog] = logmet(I,1);

figure('Name', 'Log transformation')

subplot(2,3,1);
imshow(I)
title('Original Image')
subplot(2,3,3)
imshow(Ilog)
title('Final image')

subplot(2,3,4);
imhist(I)
title('Histogram of original image')
subplot(2,3,5);
plot(1:256,Tlog)
title('Curve of log function for selected a')
subplot(2,3,6)
imhist(Ilog)
title('Histogram of final image')

% demo for exponential transformation
[Iexp,Texp] = expmet(I,0.1);
figure('Name','Exponential transformation')
subplot(2,3,1);
imshow(I)
title('Original Image')
subplot(2,3,3)
imshow(Iexp)
title('Final image')

subplot(2,3,4);
imhist(I)
title('Histogram of original image')
subplot(2,3,5);
plot(1:256,Texp)
title('Curve of exponential transformation')
subplot(2,3,6)
imhist(Iexp)
title('Histogram of final image')

% demo for the transformation based on Gaussian error function
[Ig,Tg] = gaussmet(I,0.007);
figure('Name','Gaussian transformation')
subplot(2,3,1);
imshow(I)
title('Original Image')
subplot(2,3,3)
imshow(Ig)
title('Final image')

subplot(2,3,4);
imhist(I)
title('Histogram of original image')
subplot(2,3,5);
plot(1:256,Tg)
title('Form of transformation function for selected a')
subplot(2,3,6)
imhist(Ig)
title('Histogram of final image')

% demo for increasing contrast
Inew = incc(I,80,10,140,245);
figure('Name','Increasing contrast')
subplot(2,2,1);
imshow(I)
title('Original image')
subplot(2,2,2)
imshow(Inew)
title('Final image')

subplot(2,2,3);
imhist(I)
title('Histogram of original image')
subplot(2,2,4)
imhist(Inew)
title('Histogram of final image')

% uncomment in order to save the image you want in jpg 
% Equalized image (not from MATLAB command)
% imwrite(Ie, 'Ie.jpg'); 
% negative image
% imwrite(In, 'In.jpg'); 
% image after raise to power operator
% imwrite(Ip, 'Ip.jpg');
% image after log transformation 
% imwrite(Ilog, 'Ilog.jpg');
% image after exponential transformation
% imwrite(Iexp, 'Iexp.jpg');
% image after Gaussian transformation
% imwrite(Ig, 'Ig.jpg');
% Image after increasing contrast 
% imwrite(Inew, 'Inew.jpg');
