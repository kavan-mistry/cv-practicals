image = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 1 1 1 1 0 0 0 0 0 0 0 0 0;
         0 0 1 1 1 1 0 0 0 0 0 1 0 0 0;
         0 0 1 1 1 1 0 0 0 0 1 1 1 0 0;
         0 0 1 1 1 1 0 0 0 1 1 1 1 1 0;
         0 0 1 1 1 1 0 0 1 1 1 1 1 1 1;
         0 0 1 1 1 1 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 1 1 1 0;
         0 0 0 0 0 0 0 0 0 0 0 1 1 1 0;
         0 0 0 0 0 0 0 0 0 0 0 1 1 1 0;
         0 0 0 1 1 1 0 0 0 0 0 0 0 0 0;
         0 0 0 1 1 1 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

D = [0 0 0 1 0 0 0;
     0 0 1 1 1 0 0;
     0 1 1 1 1 1 0;
     1 1 1 1 1 1 1];

[rd cd] = size(D);
WminusD = zeros(rd+2 , cd+2);

for i = 2:rd+1
    for j = 2:cd+1
        WminusD(i,j) = D(i-1, j-1);
    end
end

AeroD = imerode(image,D);
imagecomp = bitcmp(image,1);
ero2 = imerode(imagecomp,WminusD);
finalImg = bitand(AeroD, ero2);

subplot(1,3,1),imshow(image),title('original image');
subplot(1,3,2),imshow(D),title('figure to find');
subplot(1,3,3),imshow(finalImg),title('hit and miss');