global mu; mu=398600.4;
global r0; r0=6378.14;
global R; R=1;
tf=250;
dtr=pi/180;
solinit = bvpinit(linspace(0,tf,5),[6380+100 8 -0.1*dtr 0 0]);
sol = bvp4c(@entryode,@entrybc,solinit);
x = linspace(0,tf);
y = deval(sol,x);
u=-0.5*y(5,:)/R;
