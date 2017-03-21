clear all;
clc
load struct.mat
zimu={'A','B','C','D','one','two','three','four'};
fid=fopen('Result_KNN.txt','wt');
count=0;
for n=1:10:131
    for l=1:8
        struct_number=strcat('struct_',zimu{l});
        for b=0:9
%             eval(['exchange(',struct_number,'(',num2str(n+b),').accel,',struct_number,'(',num2str(131+b),').accel);'])
            eval(['temp=',struct_number,'(',num2str(n+b),').accel;'])
            eval([struct_number,'(',num2str(n+b),').accel=',struct_number,'(1+',num2str(b),').accel;'])
            eval([struct_number,'(1+',num2str(b),').accel=temp;'])
        end
    end
    
    for i=1:8
        train_number=strcat('train_',zimu{i});
        liver=strcat('struct_',zimu{i});
        eval([train_number,'=zeros(34,2);'])
        for j=1:130
            eval([train_number,'=',train_number,'+',liver,'(',num2str(j),').accel;'])
        end
        eval([train_number,'=',train_number,'/130;'])
    end
    
    for m=1:8
        pool=strcat('struct_',zimu{m});
        for t=1:10
            for i=1:8
                che=strcat('train_',zimu{i});
                near_number=strcat('near_',zimu{i});
                eval([near_number,'=sum((',pool,'(t).accel-',che,').^2);'])
                eval([near_number,'=sum(',near_number,',2);'])
            end
            [mindata,k]=min([near_A,near_B,near_C,near_D,near_one,near_two,near_three,near_four]);
            file=strcat(pool,'(',num2str(t+n-1),').accel');
            fprintf(fid,'%s\tThe result is%s\n',file,zimu{k});
            if(m==k)
                count=count+1;
            end
        end
    end
end
fclose(fid);
accuracy=count/140/8