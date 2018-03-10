% Skrypt execute.m wykonuje wszystkie skrypty potrzebne do przeprowadzenia
% eksperymentu dla zadania domowego z przedmiotu MODI - Modelowanie i 
% Identyfikacja 

% Stwórz folder na wykresy jeśli jeszcze nie istnieje
if(exist('figures', 'dir') == 0)
    mkdir('figures'); 
end

% Zadanie a)
disp('Wykonuje skrypt nonlinear_figures.m');
nonlinear_figures
a = input('Wciśnij ENTER aby przejść dalej...');

% Zadanie c) część pierwsza
disp('Wykonuje skrypt SISO_linear_figures.m');
SISO_linear_figures
a = input('Wciśnij ENTER aby przejść dalej...');

% Zadanie c) część druga
disp('Wykonuje skrypt MISO_linear_figures.m');
MISO_linear_figures
