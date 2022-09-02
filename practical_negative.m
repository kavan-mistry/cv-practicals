a = imread('E:\matlab files\img1.jpg');
subplot(1,3,1), imshow(a), title('original image');

b = rgb2gray(a);
m = max(max(b));

c = m-b;

subplot(1,3,2), imshow(b), title('gray image');
subplot(1,3,3), imshow(c), title('negative image');