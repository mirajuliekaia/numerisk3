%% Oppgave 4

im1 = [0 0 0 ; 0 1 0 ; 0 0 0];
p1 = sum(im1, 2);
p2 = sum(im1, 1);
g = zeros(3);

for x = 1:3
    for y = 1:3
        g(x, y) = p1(x)+p2(y);
    end
end

norm_konst = sum(sum(g));

g = 1/(norm_konst)*g;

figure
imagesc(g)
colormap('gray')
axis square
drawnow

disp(p1)
disp(p2)
