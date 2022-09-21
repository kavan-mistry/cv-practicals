im = imread('E:\matlab files\img8.png');
in = rgb2gray(im);
i = imbinarize(in);
subplot(1,3,1),imshow(i),title('original image');

str = getnhood(strel('line',2,90));

r = erosion(i,~str);
subplot(1,3,2),imshow(r),title('erosion image');

k = dilation(r,~str);
subplot(1,3,3),imshow(k),title('opening image');