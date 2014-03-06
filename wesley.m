N = 1;
R = E = 2;
S = 3;
L = W = 4;

walls = [ ...
    horizontal( 01 ), ...
    vertical(   02 ), ...
    horizontal( 03 ), ...
    vertical(   04 ), ...
    horizontal( 05 ), ...
    vertical(   06 ), ...
    horizontal( 07 ), ...
    vertical(   08 ), ...
    horizontal( 09 ), ...
    horizontal( 10 ), ...
    vertical(   11 ), ...
    horizontal( 12 ), ...
    vertical(   13 ), ...
    horizontal( 14 ), ...
    vertical(   15 ), ...
    horizontal( 16 ), ...
    vertical(   17 ), ...
    horizontal( 18 ), ...
    vertical(   19 ), ...
    horizontal( 20 ), ...
    vertical(   21 ), ...
    vertical(   22 ), ...
    horizontal( 23 ), ...
    vertical(   24 ), ...
    horizontal( 25 ), ...
    vertical(   26 ), ...
    horizontal( 27 ), ...
    vertical(   28 ), ...
    horizontal( 29 ), ...
    vertical(   30 ), ...
    vertical(   31 ), ...
    horizontal( 32 ), ...
    vertical(   33 ), ...
    vertical(   34 ), ...
    horizontal( 35 ), ...
    horizontal( 36 ), ...
    vertical(   37 ), ...
    vertical(   38 ), ...
    ];

bearing_walls = 0.25;
thin_walls    = 0.10;

