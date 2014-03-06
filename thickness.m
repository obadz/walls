function [r] = thickness(walls, i, t)
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

    c = (i - 1) * 4 + 1;

    r = zeros(1, size(walls, 2) * 4 + 1);
    r(1, c + T) = 1;
    r(1, end  ) = t;
end
