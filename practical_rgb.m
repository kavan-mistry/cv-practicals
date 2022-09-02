a = imread('E:\matlab files\img1.jpg');
subplot(2,2,1), imshow(a), title('original image');

r = a(:,:,1);
g = a(:,:,2);
b = a(:,:,3);

subplot(2,2,2), imshow(r), title('red channel image');
subplot(2,2,3), imshow(g), title('green channel image');
subplot(2,2,4), imshow(b), title('blue channel image');