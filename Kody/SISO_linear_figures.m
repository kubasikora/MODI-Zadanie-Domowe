% Skrypt SISO_linear_figures.m generuje wykresy charakterystyk 
% statycznych dla modelu SISO w odpowiednich przedzia³ach
% zlinearyzowanych w interesuj¹cych punktach pracy 

% Generacja wykresów 
duty_points = [-3, -1, 3]; % Wybrane punkty pracy

for i=1:length(duty_points)
    % Nazwanie okna graficznego
    figurename = ['Wykres dla punktu pracy u = ', num2str(duty_points(i))];
    fig = figure('Name', figurename);
    
    % Obliczenie charakterystyk nieliniowej i liniowej w zadanym przedziale
    u = linspace(-5, 5, 200);
    y1 = SISO_nonlinear(u);
    y2 = SISO_linear(duty_points(i), u);
    
    % Narysowanie wykresu z dwoma charakterystykami
    hold on
    grid on
    fig = plot(u, y1, '-b');
    fig = plot(u, y2, '-.r', 'LineWidth', 1.5);
    
    % Opatrzenie wykresu odpowiednimi informacjami
    xlabel('Wartoœæ sterowania u');
    ylabel('Wartoœæ wyjœcia procesu y');
    title(['Charakterystyka zlinearyzowana w punkcie u =', num2str(duty_points(i))]);
    legend('y(u)', 'y(u) zlinearyzowane', 'Location', 'southeast');
    
    % Zapis wykresu do pliku
    filename = ['figures/SISO_linear', num2str(i), '.png'];
    saveas(fig, filename) 
    hold off
end