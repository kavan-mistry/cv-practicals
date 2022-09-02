function F = generatehistogram(img,x,y)

F = 1:256;

count = 0;

for i = 1:256
    for j = 1:x
        for k = 1:y
            if img(j,k) == i-1
                count = count+1;
            end;
        end;
    end;
    
    F(i) = count;
end;