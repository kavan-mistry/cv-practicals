%butterworth low pass filter

a = imread('E:\matlab files\img4.jpg');
b = rgb2gray(a);
input_image = imnoise(b, 'salt & pepper', 0.02);


[M, N] = size(input_image);
FT_img = fft2(double(input_image));

%assign the order value
n = 2;  %change value according to image

%assign cut-off frequency
d0 = 20; %change value according to image

u = 0:(M-1);
v = 0:(N-1);

idx = find(u>M/2);
u(idx) = u(idx) - M;
idy = find(v>N/2);
v(idx) = v(idx) - N;

[V,U] = meshgrid(v,u);

d = sqrt(U.^2 + V.^2);

H = 1./(1 + (d./d0).^(2*n));

g = H.*FT_img;
output_img = real(ifft2(double(g)));

subplot(2,1,1),imshow(input_image),title('original image');
subplot(2,1,2),imshow(output_img, []),title('butterworth low pass filter image');


