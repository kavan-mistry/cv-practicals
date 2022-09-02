%%log transform image

a = imread('E:\matlab files\img1.jpg');
subplot(1,3,1), imshow(a), title('original image');

b = rgb2gray(a);

v = 0.1;

[r,c] = size(b);

for i = 1:r
    for j = 1:c
        x = double(b(i,j));
        b1(i,j) = v .*log2(1+x);
    end;
end;

subplot(1,3,2), imshow(b), title('gray image');
subplot(1,3,3), imshow(b1), title('log transform image');