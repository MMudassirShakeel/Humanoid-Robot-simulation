function R = eulerXYZ(a1, a2, a3)
    % Function to convert XYZ Euler angles to a rotation matrix

    % Rotation matrix around the X-axis
    R1 = [
        1, 0, 0;
        0, cos(a1), -sin(a1);
        0, sin(a1), cos(a1)
    ];

    % Rotation matrix around the Y-axis
    R2 = [
        cos(a2), 0, sin(a2);
        0, 1, 0;
        -sin(a2), 0, cos(a2)
    ];

    % Rotation matrix around the Z-axis
    R3 = [
        cos(a3), -sin(a3), 0;
        sin(a3), cos(a3), 0;
        0, 0, 1
    ];

    % Combine the individual rotation matrices to get the overall rotation matrix
    R = R1 * R2 * R3;
end
