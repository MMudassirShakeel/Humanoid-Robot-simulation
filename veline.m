function [w, p] = veline(w, p, x1, y1, z1, x2, y2, z2)
    % Function to draw a line segment in 3D space and compute length and energy
    % between two given points (x1, y1, z1) and (x2, y2, z2)

    % Generate parameter values from 0 to 100
    i = linspace(0, 100, 101);

    % Plot the 3D line segment
    plot3(x1 + i / 100 * (x2 - x1), y1 + i / 100 * (y2 - y1), z1 + i / 100 * (z2 - z1), 'LineWidth', 5);

    % Set up the plot environment
    hold on
    grid on

    % Compute and update the total length (w) of the line segment
    w = w + sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2);

    % Compute and update the potential energy (p) of the line segment
    p = p + ((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2) / 2;
end
