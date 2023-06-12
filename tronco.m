% Parâmetros do tronco de pirâmide de base quadrada
altura_total = 5; % Altura total do tronco de pirâmide
altura_menor = 2; % Altura da base menor
lado_menor = 2; % Comprimento do lado da base menor
lado_maior = 4; % Comprimento do lado da base maior
resolucao = 50; % Número de pontos ao longo das arestas

% Gerar pontos do tronco de pirâmide de base quadrada
theta = linspace(0, 2*pi, resolucao);
x_menor = lado_menor/2*cos(theta);
y_menor = lado_menor/2*sin(theta);
x_maior = lado_maior/2*cos(theta);
y_maior = lado_maior/2*sin(theta);
z = linspace(0, altura_total, resolucao+1);

% Plotar o tronco de pirâmide de base quadrada em representação aramada
figure;
hold on;
grid on;
axis equal;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Tronco de Pirâmide de Base Quadrada em representação aramada');

% Plotar as arestas horizontais do tronco de pirâmide
for i = 1:resolucao
    plot3([x_menor(i) x_menor(i+1)], [y_menor(i) y_menor(i+1)], [z(1) z(1)], 'k'); % Arestas da base menor
    plot3([x_maior(i) x_maior(i+1)], [y_maior(i) y_maior(i+1)], [z(end) z(end)], 'k'); % Arestas da base maior
end

% Plotar as arestas verticais do tronco de pirâmide
for i = 1:resolucao
    plot3([x_menor(i) x_maior(i)], [y_menor(i) y_maior(i)], [z(1) z(end)], 'k'); % Arestas laterais
    plot3([x_menor(i) x_menor(i)], [y_menor(i) y_menor(i)], [z(1) z(end)], 'k'); % Arestas da base menor
    plot3([x_maior(i) x_maior(i)], [y_maior(i) y_maior(i)], [z(1) z(end)], 'k'); % Arestas da base maior
end

