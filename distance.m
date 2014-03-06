function [r] = distance(walls, i, si, j, sj, d, handle_thickness=1)
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
    
    r = zeros(1, size(walls, 2) * 4 + 1);

    r(1, end) = d;

    for k = [i j]
        if k == i
            w = -1;
            s = si;
        else
            w = 1;
            s = sj;
        end

        orientation = walls(k);

        c = (k - 1) * 4 + 1;

        switch [s, orientation]
            case [N, Verti]
                r(1, c + Y) = w;
            case [S, Verti]
                r(1, c + Y) = w;
                r(1, c + L) = w;
            case [E, Verti]
                r(1, c + X) = w;
                r(1, c + T) = w/2 * handle_thickness;
            case [W, Verti]
                r(1, c + X) = w;
                r(1, c + T) = -w/2 * handle_thickness;
            case [N, Horiz]
                r(1, c + Y) = w;
                r(1, c + T) = -w/2 * handle_thickness;
            case [S, Horiz]
                r(1, c + Y) = w;
                r(1, c + T) = w/2 * handle_thickness;
            case [E, Horiz]
                r(1, c + X) = w;
                r(1, c + L) = w;
            case [W, Horiz]
                r(1, c + X) = w;
            otherwise
                error('Inconsistent orientations')
        end
    end
end
