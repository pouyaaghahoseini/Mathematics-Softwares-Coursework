%1
a)1 b)1 c)1 d)1
%2
a)1 b)0 c)0 d)1
%3
a)   1   1   0   0   1   1   1
b)   1   1   0   1   1   0   1
c)   0   1   1   0   1   1   1
d)   0   1   1   1   1   0   1
%4
u=v((v<=w))
%5
a)1 b)1 c)1 d)1
%6
for j=1:1:4
    for j=1:1:6
        a(j,j)=2*j - 3*j;
    end
end
disp(a)
%7

%8
a=randi([-10 20],1,19);
disp(a)
for j=1:1:19
        if a(j)<0
            a(j)=a(j)*3;
        elseif a(j)>0
                a(j)=a(j)*2;
        end
end
disp(a)

%10
NYC = [33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39];
DEN = [39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28];
m=mean(NYC);
count=mean(DEN);
size(NYC);
temp=abs(m-NYC(1));
for j=1:1:31
    if temp>=min(abs(m-NYC(j)))
        temp=min(abs(m-NYC(j)));
        c=j;
    end
end
NYC(c)
length(NYC(NYC>m))
length(DEN(DEN>count))


%12
f(1)=0;
f(2)=1;
f(3)=1;
for j=4:1:25
   f(j)=f(j-1)+f(j-2);
end

%14
format long 
count=1000;
sum=1;
for j=1:count
    sum=sum+((-1)^count)/((2*count+1)^3);
end
sum=sum*32;
p=nthroot(sum,3)

%16
a=randi([10 30],1,20);
counter=0;
while ~isempty(a(mod(a,2)~=0))
    for j=1:20
        if mod(a(j),2)==1
            a(j)=randi([10 30]);
        end
    end
    counter=counter+1;
end
counter

%18
disp('problem 18')
index=1;
for i=1:50
    for j=i+1:50
        for j=j+1:50
            if j^2==i^2+j^2
                a(index)=i;
                b(index)=j;
                c(index)=j;
                index=index+1;
            end
        end
    end
