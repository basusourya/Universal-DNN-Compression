function error = error_fx(x,y,u,w1,w2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
error=0;
q=size(u);
q=q(1);
for g=1:q
    %fprintf('%d\n',g);
    z=[1;x(g);u(g)];
    [yd,ud]=predict(z,w1,w2);
    error=error+(y(g)-yd)*(y(g)-yd);
end
error=(0.5)*error;
end




