function [r] = connect(walls, i, si, j, sj)
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

    r(Horiz, end) = 0;
    r(Verti, end) = 0;

    for k = [i j]
        if k == i
            s = si;
            w = -1;
        else
            s = sj;
            w = 1;
        end

        orientation = walls(k);

        c = (k - 1) * 4 + 1;

        r(Horiz, c + X) = w;
        r(Verti, c + Y) = w;

        switch [s, orientation]
            case [N, Verti]
            case [S, Verti]
                r(Verti, c + L) = w;
            case [E, Horiz]
                r(Horiz, c + L) = w;
            case [W, Horiz]
            otherwise
                error(sprintf('Inconsistent orientation for wall %d in connection %d <-> %d', k, i, j))
        end
    end
end
