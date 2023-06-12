% Definir coordenadas dos vértices do cubo
vertices = [
    -1 -1 -1;   % Vértice 1
    -1 -1  1;   % Vértice 2
    -1  1 -1;   % Vértice 3
    -1  1  1;   % Vértice 4
     1 -1 -1;   % Vértice 5
     1 -1  1;   % Vértice 6
     1  1 -1;   % Vértice 7
     1  1  1;   % Vértice 8
];

% Definir faces do cubo
faces = [
    1 2 4 3;   % Face 1
    1 2 6 5;   % Face 2
    1 3 7 5;   % Face 3
    2 4 8 6;   % Face 4
    3 4 8 7;   % Face 5
    5 6 8 7;   % Face 6
];

% Plotar o cubo em representação aramada em 3D
figure;
hold on;
grid on;
axis equal;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Cubo em representação aramada em 3D');

% Plotar as faces do cubo
for i = 1:size(faces, 1)
    face = vertices(faces(i, :), :);
    patch('Faces', [1 2 3 4], 'Vertices', face, 'EdgeColor', 'k', 'FaceColor', 'none');
end

