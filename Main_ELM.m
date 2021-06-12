clc
clear

[x,~] = iris_dataset;
x=x';
t=[ones(1,50),ones(1,50)*2,ones(1,50)*3]';
x_train=[x(1:30,:);x(51:80,:);x(101:120,:)];
y_train=[t(1:30,:);t(51:80,:);t(101:120,:)];
x_test=[x(31:50,:);x(81:100,:);x(121:150,:)];
y_test=[t(31:50,:);t(81:100,:);t(121:150,:)];

res=[];
for i=1:10
[tr_ti,ts_ti,tr_ac,ts_ac]=elm([y_train,x_train], [y_test,x_test], 1, 5, 'sig');
res=[res,ts_ac];
end
max(res)
mean(res)