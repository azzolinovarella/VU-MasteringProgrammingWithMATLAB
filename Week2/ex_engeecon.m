opengl software
clear;clc

CF0 = -500;
v_CFj = 150;

i = 0:0.0001:1;

VPL = zeros(1, length(i));
for index = 1:length(i)
    CFj = 0;
    for n = 1:8
        CFj = CFj + v_CFj/((1 + i(index))^n);  
    end
    VPL(index) = CF0 + CFj;
end


figure
hold on
grid on
xlabel 'i%'
ylabel 'VPL'
title 'VPL(i)'
plot(i*100, VPL)
plot(i(VPL == min(abs(VPL)))*100, VPL(VPL == min(abs(VPL))), 'r*')
legend('VPL(i)', 'TIR')
hold off

fprintf("A TIR é aproximadamente %2.2f%%", 100*i(VPL == min(abs(VPL))))
fprintf("\n")
