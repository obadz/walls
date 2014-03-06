function [r] = origin(walls, i, s)
    X = 0;
    Y = 1;
    L = 2;
    T = 3;
    Horiz = 1;
    Verti = 2;
    N = 1;
    E = 2;
    S = 3;
    W = 4;

    r = zeros(2, size(walls, 2) * 4 + 1);

    c = (i - 1) * 4 + 1;

    r(Horiz, end  ) = 0;
    r(Verti, end  ) = 0;
    r(Horiz, c + X) = 1;
    r(Verti, c + Y) = 1;

    direction = walls(i);

    switch [s, direction]
        case [N, Verti]
        case [S, Verti]
            r(direction, c + L) = 1;
        case [E, Horiz]
            r(direction, c + L) = 1;
        case [W, Horiz]
        otherwise
            error('Inconsistent directions')
    end
end
