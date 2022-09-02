a = imread('E:\matlab files\img1.jpg');
b = rgb2gray(a);
subplot(1,3,1),imshow(b),title('original image');

[r1,c1] = size(b);
F1 = histogram(b,r1,c1);

subplot(1,3,2),imshow(F1),title('Manual histogram equalization');

subplot(1,3,3),histeq(b),title('Inbuilt histogram equalization');