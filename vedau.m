function [w,p]=vedau(w,p,i,j,a1)
    r = [i; 0; sqrt(10^2-j^2)+90];
    R = eulerXYZ(0, 90,a1);
    Radius = 10;
    Height = 5;
    SideCount = 10;

    % Vertices
    vertices_0 = zeros(2*SideCount, 3);
    for i = 1:SideCount
        theta = 2*pi/SideCount*(i-1);
        vertices_0(i,:) = [Radius*cos(theta), Radius*sin(theta), 0];
        vertices_0(SideCount+i,:) = [Radius*cos(theta), Radius*sin(theta), Height];
    end

    vertices = r' + vertices_0*R';

    % Side faces
    sideFaces = zeros(SideCount, 4);
    for i = 1:(SideCount-1)
        sideFaces(i,:) = [i, i+1, SideCount+i+1, SideCount+i];
    end
    sideFaces(SideCount,:) = [SideCount, 1, SideCount+1, 2*SideCount];
    % Bottom faces
    bottomFaces = [
        1:SideCount;
        (SideCount+1):2*SideCount];

    % Draw patches
    h_side = patch('Faces', sideFaces, 'Vertices', vertices, 'FaceColor', 'y');
    h_bottom = patch('Faces', bottomFaces, 'Vertices', vertices, 'FaceColor', 'y');

end