%1.1
A=[0:10 :300]; 

B=ones(10,1) * 5;

C= zeros(2,6);

D= randi([5 10],4,6);

E=D;

E(2:3,:) = C;

F= [ones(8,1) [D ; E] ones(8,1)]; 
%% 1.2
figure
lena = imread("lena.jpg");
imshow(lena);

lenaGray = rgb2gray(lena);
figure
imshow(lenaGray);

figure
mesh(double(lenaGray));

figure
plot(lenaGray(10,:));

figure
subplot(2,2,1);
imshow(lena);
title("Original image");

subplot(2,2,2);
imshow(lenaGray);
title("Grayscale image");

subplot(2,2,3);
mesh(double(lenaGray));
title("Meshf(x,y)");

subplot(2,2,4);
plot(lenaGray(10,:));
title("Intersection");

figure
lenaGray(10,:) = 0;

subplot(2,2,1);
imshow(lena);
title("Original image");

subplot(2,2,2);
imshow(lenaGray);
title("Grayscale image");

subplot(2,2,3);
mesh(double(lenaGray));
title("Meshf(x,y)");

subplot(2,2,4);
plot(lenaGray(10,:));
title("Intersection");

%% 1.3
colours = imread("Colours.jpg");
R = colours(:,:,1);
G= colours(:,:,2);
Blue = colours(:,:,3);
figure
subplot(2,2,1);
imshow(colours);
title("Original Image");

subplot(2,2,2);
imshow(R);
title("Red Channel");

subplot(2,2,3);
imshow(G);
title("Green Channel");

subplot(2,2,4);
imshow(Blue);
title("Blue Channel");

figure
coloursHSB = rgb2hsv(colours);
subplot(2,2,1);
imshow(coloursHSB);
title("Original image");

subplot(2,2,2);
imshow(coloursHSB(:,:,1));
title("Hue Channel");

subplot(2,2,3);
imshow(coloursHSB(:,:,2));
title("Saturation Channel");

subplot(2,2,4);
imshow(coloursHSB(:,:,3));
title("Value Channel");

figure
lenabmp = imread("lena.bmp");
subplot(4,4,1);
imshow(lenabmp);
title("Original RGB image");


subplot(4,4,2);
imshow(lenabmp(:,:,1));
title("Red channel");

subplot(4,4,3);
imshow(lenabmp(:,:,2));
title("Green channel");

subplot(4,4,4);
imshow(lenabmp(:,:,3));
title("Blue Channel");

lenabmpHSV = rgb2hsv(lenabmp);
subplot(4,4,5);
imshow(lenabmpHSV);
title("Original HSB image");


subplot(4,4,6);
imshow(lenabmpHSV(:,:,1));
title("Hue channel");

subplot(4,4,7);
imshow(lenabmpHSV(:,:,2));
title("Saturation channel");

subplot(4,4,8);
imshow(lenabmpHSV(:,:,3));
title("Value Channel");

figure
subplot(1,2,1);
imshow(rgb2lab(lena));

subplot(1,2,2);
imshow(rgb2ycbcr(lena));








