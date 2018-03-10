% Funkcja oblicza wartoœæ wyjœcia procesu y o wejœciu u1
% dla podanej charakterystyce statycznej zlinearyzowanej
% w punkcie pracy duty_point
function [y] = SISO_linear(duty_point, u1)
    % Obliczenie wartoœci wyjœcia procesu w duty_point
    y = SISO_nonlinear(duty_point);
    
    % Obliczenie zlinearyzowanego odchylenia od punktu pracy
    y = y + (-0.25*sin(0.5*duty_point) - 0.03*(duty_point^2))*(u1 - duty_point);
end

