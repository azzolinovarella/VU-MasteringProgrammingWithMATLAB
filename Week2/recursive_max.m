function mx = recursive_max(v)
    if length(v) == 1
        mx = v;
    elseif length(v) == 2
        if v(1) > v(2), mx = v(1); else, mx = v(2); end
    else
        if v(1) > v(2)
            v = [v(1), v(3:end)];
            mx = recursive_max(v);
        else
            v = [v(2), v(3:end)];
            mx = recursive_max(v);
        end
    end
end

%{
function mx = recursive_max(v)
    v = [v, -inf, -inf];
    if v(1) > v(2) && v(3) ~= -inf
        v = [v(1), v(3:end)];
        mx = recursive_max(v);
    elseif  v(1) < v(2) && v(3) ~= -inf
        v = [v(2), v(3:end)];
        mx = recursive_max(v);
    elseif v(3) == -inf
        if v(1) > v(2)
            mx = v(1);
        else
            mx = v(2);
        end
    end
end
%}
