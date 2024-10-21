x=[1 2 3 4 5 6 7 8 9];
p=length(x);
h=[1 2 1];
q=length(h);
cc=cconv(x,h);
r=0;
v=ceil(p/q);
while r ~= 0
    p = p + 1;
    r = mod(p,q);
    if r==0
        break
    end
end
x=[x zeros(1,p)];
Lx=length(x);
Lh=length(h);
Lb = Lh; %Lb=blockLength
a=1;
b=Lb;
x=[x zeros(1,Lb)];
h=[h zeros(1,Lb-1)];
y1=[zeros(1,2*Lb-1)];
y=[];
for i =1:v+1
    x1=x(a:b);
    a=a+Lb;
    b=b+Lb;
    x1=[x1 zeros(1,Lb-1)];
    y2=cconv(x1,h,2*Lb-1);
    y3=y1+y2;
    y=[y y3(1:Lb)];
    y1=[y2(Lb+1:end) zeros(1,Lb)];
end
cc
y

