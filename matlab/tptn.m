function [ o1,o2,o3,o4,o5 ] = tptn(teams,input,dp,label,sv)
[m,n]=size(teams);
team=[];
dp=dp/100;
for i=1:n-3
    flag=1;
    for j=1:i-1
        if teams(m,i)==teams(m,j)
           flag=0;
           break;
        end
    end
    if flag==1
       team=[team,teams(1,i)]; 
    end
end
pssmtrain=[];
[m,n]=size(team);
for j=1:n
    pssmtrain=[pssmtrain,input(:,team(1,j))]; 
end
[a,b]=size(input);
model = svmtrain(label(1:fix(a*dp),1),pssmtrain(1:fix(a*dp),:),sv);
[p, accuracy_L,d] = svmpredict(label(fix(a*dp):a,1), pssmtrain(fix(a*dp):a,:), model);
label=label(fix(a*dp):a,1);
mat=confusionmat(label,p);
[m,n]=size(mat);
ad=zeros(m,9);
mat=[mat,ad];
for i=1:m
   fp=sum(mat(:,i));
   fp=fp-mat(i,i);
   tp=mat(i,i);
   fn=sum(mat(i,1:n));
   fn=fn-mat(i,i);
   tn=sum(diag(mat(1:m,1:n)));
   tn=tn-mat(i,i);
   if fp==0
       fp=0.00000001;
   end
   if fn==0
       fn=0.00000001;
   end
   if tp==0
       tp=0.00000001;
   end
   if tn==0
       tn=0.00000001;
   end
   mat(i,n+1)=tp;
   mat(i,n+2)=tn;
   mat(i,n+3)=fp;
   mat(i,n+4)=fn;
   mat(i,n+5)=(tp/(tp+fn));
   mat(i,n+6)=(tn/(fp+tn));
   mat(i,n+7)=(tp/(tp+fp));
   mat(i,n+8)=(fp/(fp+tn));
   mat(i,n+9)=((tp+tn)/(tp+fn+fp+tn));
end
[a,b]=size(label);
o1=(mean(mat(:,n+5)));
o2=(mean(mat(:,n+6)));
o3=(mean(mat(:,n+7)));
o4=(mean(mat(:,n+8)));
o5=sum(diag(mat))/a;
end

