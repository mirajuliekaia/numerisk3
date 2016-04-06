%% Oppgave 4

im1 = [0 0 0 ; 0 1 0 ; 0 0 0];
p1 = sum(im1, 2);
p2 = sum(im1, 1);
p3 = [0 1 0];
p4 = [0 1 0];
g = zeros(3);

for x = 1:3
    for y = 1:3
        g(x, y) = p1(x) + p2(y);
        if x == y
            g(x, y) = p1(x) + p2(y) + p3(y) + p4(y);
        end
    end
end

g(1, 1) = g(1, 1) + p3(2) + p4(3);
g(1, 2) = g(1, 2) + p3(3) + p4(3);
g(1, 3) = g(1, 3) + p3(3) + p4(2);


g(3, 1) = g(3, 1) + p3(1) + p4(2);
g(3, 2) = g(3, 2) + p3(1) + p4(1);
g(3, 3) = g(3, 3) + p3(2) + p4(1);

norm_konst = sum(sum(g));

g = 1/(norm_konst)*g;

figure
imagesc(g)
colormap('gray')
axis square
drawnow

disp(p1)
disp(p2)
