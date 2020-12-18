function ABC = voltage(V, R)
    % After analysing the circuit by hand...
    for ii = 1:length(R)
        if R(ii) == 0, R(ii) = eps; end
    end
    
    S = R.^-1;
    
    MS = [(-S(7) - S(1) - S(2)), S(7), 0;
          S(7), (-S(3) - S(7) - S(4) - S(8)), S(8);
          0, S(8), (-S(5) - S(8) - S(6))];
    MI = [-V*S(1); -V*S(3); -V*S(5)];
   
    ABC = MS\MI;
    
end

% function sol = voltage(V,R)
%     % Create the coeffecients matrix
%     M = [ R(2)*R(7) + R(1)*R(2) + R(1)*R(7), -R(1)*R(2),                                                        0;
%           -R(3)*R(4)*R(8),                   R(4)*R(7)*R(8) + R(3)*R(4)*R(8) + R(3)*R(4)*R(7) + R(3)*R(7)*R(8), -R(3)*R(4)*R(7);
%           0,                                 -R(5)*R(6),                                                        R(6)*R(8) + R(5)*R(6) + R(5)*R(8) ];
%     
%     y = V * [R(2)*R(7); R(4)*R(7)*R(8); R(6)*R(8)];
%     % Use the backslash operator to solve the system of linear equations
%     sol = M \ y;
% end