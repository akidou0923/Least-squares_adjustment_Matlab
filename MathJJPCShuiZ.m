function M=MathJJPCShuiZ()
h=[-2.063715;-2.754195;-0.80484;-0.719975;-0.6193;1.51848;0.71616;0.2708;0.548425;4.290155;
    -0.382695;0.40493;0.477005;0.231045;1.827765;3.463135;0.85428;0.486025;-1.39755];
B=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0; 
   0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0;
   0 0 -1 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1];
Pi=eye(19);
Q=inv(Pi);
l=[0.000;
0.000; 
0.000; 
0.000; 
0.000; 
0.000;
0.000; 
0.000; 
0.000;
0.000; 
-786.925; 
0.000; 
0.000; 
0.000; 
0.000; 
0.000; 
0.000; 
0.000; 
-3.910];
X0=[389.668585; 386.914390; 386.109550; 385.389575; 384.770275; 386.288755; 387.004915; 
387.275715; 387.824140; 392.114295; 385.794505; 386.271510; 386.502555; 388.330320; 
391.793455; 392.647735; 393.133760];
NBB=B.'*Pi*B;
W=B.'*Pi*l;
x=inv(NBB)*W;
V=B*x-l;
XX=X0+x;
hx=h+(0.001*V);

HE=391.73230;
HD=HE+hx(1,1);
H1=HD+hx(2,1);
H2=H1+hx(3,1);
H3=H2+hx(4,1);
H4=H3+hx(5,1);
H5=H4+hx(6,1);
H6=H5+hx(7,1);
H7=H6+hx(8,1);
H8=H7+hx(9,1);
H9=H8+hx(10,1);
H10=H3+hx(12,1);
H11=H10+hx(13,1);
H12=H11+hx(14,1);
H13=H12+hx(15,1);
H14=H13+hx(16,1);
H15=H14+hx(17,1);
H16=H15+hx(18,1);
H=[HE;HD;H1;H2;H3:H4;H5;H6;H7;H8;H9;H10;H11;H12;H13;H14;H15;H16];

d=sqrt((V.'*Pi*V)/2);