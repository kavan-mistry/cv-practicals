function f = dilation(i,str)

m = floor(size(str,1)/2);
n = floor(size(str,2)/2);

c = padarray(i,[m,n],1);

d = false(size(i));

for i = 1:size(c,1)-(2*m)
    for j = 1:size(c,1)-(2*n)
        
        Temp = c(i:i+(2*m),j:j+(2*n));
        
        f(i,j) = max(max(Temp-str));
    
    end
end