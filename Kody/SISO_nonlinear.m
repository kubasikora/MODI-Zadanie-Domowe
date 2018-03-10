% Funkcja oblicza warto�� wyj�cia procesu y o wej�ciu u1
% dla podanej charakterystyce statycznej
function [y] = SISO_nonlinear(u)
    y = (cos(0.25*u)).^2  - 0.01*(u.^3) - 0.02;
end