function [w, p] = Than(w, p, i, j)
    % Function to draw a rectangular prism representing a limb of the robot
    r = [i - 5; -5 + j; 40];

    % Reference orientation (no rotation initially)
    R = eulerXYZ(0, 0, 0);

    % Side lengths of the rectangular prism
    Lx = 10;
    Ly = 10;
    Lz = 40;

    % Vertices of the initial rectangular prism
    vertices_0 = [
        0,   0,  0;  % Vertex #1
        Lx,  0,  0;  % Vertex #2
        0,  Ly,  0;  % Vertex #3
        0,   0, Lz;  % Vertex #4
        Lx, Ly,  0;  % Vertex #5
        0,  Ly, Lz;  % Vertex #6
        Lx,  0, Lz;  % Vertex #7
        Lx, Ly, Lz   % Vertex #8
    ];

    % Transform the vertices based on the reference orientation
    vertices = r' + vertices_0 * R';

    % Faces of the rectangular prism
    faces = [
        1, 2, 5, 3;  % Face #1
        1, 3, 6, 4;  % Face #2
        1, 4, 7, 2;  % Face #3
        4, 7, 8, 6;  % Face #4
        2, 5, 8, 7;  % Face #5
        3, 6, 8, 5   % Face #6
    ];

    % Draw the rectangular prism
    h = patch('Faces', faces, 'Vertices', vertices, 'FaceColor', "#00FFFF");

    % Set up the plot environment
    hold on
    grid on
end
