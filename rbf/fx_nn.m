function [c,phi,w] = fx_nn(u,x,y)
n=15;
c=rand(n,3);
phi=rand(n,3);
w=rand(1,n+1);
a=1;
err=error_fx(c,phi,w,u,x,y);
e=[err];

for b=1:500
    q=size(x);
    q=q(1);
    for g=1:q
        %fprintf('%d\n %d\n',g,q);
        z=[1,x(g),u(g)];
        [c,phi,w]=bck_prop(z,c,phi,w,y(g));
        
    end
end
err=error_fx(c,phi,w,u,x,y);
fprintf('Error Dataset : %d\n', err);
%plot(u,e)
end

