function [ x,y,u ] = input_gen(n)
x=zeros(n,1);
y=zeros(n,1);
u=zeros(n,1);
x_t=0;
u_t=rand(1,1);
for a=1:n
    y_t=((x_t/(1+x_t*x_t))+u_t);
    y(a)=y_t;
    x(a)=x_t;
    u(a)=u_t;
    x_t=y_t;
    u_t=rand(1,1);
end
end
