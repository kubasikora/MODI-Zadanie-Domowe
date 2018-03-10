% Skrypt execute.m wykonuje wszystkie skrypty potrzebne do przeprowadzenia
% eksperymentu dla zadania domowego z przedmiotu MODI - Modelowanie i 
% Identyfikacja 

% Zadanie a)
disp('Wykonuje skrypt nonlinear_figures.m');
nonlinear_figures
a = input('Wci�nij ENTER aby przej�� dalej...');

% Zadanie c) cz�� pierwsza
disp('Wykonuje skrypt SISO_linear_figures.m');
SISO_linear_figures
a = input('Wci�nij ENTER aby przej�� dalej...');

% Zadanie c) cz�� druga
disp('Wykonuje skrypt MISO_linear_figures.m');
MISO_linear_figures