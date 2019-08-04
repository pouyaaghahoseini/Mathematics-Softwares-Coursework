S=[72, 81, 44, 68, 90, 53, 80, 75, 74, 65, 50, 92, 85, 69, 41, 73, 70, 86, 61, 65, 79, 94, 69];
size=length(S)
Av=mean(S)
round(Av)
Sd=std(S)
round(Sd) 

    for i=1:size
        if S(i)>=Av+1.3*Sd
            Letter(i)=1;
            fprintf('A');
        elseif Av+0.5*Sd<=S(i)<Av+1.3*Sd
            Letter(i)=2;
            fprintf('B');
        elseif Av-0.5*Sd<=S(i)<Av+0.5*Sd
            Letter(i)=3;
            fprintf('C');
        elseif Av-1.3*Sd<=S(i)<Av-0.5*Sd
            Letter(i)=4;
            fprintf('D');
        else
            Letter(i)=5;
            fprintf('F');
        end
    end
    