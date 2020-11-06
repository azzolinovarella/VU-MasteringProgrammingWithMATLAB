function pairs = name_value_pairs(varargin)
    if rem(length(varargin), 2) ~= 0 || isempty(varargin) || ~iscellstr(varargin(1:2:end))
        pairs = {};
        return
    end
    
    pairs = cell(length(varargin)/2, 2);
    jj = 1;
    for ii = 1:(length(varargin)/2)
        pairs{ii} = varargin{jj}; pairs{ii, 2} = varargin{jj+1};
        jj = jj + 2;
    end
end