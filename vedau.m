function [w, p] = vedau(w, p, i, j, a1)
    % Function to draw a cylindrical limb representing a limb of the robot
    r = [i; 0; sqrt(10^2 - j^2) + 90];

    % Reference orientation (rotation around the Y-axis)
    R = eulerXYZ(0, 90, a1);

    % Cylinder parameters
    Radius = 10;
    Height = 5;
    SideCount = 10;

    % Vertices of the cylinder
    vertices_0 = zeros(2 * SideCount, 3);
    for i = 1:SideCount
        theta = 2 * pi / SideCount * (i - 1);
        vertices_0(i, :) = [Radius * cos(theta), Radius * sin(theta), 0];
        vertices_0(SideCount + i, :) = [Radius * cos(theta), Radius * sin(theta), Height];
    end

    % Transform the vertices based on the reference orientation
    vertices = r' + vertices_0 * R';

    % Side faces of the cylinder
    sideFaces = zeros(SideCount, 4);
    for i = 1:(SideCount - 1)
        sideFaces(i, :) = [i, i + 1, SideCount + i + 1, SideCount + i];
    end
    sideFaces(SideCount, :) = [SideCount, 1, SideCount + 1, 2 * SideCount];

    % Bottom and top faces of the cylinder
    bottomFaces = [1:SideCount; (SideCount + 1):2 * SideCount];

    % Draw the cylindrical limb
    h_side = patch('Faces', sideFaces, 'Vertices', vertices, 'FaceColor', 'y');
    h_bottom = patch('Faces', bottomFaces, 'Vertices', vertices, 'FaceColor', 'y');
end
