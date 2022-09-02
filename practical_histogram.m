a = imread('E:\matlab files\img1.jpg');

b = rgb2gray(a);
subplot(1,3,1),imshow(a),title('original image');

[r,c] = size(b);
F = generatehistogram(b,r,c);

subplot(1,3,2),stem(F),title('Manual histogram');

subplot(1,3,3),imhist(b),title('Inbuilt function histogram');