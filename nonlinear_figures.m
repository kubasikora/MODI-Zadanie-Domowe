% Skrypt nonlinear_figures.m generuje wykresy charakterystyk 
% statycznych dla obu zadanych proces�w w odpowiednich przedzia�ach

% Generowanie okna graficznego dla modelu SISO
fig1 = figure('Name', 'Wykres modelu SISO');

% Obliczenie charakterystyki modelu
u = linspace(-5, 5, 200);
y = SISO_nonlinear(u);

% Umieszczenie charakterystyki na wykresie
hold on;
grid on;
fig1 = plot(u, y);

% Opatrzenie wykresu odpowiednimi informacjami
xlabel('Warto�� sterowania u');
ylabel('Warto�� wyj�cia procesu y');
title('Charakterystyka statyczna procesu o 1 wej�ciu i 1 wyj�ciu');
legend('y(u)');

% Zapis wykresu do pliku
saveas(fig1, 'figures/SISO_nonlinear.bmp')
hold off;

% Generowanie wykresu dla modelu MISO 
fig2 = figure('Name', 'Wykres modelu MISO'); 

% Obliczenie charakterystki modelu
u1 = linspace(-1,1, 20);
u2 = linspace(-1,1, 20);

% Umieszczenie charakterystki na wykresie 3D
[U1,U2] = meshgrid(u1,u2);
Z = MISO_nonlinear(U1, U2);
grid on;
fig2 = surf(U1, U2, Z);

% Opatrzenie wykresu odpowiednimi informacjami
xlabel('Warto�� sterowania u1');
ylabel('Warto�� sterowania u2');
zlabel('Warto�� wyj�cia y');
title('Charakterystyka statyczna procesu o 2 wej�ciach i 1 wyj�ciu');
legend('y(u1, u2)', 'Location', 'northeast');
% Zapis wykresu do pliku
saveas(fig2, 'figures/MISO_nonlinear.bmp');

