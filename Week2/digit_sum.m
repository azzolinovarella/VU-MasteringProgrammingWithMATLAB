function ret = digit_sum(num)
    last_digit = rem(num, 10);
    other_digits = (num - last_digit)/10;
    if other_digits ~= 0
        ret = last_digit + digit_sum(other_digits);
    else
        ret = num;
    end
end