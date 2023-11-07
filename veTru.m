function [w,p]=veTru(w,p,x1,y1,z1,x2,y2,z2)
    rotateAxisX = atan2(sqrt((x2-x1)^2+(y2-y1)^2),(z2-z1));
    rotateAxisZ = atan2((x2-x1),(y2-y1));
    rotateAxisY = atan2((x2-x1),sqrt((z2-z1)^2+(y2-y1)^2));
    r = [x1; y1; z1];
    R = eulerXYZ(rotateAxisX, rotateAxisY,rotateAxisZ);
    Radius = 1;
    Height = sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2);
    SideCount = 20;


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
    figure(1);
    h_side = patch('Faces', sideFaces, 'Vertices', vertices, 'FaceColor', 'g');
    h_bottom = patch('Faces', bottomFaces, 'Vertices', vertices, 'FaceColor', 'g');

    hold on
    grid on
    w=w+sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2);
    p=p+((x2-x1)^2+(y2-y1)^2+(z2-z1)^2)/2;
end 