function [w, p] = veTru(w, p, x1, y1, z1, x2, y2, z2)
    % Function to draw a truncated cone in 3D space and compute length and energy
    % between two given points (x1, y1, z1) and (x2, y2, z2)

    % Compute rotation angles for the orientation of the cone
    rotateAxisX = atan2(sqrt((x2 - x1)^2 + (y2 - y1)^2), (z2 - z1));
    rotateAxisZ = atan2((x2 - x1), (y2 - y1));
    rotateAxisY = atan2((x2 - x1), sqrt((z2 - z1)^2 + (y2 - y1)^2));

    % Define the position vector of the base center
    r = [x1; y1; z1];

    % Compute the rotation matrix based on Euler angles
    R = eulerXYZ(rotateAxisX, rotateAxisY, rotateAxisZ);

    % Define cone parameters
    Radius = 1;
    Height = sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2);
    SideCount = 20;

    % Vertices of the truncated cone
    vertices_0 = zeros(2 * SideCount, 3);
    for i = 1:SideCount
        theta = 2 * pi / SideCount * (i - 1);
        vertices_0(i, :) = [Radius * cos(theta), Radius * sin(theta), 0];
        vertices_0(SideCount + i, :) = [Radius * cos(theta), Radius * sin(theta), Height];
    end

    % Transform vertices based on position and orientation
    vertices = r' + vertices_0 * R';

    % Define side faces of the cone
    sideFaces = zeros(SideCount, 4);
    for i = 1:(SideCount - 1)
        sideFaces(i, :) = [i, i + 1, SideCount + i + 1, SideCount + i];
    end
    sideFaces(SideCount, :) = [SideCount, 1, SideCount + 1, 2 * SideCount];

    % Define bottom faces of the cone
    bottomFaces = [
        1:SideCount;
        (SideCount + 1):2 * SideCount];

    % Draw patches for the truncated cone
    figure(1);
    h_side = patch('Faces', sideFaces, 'Vertices', vertices, 'FaceColor', 'g');
    h_bottom = patch('Faces', bottomFaces, 'Vertices', vertices, 'FaceColor', 'g');

    % Set up the plot environment
    hold on
    grid on

    % Compute and update the total length (w) of the cone
    w = w + sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2);

    % Compute and update the potential energy (p) of the cone
    p = p + ((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2) / 2;
end
