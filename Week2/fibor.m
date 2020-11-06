function ret = fibor(n)
    if n <= 2
        ret = [1, 1];
    else
        ret = [fibor(n-1), values_fib(n)];
    end
end 
function ret = values_fib(n)
        if n <= 2
            ret = 1;
        else
            ret = values_fib(n-2) + values_fib(n-1);
        end
end 