function [rect] = draw_plan( walls, sol )
    Horiz = 1;
    Verti = 2;
    rect = zeros(size(sol));

    i = (walls == Horiz);
    rect(i, 1) = sol(i, 1);
    rect(i, 2) = -(sol(i, 2) + sol(i, 4) / 2);
    rect(i, 3) = sol(i, 3);
    rect(i, 4) = sol(i, 4);

    i = (walls == Verti);
    rect(i, 1) = sol(i, 1) - sol(i, 4) / 2;
    rect(i, 2) = -(sol(i, 2) + sol(i, 3));
    rect(i, 3) = sol(i, 4);
    rect(i, 4) = sol(i, 3);

    rand('seed', 0);

    figure();

    for k = 1:size(rect, 1)
        rectangle('Position', rect(k, :), 'FaceColor', rand(1, 3));
        text(rect(k, 1) + rect(k, 3) / 2, rect(k, 2) + rect(k, 4) / 2, sprintf('%d', k), 'horizontalalignment', 'center');
    end
end
