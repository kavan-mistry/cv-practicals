a = imread('E:\matlab files\img1.jpg');
subplot(1,3,1), imshow(a), title('original image');

b = rgb2gray(a);

v1 = 0.3;
gem = 0.2;

[m,n] = size(b);

for i = 1:m
    for j = 1:n
        z = double(b(i,j));
        b2(i,j) = v1 .*z^gem;
    end;
end;

subplot(1,3,2), imshow(b), title('gray image');
subplot(1,3,3), imshow(b2), title('power transform image');