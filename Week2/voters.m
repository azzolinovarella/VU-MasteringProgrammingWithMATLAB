function out = voters(database, varargin)
    % Validation:
    out = database;
    
    if rem(length(varargin), 2) ~= 0; return, end
    
    for ii = 1:2:length(varargin)
        if ~ischar(varargin{ii}) &&  ~isstring(varargin{ii}); return; end
        if ~isnumeric(varargin{ii + 1}); return, end
        if varargin{ii + 1} ~= fix(varargin{ii + 1}); return, end
    end
    
    jj = 1;
    for ii = (length(database) + 1):1:(length(database) + length(varargin)/2)
        out(ii).Name = string(varargin{jj});
        out(ii).ID = double(varargin{jj + 1});
        jj = jj + 2;
    end
end
   