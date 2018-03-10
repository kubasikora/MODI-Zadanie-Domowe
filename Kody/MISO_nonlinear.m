% Funkcja oblicza warto�� wyj�cia procesu y o wej�ciach u1,u2
% dla podanej charakterystyce statycznej
function [y] = MISO_nonlinear(u1, u2)
    y = (-10)*u1 + 5*(u2.^3);
end
