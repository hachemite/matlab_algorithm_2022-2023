A = [5/8 ,1/4 ,1/8; 1/4,0,2; 1/8,2,5/8];
b =[1;-1;1];
u1 = [5;2;-4];
u = suite(A,u1,b,25);

hold on;
plot(u(1,:),'g');
plot(u(2,:),'r');
plot(u(3,:),'y');
hold off;