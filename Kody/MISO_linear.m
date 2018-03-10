% Funkcja oblicza wartoœæ wyjœcia procesu y o wejœciach u1,u2
% dla podanej charakterystyce statycznej zlinearyzowanej w 
% punkcie pracy duty_point
function [y] = MISO_linear(duty_point, u1, u2)
    % Pobranie punktu pracy
    duty_u1 = duty_point(1);
    duty_u2 = duty_point(2);
    
    % Obliczenie wartoœci wyjœcia procesu w punkcie pracy
    y = MISO_nonlinear(duty_u1, duty_u2); 
    
    % Obliczenie zlinearyzowanego odchylenia od punktu pracy
    y = y - 10*(u1 - duty_u1) + 15*(duty_u2^2)*(u2 - duty_u2); 
end

