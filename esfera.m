% Parâmetros da esfera
raio = 1; % Raio da esfera
resolucao = 50; % Número de pontos ao longo do equador

% Gerar pontos da esfera
theta = linspace(0, 2*pi, resolucao);
phi = linspace(-pi/2, pi/2, resolucao);
[theta, phi] = meshgrid(theta, phi);
x = raio*cos(phi).*cos(theta);
y = raio*cos(phi).*sin(theta);
z = raio*sin(phi);

% Plotar a esfera em representação aramada
figure;
plot3(x(:), y(:), z(:), 'k.'); % Pontos individuais
hold on;
mesh(x, y, z, 'EdgeColor', 'k'); % Superfície conectada
axis equal;
grid on;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Esfera em representação aramada');

