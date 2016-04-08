%%Oppgave 6
a = 1;
N = 16;
n = 180;
im1 = zeros(N);
im1(7:10, 7:10) = 1;
theta = linspace(0,pi, 180);

M = zeros(2*N-1, length(theta));
p = zeros(2*N-1, length(theta));
for thetai = 1:length(theta)
    theta0=theta(thetai);
    for i = 1:N
        for j = 1:N
            x = a*((2*i-N-1)/2);
            y = a*((2*j-N-1)/2);
            s = round(x*cos(theta0)+y*sin(theta0));
            p(s+N, thetai) = p(s+N, thetai) + im1(i,j);
            M(s+N, thetai) = M(s+N, thetai)+1;
        end
    end
end

g = zeros(N);
for thetai = 1:length(theta)
    theta0=theta(thetai);
    for i = 1:N
        for j = 1:N
            x = a*((2*i-N-1)/2);
            y = a*((2*j-N-1)/2);
            s = round(x*cos(theta0)+y*sin(theta0));
            g(i,j) = g(i,j)+ p(s+N, thetai)/M(s+N, thetai);
        end
    end
end
norm_konst = sum(sum(g));

g = 1/(norm_konst)*g;

figure
subplot(2,1,1);
imagesc(im1)
axis square
subplot(2,1,2);
imagesc(g)
colormap('gray')
axis square
drawnow


