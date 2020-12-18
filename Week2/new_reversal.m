function rev = new_reversal(v)
    if length(v) == 1
        rev = v;
    else
        v_first = new_reversal(v(1:fix(end/2)));  % Reverse the first half of the vector
        v_last = new_reversal(v(fix(end/2)+1:end));  % Reverse the second half of the vector
        rev = [v_last, v_first];
    end
end