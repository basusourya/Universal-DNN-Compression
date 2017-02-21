function [w1,w2] = fx_nn(u,x,y)
n=100;
w1=rand(n,3);
w2=rand(1,n+1);
a=1;
err=error_fx(x,y,u,w1,w2);

while err>21
     
    q=size(x);
    q=q(1);
    for g=1:q
        %fprintf('%d\n %d\n',g,q);
        z=[1;x(g);u(g)];
        [w1,w2]=bck_prop(z,w1,w2,y(g));
        
    end
    err=error_fx(x,y,u,w1,w2);
    fprintf('Error Dataset : %d\n', err);
  
end
err=error_fx(x,y,u,w1,w2);
fprintf('Error Dataset : %d\n', err);
end

