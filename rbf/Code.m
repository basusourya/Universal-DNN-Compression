[x,y,u]=input_gen(1000);
[c,phi,w2]=fx_nn(u(1:500),x(1:500),y(1:500));
error = error_fx(c,phi,w2,u(500:1000),x(500:1000),y(500:1000));
fprintf('Error Testset: %d\n', error);