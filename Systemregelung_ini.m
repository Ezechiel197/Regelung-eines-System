A3_ini;
no = 1;
s4	= ss(A,B,C,D);
disp('Polstellen ungeregelt')
pole(s4)

p	= [-1 -1.1 -1.4 -1.5 -1.5 ]'*2;
K	= place(A,B,p);
F	= (C*(B*K-A)^-1 *B)^-1;
s4k	= ss(A-B*K, B*F, C, D);
disp('gewählte Polstellen Zustandsrückführung')
pole(s4k)

figure(no);
pzmap(s4,s4k);
axis equal;

T	= .2;
r	= .0;		% Rechenzeit = r*T
s4d	= c2d(s4,T);
pd	= exp(T*p);
Kd	= place(s4d.a,s4d.b,pd);
Fd	= (s4d.c*(eye(size(A,1))-s4d.a+s4d.b*Kd)^-1 *s4d.b)^-1;
s4d	= ss(s4d.a-s4d.b*Kd, s4d.b*Fd, s4d.c-s4d.d*Kd, s4d.d*Fd,T);

no = no + 1;
figure(no);
step(s4k,s4d,6);


