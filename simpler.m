N = 1;
R = E = 2;
S = 3;
L = W = 4;

walls = [ ...
    horizontal( 01 ), ...
    vertical(   02 ), ...
    horizontal( 03 ), ...
    vertical(   04 ), ...
    ];

constraints = [ ...
    origin(    walls, 01, L); ...
    thickness( walls, 01, .25 ); ...
    thickness( walls, 02, .25 ); ...
    thickness( walls, 03, .25 ); ...
    thickness( walls, 04, .25 ); ...

    ... % Connections
    connect(   walls, 01, R, 02, N); ...
    connect(   walls, 02, S, 03, R); ...
    connect(   walls, 03, L, 04, S); ...
    connect(   walls, 04, N, 01, L); ...
    ... % Distances
    distance(  walls, 01, S, 03, N, 4.50); ...
    distance(  walls, 04, R, 02, L, 4.50 - 0.85); ...
    ];

% equal_thinkness()