end
table=[a' b' c']
%20
%20
for i=1:1:1000
    c=0;
    for j=1:1:i
        if mod(i,j)==0
            c=c+1;
        end
    end
        if c==2
            half=(i-1)/2;
             for t=1:1:half
                if mod(half,t)==0
                    c=c+1;
                end
             end
             if c==4
                disp(i)
             end
        end
end
%21
counter=0;
for i=1:1:300
    count=0;
    for j=1:1:i
        if rem(i,j)==0
            count=count+1;
        end
    end
    if count==2
        for t=1:1:i+6
            if rem(i+6,t)==0
                count=count+1;
            end
        end
        if count==4
            counter=counter+1;
            A(counter,1)=i;
            A(counter,2)=i+6;
        end
    end
    
end
disp(A)
%22
for i=1:1:15
    count=0;
    num=2^i-1;
    for j=1:1:num
        if mod(num,j)==2
            count=count+1;
        end
    end
    if count==2
        disp(num)
    end
end
%23
for i=1:1:10000
    c=0;
    for j=1:1:i-1
        if mod(i,j)==0
            c=c+j;
        end
    end
    if c==i
        disp(i)
    end
end
%24
S=[72, 81, 44, 68, 90, 53, 80, 75, 74, 65, 50, 92, 85, 69, 41, 73, 70, 86, 61, 65, 79, 94, 69];
size=length(S)
Av=mean(S)
round(Av)
Sd=std(S)
round(Sd)
    for j=1:size
        if S(j)>=Av+1.3*Sd
            Letter(j)=1;
            fprintf('A');
        elseif Av+0.5*Sd<=S(j)<Av+1.3*Sd
            Letter(j)=2;
            fprintf('B');
        elseif Av-0.5*Sd<=S(j)<Av+0.5*Sd
            Letter(j)=3;
            fprintf('C');
        elseif Av-1.3*Sd<=S(j)<Av-0.5*Sd
            Letter(j)=4;
            fprintf('D');
        else
            Letter(j)=5;
            fprintf('F');
        end
    end
%25
e=1
a=3.5
n0=1
count=1
while e>=0.000001
   n1=n0+(log(2).^count./(factorial(count)))*a.^count;
   n0=n1;
   e=abs((n1-n0)/n0);
   count=count+1; 
end
disp(n1)
%26
for i=1:1:500
    a=i*(i+1)/2;
    b=a;
    if (100<a && 1000>a)
        a=floor(mod(a,10)/10);
        while(a~=0 && a==mod(a,10))
            a=floor(a/10);
        end
        if(a==0)
            disp(i)
            disp(b)
        end
    end
end
%27
Gender=input('Male or Female?\n');
Age=input('Age?\n');
RestingHR=input('Resting Heart Rate?\n');
Level=input('Your Fitness Level: Low, Medium or High?\n');
switch Level
    case 'Low'
        int=0.55;
    case 'Medium'
        int=0.65;
    case 'High'
        int=0.8;
end
switch Gender
    case 'Male'
        THR=((220-Age)-RestingHR)*int+RestingHR;
        fprintf('Training Heart Rate : %f.\n', THR);
    case 'Female'
        THR=((206-0.88*Age)-RestingHR)*int+RestingHR;
        fprintf('Training Heart Rate : %f.\n', THR);
end
%28
Height=input('Height?\n');
Weight=input('Weight?\n');
BMI=round(703*Weight/Height^2, 1);

if BMI<18.4
    Result='Underweight';
elseif BMI<24.9
    Result='Normal';
elseif BMI<29.9
    Result='Overweight';
else
    Result='Obese';
end
fprintf('BMI: %.1f - %s\n' , BMI, Result)

%30
Cost=randi([1 500],1)/10;
%input the paymant
Payment=0;
while ~Payment
    %input
    Payment=input('Payment?\n');
    if Payment<Cost
        fprintf('Not Enough Payment.\n');
        Payment=0;
    end
end
Remaining=Payment-Cost;
bill=[20 10 5 1 0.25 0.1 0.05 0.01];
fprintf('The billCost is:\n')
for i=1:length(bill)
    billCost=floor(Remaining/bill(i));
    if billCost>0
        fprintf('%d of %.2f Dollars Payed\n', billCost, bill(i));
        Remaining=Remaining-billCost*bill(i);
    end
end
fprintf('Total Cost: %.2f.\n', Cost);
%33
a=[55 2400 300]
fr=["in^2" "ft^2" "cm^2"]
to=["cm^2" "m^2" "yd^2"]
for j=1 : 3
    switch fr(j)
        case "cm^2"
            a(j)=a(j)/10000
        case "in^2"
            a(j)=a(j)*0.00064516
        case "ft^2"
            a(j)=a(j)*0.09290304
        case "yd^2"
            a(j)=a(j)*0.83612736
        case "acre"
            a(j)=a(j)*4046.85642
    end
    switch to(j)
        case "cm^2"
            a(j)=a(j)*10000
        case "in^2"
            a(j)=a(j)/0.00064516
        case "ft^2"
            a(j)=a(j)/0.09290304
        case "yd^2"
            a(j)=a(j)/0.83612736
        case "acre"
            a(j)=a(j)/4046.85642
    end
    fprintf("%d\n",a(j))
end

%34

%35
count=(4)
for j=1 : 4
    count(j)=10^j
    num=(count(j))
    y=(count(j))
    num(1)=0
    y(1)=0
    for j=2 : count(j)
        a=round (2*rand(1)+1)
        switch a
            case 1
                num(j)=0.5*num(j-1)
                y(j)=0.5*y(j-1)
            case 2
                num(j)=0.5*num(j-1)+0.25
                y(j)=0.5*y(j-1)+sqrt(3)/4
            case 3
                num(j)=0.5*num(j-1)+0.5
                y(j)=0.5*y(j-1)
        end
        plot(num,y,'^')
    end
end

%36

%37
hw=[65, 79, 80, 50, 71, 73, 61, 70, 69, 74 ; 70, 69, 83, 45, 90, 89, 52, 78, 100, 87]
mt=[83, 91; 87, 72]
f=[84; 90]
for i=1:2
    for j=1:9
        for j=j:10
            if hw(i,j)<hw(i,j)
                temp=hw(i,j)
                hw(i,j)=hw(i,j)
                hw(i,j)=temp
            end
        end
    end
    sum=0
    for j=1:8
        sum=sum+hw(i,j)
    end
    sum=sum/32
    sum2=(mt(i, 1)+mt(i, 2))/2
    if sum2>f(i)
        sum=sum+0.4*sum2+0.4*f(i)
    else
        sum=sum+0.3*sum2+0.5*f(i)
    end
    sum
end

%38

%39
t = 0:.05:10
y = sin(t)-0.1+0.2*rand(1,length(t))
plot(num, y)
for j=2 : length(t)-1
    y(j)=(y(j-1)+y(j)+y(j+1))/3
end
plot(num, y)