function [Data]=AlphaDate(Data)
Alpha=xlsread('°¢¶û·¨beta.xlsx','Sheet5','A:D');
[r,~]=size(Alpha);
P=zeros(r,4);
J=zeros(r,4);
for k=1:r
if Alpha(k,3)==1
    P(k,:)=Alpha(k,:);
end
if or(Alpha(k,3)==2,Alpha(k,3)==2)
    J(k,:)=Alpha(k,:);
end
end

id = P(:,1) == 0;  
P(id,:)=[];
id = J(:,1) == 0;  
J(id,:)=[];

[n,~]=size(P);
[m,~]=size(J);
aP=zeros(n,4);
bP1=zeros(n,4);
bP2=zeros(m,4);
bP3=zeros(m,4);
for k=1:n
    if P(k,4)<0
        aP(k,:)=P(k,:);
    end
    if P(k,4)>=0 && P(k,4)<=0.05
        bP1(k,:)=P(k,:);
    end
end
for k=1:m
    if J(k,4)>=0 && J(k,4)<=0.05
       bP2(k,:)=J(k,:);
    end
    if J(k,4)>0.05 && J(k,4)<=0.15
        bP3(k,:)=J(k,:);
    end
end

id = aP(:,1) == 0;  
aP(id,:)=[];
id = bP1(:,1) == 0;  
bP1(id,:)=[];
id = bP2(:,1) == 0;  
bP2(id,:)=[];
id = bP3(:,1) == 0;  
bP3(id,:)=[];

[x1,~]=size(aP);
[x2,~]=size(bP1);
[x3,~]=size(bP2);
[x4,~]=size(bP3);

an=zeros(x1,1);
bn1=zeros(x2,1);
bn2=zeros(x3,1);
bn3=zeros(x4,1);

for k=1:x1
    an(k)=sqrt(0.3)*(1-aP(k,1)/aP(k,2));
end
for k=1:x2
    bn1(k)=(((bP1(k,1)/bP1(k,2)-1)/sqrt(0.3)));
end
for k=1:x3
    bn2(k)=(((bP2(k,1)/bP2(k,2)-1)/sqrt(0.7)));
end
for k=1:x4
    bn3(k)=(((bP3(k,1)/bP3(k,2)-1)/sqrt(0.7)));
end

a=mean(an(:));
b1=mean(bn1(:));
b2=mean(bn2(:));
b3=mean(bn3(:));
Jieguo=[a,b1,b2,b3];
xlswrite('Alpha½á¹û.xlsx',Jieguo);
    