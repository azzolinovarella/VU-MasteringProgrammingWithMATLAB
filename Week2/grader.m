function out = grader(hf1, hf2, varargin)
    for ii = 1:length(varargin)
        if ~isequal(hf1(varargin{ii}), hf2(varargin{ii}))
            out = false; return
        end
    end
    out = true;
end