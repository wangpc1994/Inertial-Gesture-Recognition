clear all;
clc
load struct.mat
count=0;
A=[];
for i=1:140
    name=strcat('A_',num2str(i));
    filename=strcat('A',num2str(i));
eval([name,'=[struct_A(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['A=[A,',name,'];'])
end
A=A';

B=[];
for i=1:140
    name=strcat('B_',num2str(i));
    filename=strcat('B',num2str(i));
eval([name,'=[struct_B(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['B=[B,',name,'];'])
end
B=B';
C=[];
for i=1:140
    name=strcat('C_',num2str(i));
    filename=strcat('C',num2str(i));
eval([name,'=[struct_C(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['C=[C,',name,'];'])
end
C=C';
D=[];
for i=1:140
    name=strcat('D_',num2str(i));
    filename=strcat('D',num2str(i));
eval([name,'=[struct_D(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['D=[D,',name,'];'])
end
D=D';
one=[];
for i=1:140
    name=strcat('one_',num2str(i));
    filename=strcat('one',num2str(i));
eval([name,'=[struct_one(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['one=[one,',name,'];'])
end
one=one';
two=[];
for i=1:140
    name=strcat('two_',num2str(i));
    filename=strcat('two',num2str(i));
eval([name,'=[struct_two(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['two=[two,',name,'];'])
end
two=two';
three=[];
for i=1:140
    name=strcat('three_',num2str(i));
    filename=strcat('three',num2str(i));
eval([name,'=[struct_three(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['three=[three,',name,'];'])
end
three=three';
four=[];
for i=1:140
    name=strcat('four_',num2str(i));
    filename=strcat('four',num2str(i));
eval([name,'=[struct_four(',num2str(i),').accel];'])
eval([name,'=[',name,'(1:34,1);',name,'(1:34,2)];'])

eval(['four=[four,',name,'];'])
end
four=four';

zimu={'A','B','C','D','one','two','three','four'};

for n=1:10:131
    for l=1:8
        struct_number=zimu{l};
        for b=0:9
%             eval(['exchange(',struct_number,'(',num2str(n+b),').accel,',struct_number,'(',num2str(131+b),').accel);'])
            eval(['temp=',struct_number,'(',num2str(n+b),',:);'])
            eval([struct_number,'(',num2str(n+b),',:)=',struct_number,'(131+',num2str(b),',:);'])
            eval([struct_number,'(131+',num2str(b),',:)=temp;'])
        end
    end

dataset=[A;B;C;D;one;two;three;four];
labelset1=ones(140,1);
labelset2=[2*ones(140,1)];
labelset3=[3*ones(140,1)];
labelset4=[4*ones(140,1)];
labelset5=[5*ones(140,1)];
labelset6=[6*ones(140,1)];
labelset7=[7*ones(140,1)];
labelset8=[8*ones(140,1)];
labelset=[labelset1;labelset2;labelset3;labelset4;labelset5;labelset6;labelset7;labelset8];
train_set = [dataset(1:130,:);dataset(141:270,:);dataset(281:410,:);dataset(421:550,:);dataset(561:690,:);dataset(701:830,:);dataset(841:970,:);dataset(981:1110,:)];
train_set1=dataset(1:130,:);test_set1=dataset(131:140,:);
train_set2=dataset(141:270,:);test_set2=dataset(271:280,:);
train_set3=dataset(281:410,:);test_set3=dataset(411:420,:);
train_set4=dataset(421:550,:);test_set4=dataset(551:560,:);
train_set5=dataset(561:690,:);test_set5=dataset(691:700,:);
train_set6=dataset(701:830,:);test_set6=dataset(831:840,:);
train_set7=dataset(841:970,:);test_set7=dataset(971:980,:);
train_set8=dataset(981:1110,:);test_set8=dataset(1111:1120,:);

train_set_labels = [labelset(1:130,:);labelset(141:270,:);labelset(281:410,:);labelset(421:550,:);labelset(561:690,:);labelset(701:830,:);labelset(841:970,:);labelset(981:1110,:)];
test_set = [dataset(131:140,:);dataset(271:280,:);dataset(411:420,:);dataset(551:560,:);dataset(691:700,:);dataset(831:840,:);dataset(971:980,:);dataset(1111:1120,:)];

test_set_labels = [labelset(131:140,:);labelset(271:280,:);labelset(411:420,:);labelset(551:560,:);labelset(691:700,:);labelset(831:840,:);labelset(971:980,:);labelset(1111:1120,:)];
train_set_labels1 = labelset(1:130,:);test_set_labels1 = labelset(131:140,:);
train_set_labels2 = labelset(141:270,:);test_set_labels2 = labelset(271:280,:);
train_set_labels3 = labelset(281:410,:);test_set_labels3 = labelset(411:420,:);
train_set_labels4 = labelset(421:550,:);test_set_labels4 = labelset(551:560,:);
train_set_labels5 = labelset(561:690,:);test_set_labels5 = labelset(691:700,:);
train_set_labels6 = labelset(701:830,:);test_set_labels6 = labelset(831:840,:);
train_set_labels7 = labelset(841:970,:);test_set_labels7 = labelset(971:980,:);
train_set_labels8 = labelset(981:1110,:);test_set_labels8 = labelset(1111:1120,:);
save en.mat

model = svmtrain(train_set_labels, train_set);
model1 = svmtrain(train_set_labels1, train_set1);
model2 = svmtrain(train_set_labels2, train_set2);
model3 = svmtrain(train_set_labels3, train_set3);
model4 = svmtrain(train_set_labels4, train_set4);
model5 = svmtrain(train_set_labels5, train_set5);
model6 = svmtrain(train_set_labels6, train_set6);
model7 = svmtrain(train_set_labels7, train_set7);
model8 = svmtrain(train_set_labels8, train_set8);

[predict_label] = svmpredict(test_set_labels, test_set, model);

end
diary('Result_SVM.txt')