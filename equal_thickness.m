function [r] = equal_thickness(walls, i, j)
    X = 0;
    Y = 1;
    L = 2;
    T = 3;
    Verti = 1;
    Horiz = 2;
    N = 1;
    E = 2;
    S = 3;
    W = 4;

    r = zeros(1, size(walls, 2) * 4 + 1);

    c = (i - 1) * 4 + 1;
    r(1, c + T) = -1;

    c = (j - 1) * 4 + 1;
    r(1, c + T) = 1;
end
