function M=MathTJPCShuiZ()
L=[-2.063715;-2.754195;-0.80484;-0.719975;-0.6193;1.51848;0.71616;0.2708;0.548425;4.290155;
    -0.382695;0.40493;0.477005;0.231045;1.827765;3.463135;0.85428;0.486025;-1.39755];
A=[1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0;
   1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1];
Pi=eye(19);
Q=inv(Pi);
W=[-0.7;3.91];
NAA=A*Q*A.';
K=-inv(NAA)*W;
V=Q*A.'*K;
Lx=L+(0.001*V);
A*Lx;
HE=391.73230;
HD=HE+Lx(1,1);
H1=HD+Lx(2,1);
H2=H1+Lx(3,1);
H3=H2+Lx(4,1);
H4=H3+Lx(5,1);
H5=H4+Lx(6,1);
H6=H5+Lx(7,1);
H7=H6+Lx(8,1);
H8=H7+Lx(9,1);
H9=H8+Lx(10,1);
H10=H3+Lx(12,1);
H11=H10+Lx(13,1);
H12=H11+Lx(14,1);
H13=H12+Lx(15,1);
H14=H13+Lx(16,1);
H15=H14+Lx(17,1);
H16=H15+Lx(18,1);
H=[HE;HD;H1;H2;H3:H4;H5;H6;H7;H8;H9;H10;H11;H12;H13;H14;H15;H16];
fz=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0];
f=fz.';
Qff=fz*Q*f-(A*Q*f).'*inv(NAA)*A*Q*f;
deta0=sqrt((V.'*Pi*V)/2);
detafD=deta0*sqrt(Qff(1,1));
detaf1=deta0*sqrt(Qff(2,2));
detaf2=deta0*sqrt(Qff(3,3));
detaf3=deta0*sqrt(Qff(4,4));
detaf4=deta0*sqrt(Qff(5,5));
detaf5=deta0*sqrt(Qff(6,6));
detaf6=deta0*sqrt(Qff(7,7));
detaf7=deta0*sqrt(Qff(8,8));
detaf8=deta0*sqrt(Qff(9,9));
detaf9=deta0*sqrt(Qff(10,10));
detaf10=deta0*sqrt(Qff(11,11));
detaf11=deta0*sqrt(Qff(12,12));
detaf12=deta0*sqrt(Qff(13,13));
detaf13=deta0*sqrt(Qff(14,14));
detaf14=deta0*sqrt(Qff(15,15));
detaf15=deta0*sqrt(Qff(16,16));
detaf16=deta0*sqrt(Qff(17,17));
detaf=[detafD;detaf1;detaf2;detaf3;detaf4;detaf5;detaf6;detaf7;detaf8;
       detaf9;detaf10;detaf11;detaf12;detaf13;detaf14;detaf15;detaf16];
d=sqrt((V.'*Pi*V)/2);