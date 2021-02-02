function ret = palindrome(text)
    if length(text) == 1
        ret = true;
        return
    elseif length(text) == 2 && text(1) == text(end)
        ret = true;
        return
    end
    
    if text(1) == text(end)
        text = text(2:end-1);
        ret = palindrome(text);
    else
        ret = false;
        return
    end
end