constraints = [ ...
    origin(    walls, 01, L); ...
  % thickness(walls, 01, bearing_walls); ...
    equal_thickness( walls, 01, 02 ); ...
    equal_thickness( walls, 01, 03 ); ...
    equal_thickness( walls, 01, 04 ); ...
    equal_thickness( walls, 01, 05 ); ...
    equal_thickness( walls, 01, 06 ); ...
    equal_thickness( walls, 01, 07 ); ...
    equal_thickness( walls, 01, 08 ); ...
    equal_thickness( walls, 01, 09 ); ...
    equal_thickness( walls, 01, 11 ); ...
    equal_thickness( walls, 01, 12 ); ...
    equal_thickness( walls, 01, 13 ); ...
    equal_thickness( walls, 01, 14 ); ...
    equal_thickness( walls, 01, 15 ); ...
    equal_thickness( walls, 01, 16 ); ...
    equal_thickness( walls, 01, 17 ); ...
    equal_thickness( walls, 01, 18 ); ...
    equal_thickness( walls, 01, 19 ); ...
    equal_thickness( walls, 01, 20 ); ...
    thickness( walls, 10, thin_walls ); ...
    equal_thickness( walls, 10, 21); ...
    equal_thickness( walls, 10, 22); ...
    equal_thickness( walls, 10, 23); ...
    equal_thickness( walls, 10, 24); ...
    equal_thickness( walls, 10, 25); ...
    equal_thickness( walls, 10, 26); ...
    equal_thickness( walls, 10, 27); ...
    equal_thickness( walls, 10, 28); ...
    equal_thickness( walls, 10, 30); ...
    equal_thickness( walls, 10, 31); ...
    equal_thickness( walls, 10, 32); ...
    equal_thickness( walls, 10, 33); ...
    equal_thickness( walls, 10, 34); ...
    equal_thickness( walls, 10, 35); ...
    equal_thickness( walls, 10, 36); ...
    equal_thickness( walls, 10, 37); ...
    equal_thickness( walls, 10, 38); ...

    ... % Connections
    connect(   walls, 01, R, 02, N); ...
    connect(   walls, 02, S, 03, L); ...
    connect(   walls, 03, R, 04, S); ...
    connect(   walls, 04, N, 05, L); ...
    connect(   walls, 05, R, 06, N); ...
    connect(   walls, 06, S, 07, L); ...
    connect(   walls, 07, R, 08, N); ...
    connect(   walls, 08, S, 14, R); ...
    connect(   walls, 14, L, 15, S); ...
    connect(   walls, 15, N, 16, R); ...
    connect(   walls, 16, L, 17, S); ...
    connect(   walls, 17, N, 18, R); ...
    connect(   walls, 18, L, 24, S); ...
    connect(   walls, 19, N, 20, R); ...
    connect(   walls, 20, L, 11, S); ...
    connect(   walls, 11, N, 12, L); ...
    connect(   walls, 12, R, 13, S); ...
    connect(   walls, 13, N, 01, L); ...
    connect(   walls, 22, N, 23, R); ...
    connect(   walls, 26, S, 25, L); ...
    connect(   walls, 09, L, 26, N); ...
    connect(   walls, 27, L, 28, N); ...
    connect(   walls, 30, S, 32, L); ...
    connect(   walls, 37, N, 36, L); ...
    connect(   walls, 32, R, 33, N); ...
    connect(   walls, 36, R, 33, S); ...
    ... % Alignments
    distance(  walls, 01, S, 05, S, 0.00); ...
    distance(  walls, 12, S, 03, S, 0.00); ...
    distance(  walls, 03, S, 07, S, 0.00); ...
    distance(  walls, 10, S, 09, S, 0.00); ...
    distance(  walls, 10, R, 09, L, 0.00); ...
    distance(  walls, 09, R, 08, L, 0.00); ...
    distance(  walls, 19, R, 10, L, 0.00); ...
    distance(  walls, 19, S, 18, N, 0.00); ...
    distance(  walls, 20, N, 10, N, 0.00); ...
    distance(  walls, 10, S, 21, N, 0.00); ...
    distance(  walls, 21, S, 18, N, 0.00); ...
    distance(  walls, 22, S, 18, N, 0.00); ...
    distance(  walls, 21, R, 23, L, 0.00); ...
    distance(  walls, 24, L, 11, L, 0.00); ...
    distance(  walls, 24, N, 20, S, 0.00); ...
    distance(  walls, 25, R, 08, L, 0.00); ...
    distance(  walls, 28, S, 17, N, 0.00); ...
    distance(  walls, 27, R, 26, L, 0.00); ...
    distance(  walls, 29, S, 16, N, 0.00); ...
    distance(  walls, 29, R, 08, L, 0.00); ...
    distance(  walls, 03, S, 30, N, 0.00); ...
    distance(  walls, 03, S, 31, N, 0.00); ...
    distance(  walls, 31, S, 32, N, 0.00); ...
    distance(  walls, 36, S, 38, N, 0.00); ...
    distance(  walls, 38, S, 10, N, 0.00); ...
    distance(  walls, 30, L, 37, L, 0.00); ...
    distance(  walls, 31, L, 38, L, 0.00); ...
    distance(  walls, 35, L, 34, R, 0.00); ...
    distance(  walls, 35, R, 33, L, 0.00); ...
    distance(  walls, 37, S, 10, N, 0.00); ...
    distance(  walls, 34, N, 32, S, 0.00); ...
    distance(  walls, 34, S, 36, N, 0.00); ...
    ... % Distances
    ... % Living room
    distance(  walls, 01, S, 10, N, 4.50); ...
    distance(  walls, 12, S, 10, N, 4.50 - 0.85); ...
    distance(  walls, 11, R, 30, L, 5.98 - 0.50); ...
    distance(  walls, 11, R, 34, L, 5.98); ...
    distance(  walls, 13, R, 02, L, 2.60); ...
    distance(  walls, 11, R, 13, R, 0.75); ...
    ... % Master bedroom
    distance(  walls, 05, S, 09, N, 4.32); ...
    distance(  walls, 04, R, 06, L, 2.60); ...
    distance(  walls, 06, L, 08, L, 0.75); ...
    distance(  walls, 31, R, 08, L, 3.50); ...
    distance(  walls, 35, R, 08, L, 3.30); ...
    ... % Guest bedroom
    distance(  walls, 25, S, 16, N, 2.09); ...
    distance(  walls, 17, R, 08, L, 3.28); ...
    distance(  walls, 25, S, 14, N, 2.75); ...
    distance(  walls, 15, R, 08, L, 0.75); ...
    distance(  walls, 28, R, 26, L, 0.80); ...
    distance(  walls, 27, S, 16, N, 3.00); ...
    distance(  walls, 25, S, 29, N, 1.75); ...
    distance(  walls, 17, R, 29, L, 1.50); ...
    ... % Bathroom
    distance(  walls, 26, R, 08, L, 2.25); ...
    distance(  walls, 09, S, 25, N, 1.80); ...
    ... % Kitchen
    distance(  walls, 19, R, 21, L, 3.40); ...
    distance(  walls, 10, S, 18, N, 1.98); ...
    distance(  walls, 24, R, 19, L, 1.00); ...
    ... % Entrance
    distance(  walls, 10, S, 23, N, 1.48); ...
    distance(  walls, 21, R, 22, L, .75); ...
    distance(  walls, 21, R, 09, L, 3.20);...
    ... % Closets
    distance(  walls, 03, S, 32, N, .75); ...
    distance(  walls, 36, S, 09, N, .75); ...
    distance(  walls, 32, S, 35, N, .75); ...
    ];

constraints_M = constraints(:, 1:end-1);
constraints_v = constraints(:, end);

raw_sol = constraints_M \ constraints_v;
sol     = reshape(raw_sol, 4, size(raw_sol, 1) / 4)';
rects   = draw_plan(walls, sol);

% Finding over constrained stuff:
% raw_errors = constraints_M * raw_sol - constraints_v;
% i = find(abs(raw_errors) > .01)
% constraints_M(i, :)

rank_ratio = rank(constraints_M) / 4 / size(walls, 2)

% [q, r] = qr(constraints_M);
% n = null(r);
% free = reshape(n * randn(size(n, 2), 1), 4, size(raw_sol, 1) / 4)';
% free = [(1:size(free, 1))', free];
