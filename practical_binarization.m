a = imread('E:\matlab files\img1.jpg');
b = rgb2gray(a);
subplot(1,3,1),imshow(b),title('original image');

c1 = mean(mean(mean(b)));

d = zeros(size(b));

[r,c] = size(b);

for i = 1:r
    for j = 1:c
        if(a(i,j)<c1)
            d(i,j)=0;
        else
            d(i,j)=1;
        end;
    end;
end;

subplot(1,3,2),imshow(d),title('Manually binarize image');

z = imbinarize(b);
subplot(1,3,3),imshow(z),title('Inbuilt binarize function image');

