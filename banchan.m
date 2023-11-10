function [w, p] = banchan(w, p, xOc, yOc, zOc)
    % Function to draw a rectangular prism representing the body of the robot

    % Draw the front side of the body
    [w, p] = vedt(w, p, xOc - 5, yOc - 3, zOc, xOc + 5, yOc - 3, zOc);

    % Draw the back side of the body
    [w, p] = vedt(w, p, xOc - 5, yOc + 3, zOc, xOc + 5, yOc + 3, zOc);

    % Draw the left side of the body
    [w, p] = vedt(w, p, xOc - 5, yOc - 3, zOc, xOc - 5, yOc + 3, zOc);

    % Draw the right side of the body
    [w, p] = vedt(w, p, xOc + 5, yOc - 3, zOc, xOc + 5, yOc + 3, zOc);
end
