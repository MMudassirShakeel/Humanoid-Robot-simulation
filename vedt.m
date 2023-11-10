% Function to draw a line segment in 3D
function [w,p]=vedt(w,p,x1,y1,z1,x2,y2,z2)
    % Create an array of points along the line
    i = linspace(0, 100, 101);
    
    % Plot the line segment
    plot3(x1 + i/100 * (x2 - x1), y1 + i/100 * (y2 - y1), z1 + i/100 * (z2 - z1), 'LineWidth', 5);
    
    % Set up the plot
    hold on
    grid on
    
    % Update displacement and potential energy based on the length of the line segment
    w = w + sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2);
    p = p + ((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2) / 2;
end

