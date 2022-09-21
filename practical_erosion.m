a = imread('E:\matlab files\img5.jpg');
b = rgb2gray(a);
c = imbinarize(b);
subplot(1,2,1),imshow(c),title('original image');

d = getnhood(strel('line', 10,90));

m = floor(size(d,1)/2);
n = floor(size(d,2)/2);

e = padarray(c, [m n], 1);

f = false(size(c));

for i=1:size(e,1)-(2*m)
    for j=1:size(e,2)-(2*n)
        
        Temp = e(i:i+(2*m),j:j+(2*n));
        f(i,j) = min(min(Temp-d));
        
    end
end

subplot(1,2,2),imshow(~f),title('Erosion image');