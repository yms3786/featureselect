function [ output ] = score( teams,input,label,tp,sv)
[m,n]=size(teams);
[a,b]=size(input);
g=guidata(Selection);
cr=get(g.checkbox25,'value');
for i=1:m
    selection=zeros(1,n-3);
    for j=1:n-3
        flag=1;
        for k=1:j-1
            if teams(i,k)==teams(i,j)
                flag=0;
                break;
            end
        end
        if flag==1
            selection(1,j)=teams(i,j);
        end
    end
    
    pssmtrain=[];
    for j=1:n-3
        if selection(1,j)~=0
           pssmtrain=[pssmtrain,input(:,teams(i,j))]; 
        end
    end
    model = svmtrain(label(1:fix(a*tp),1),pssmtrain(1:fix(a*tp),:),sv);
    [p, accuracy_L,d] = svmpredict(label(fix(a*tp):a,1), pssmtrain(fix(a*tp):a,:), model);
    [v1,v2]=size(pssmtrain);
    if cr==1
       teams(i,n-1)=accuracy_L(2);
       teams(i,n)=accuracy_L(3);
    else 
       teams(i,n-1)=-(accuracy_L(1)); 
       teams(i,n)=accuracy_L(2);
    end
end
output=teams;
end

