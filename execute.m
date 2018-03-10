% Skrypt execute.m wykonuje wszystkie skrypty potrzebne do przeprowadzenia
% eksperymentu dla zadania domowego z przedmiotu MODI - Modelowanie i 
% Identyfikacja 

% Zadanie a)
disp('Wykonuje skrypt nonlinear_figures.m');
nonlinear_figures
a = input('Wciœnij ENTER aby przejœæ dalej...');

% Zadanie c) czêœæ pierwsza
disp('Wykonuje skrypt SISO_linear_figures.m');
SISO_linear_figures
a = input('Wciœnij ENTER aby przejœæ dalej...');

% Zadanie c) czêœæ druga
disp('Wykonuje skrypt MISO_linear_figures.m');
MISO_linear_figures