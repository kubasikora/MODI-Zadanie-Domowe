% Skrypt MISO_linear_figures.m generuje wykresy charakterystyk 
% statycznych dla modelu MISO w odpowiednich przedzia³ach
% zlinearyzowanych w interesuj¹cych punktach pracy 

% Generacja wykresów
duty_points = [0,0; 1,-1; -1,1]; % Wybrane punkty pracy
 for i=1:size(duty_points)
    % Nazwanie okna graficznego
    duty_point_name = ['(', num2str(duty_points(i,1)), ', ', num2str(duty_points(i,2)), ')'];
    figurename = ['Wykres dla punktu pracy (u1,u2) = ', duty_point_name];
    fig = figure('Name', figurename);
 
    % Obliczenie charakterystyki nieliniowej 
    u1_nonlin = linspace(-1,1, 20);
    u2_nonlin = linspace(-1,1, 20);
    [U1_NONLIN,U2_NONLIN] = meshgrid(u1_nonlin, u2_nonlin);
    Y_NONLIN = MISO_nonlinear(U1_NONLIN, U2_NONLIN);
    
    % Obliczenie charakterystyki liniowej 
    u1_lin = linspace(-1,1, 20);
    u2_lin = linspace(-1,1, 20);
    [U1_LIN,U2_LIN] = meshgrid(u1_lin, u2_lin);
    Y_LIN = MISO_linear(duty_points(i,:), U1_LIN, U2_LIN);
    
    % Umieszczenie obu charakterystyk na wykresie
    hold on;
    grid on;
    fig = surf(U1_NONLIN, U2_NONLIN, Y_NONLIN, 'FaceColor', 'red');
    fig = surf(U1_LIN, U2_LIN, Y_LIN, 'FaceColor', 'blue');
    view(-37.5,30);
    
    % Opatrzenie wykresu odpowiednimi informacjami
    xlabel('Wartoœæ sterowania u1');
    ylabel('Wartoœæ sterowania u2');
    zlabel('Wartoœæ wyjœcia procesu y');
    title(['Charakterystyka zlinearyzowana w punkcie u = ', duty_point_name]);
    legend('y(u1, u2)', 'y(u1, u2) zlinearyzowane', 'Location', 'southeast');
    
    % Zapis wykresu do pliku
    filename = ['figures/MISO_linear', num2str(i), '.bmp'];
    saveas(fig, filename); 
    hold off

 end