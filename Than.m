function [w,p]=Than(w,p,i,j)
    r = [i-5; -5+j; 40];

    % Reference orientation
    R = eulerXYZ(0, 0, 0);

    % Side lengths
    Lx = 10;
    Ly = 10;
    Lz = 40;

    % Vertices
    vertices_0 = [
        0,   0,  0;  % #1
        Lx,  0,  0;  % #2
        0,  Ly,  0;  % #3
        0,   0, Lz;  % #4
        Lx, Ly,  0;  % #5
        0,  Ly, Lz;  % #6
        Lx,  0, Lz;  % #7
        Lx, Ly, Lz]; % #8

    vertices = r' + vertices_0*R';

    % Faces
    faces = [
        1, 2, 5, 3;  % #1
        1, 3, 6, 4;  % #2
        1, 4, 7, 2;  % #3
        4, 7, 8, 6;  % #4
        2, 5, 8, 7;  % #5
        3, 6, 8, 5]; % #6

    % Draw patch
    h = patch('Faces', faces, 'Vertices', vertices, 'FaceColor', "#00FFFF");

    hold on
    grid on
end