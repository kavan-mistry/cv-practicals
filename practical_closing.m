im = imread('E:\matlab files\img7.jpg');
in = rgb2gray(im);
i = imbinarize(in);
subplot(1,3,1),imshow(i),title('original image');

str = getnhood(strel('square',5));

k = dilation(i,~str);
subplot(1,3,2),imshow(k),title('dilated image');

r = erosion(k,~str);
subplot(1,3,3),imshow(r),title('closing image');