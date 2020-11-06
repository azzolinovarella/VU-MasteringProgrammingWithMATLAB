function new_img = edgy(img)
    Gx = [-1  0  1 
          -2  0  2 
          -1  0  1]; 
        
    Gy = [1  2  1
          0  0  0
         -1 -2 -1];

    new_img = zeros(size(img, 1) - 2, size(img, 2) - 2);
    ii = 1;
    for row = 2 : (size(img, 1) - 1)
        jj = 1;
       for column = 2 : (size(img, 2) - 1)
           A = img((row - 1):(row + 1), (column - 1):(column + 1));
           sx = sum(Gx .* double(A), 'all');
           sy = sum(Gy .* double(A), 'all');
           new_img(ii, jj) = (sqrt(sx^2 + sy^2));
           jj = jj + 1;
       end
       ii = ii + 1;
    end
    new_img = uint8(new_img);
end