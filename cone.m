% Parâmetros do cone
raio_base = 1; % Raio da base do cone
altura = 2; % Altura do cone
resolucao = 50; % Número de pontos ao longo da circunferência da base

% Gerar pontos do cone
theta = linspace(0, 2*pi, resolucao);
x = raio_base*cos(theta);
y = raio_base*sin(theta);
z = linspace(0, altura, resolucao+1);

% Plotar o cone em representação aramada em 3D
figure;
hold on;
grid on;
axis equal;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Cone em representação aramada em 3D');

% Plotar linhas do cone
for i = 1:resolucao
    plot3([0 x(i)], [0 y(i)], [0 z(end)], 'k'); % Linhas do vértice ao topo
    plot3([x(i) x(i+1)], [y(i) y(i+1)], [z(end-1) z(end)], 'k'); % Linhas na base
end

% Plotar linhas na base do cone
plot3(x, y, zeros(1, resolucao), 'k');

