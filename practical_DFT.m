% discrete fourier transform

a = imread('E:\matlab files\img4.jpg');
b = rgb2gray(a);
input_image = imnoise(b, 'salt & pepper', 0.02);

[M, N] = size(input_image);
FT_img = fft2(double(input_image));

subplot(2,1,1),imshow(b),title('original image');
subplot(2,1,2),imshow(FT_img),title('DFT image');