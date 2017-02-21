function error = error_fx(c,phi,w,u,x,y )
error=0;
q=size(u);
q=q(1);
for g=1:q
    %fprintf('%d\n',g);
    z=[1,x(g),u(g)];
    [yd,ud]=predict(z,c,phi,w);
    error=error+(y(g)-yd)*(y(g)-yd);
end
error=(0.5)*error;
end

