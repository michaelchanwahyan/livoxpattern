close all;
clear;
clc;

t = 0:0.00001:0.8;
T = 0.02 / 3;
w = 2*pi/T;
RT = 1/6.5536 * w;

xt = 19.2 * sin(w*t) .* (cos(RT*t) - sin(RT*t));
yt = 19.2 * sin(w*t) .* (sin(RT*t) + cos(RT*t));

%figure , plot(xt,yt, 'b.');
%axis equal;
%%{
figure;
for t_ = 1:length(t)
    plot(xt(1:t_), yt(1:t_), 'bx');
    hold on;
    plot(xt(t_), yt(t_), 'ro', 'MarkerFaceColor', 'r');
    hold off;
    axis equal;
    title(t_);
    pause(0.0001);
end
%%}
