function ret = fibor(n)
    if n <= 2
        ret = ones(1, n);
    else
        aux = fibor(n - 1);
        ret = [aux, aux(end-1) + aux(end)];
    end
end