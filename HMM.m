clear all;
clc
load struct.mat
zimu={'A','B','C','D','one','two','three','four'};
fid=fopen('Result_HMM.txt','wt');
count=0;
for a=1:10:131

    for l=1:8
        struct_number=strcat('struct_',zimu{l});
        for b=0:9
            eval(['temp=',struct_number,'(',num2str(a+b),').accel;'])
            eval([struct_number,'(',num2str(a+b),').accel=',struct_number,'(1+',num2str(b),').accel;'])
            eval([struct_number,'(1+',num2str(b),').accel=temp;'])
        end
    end
for j=1:8
        struct_number=strcat('struct_',zimu{j});
 
        hmm_number=strcat('hmm_',zimu{j});
eval([hmm_number,'=train(',struct_number,'(11:140),[4 4 4 4]);'])
end
for j=1:8
    struct_number=strcat('struct_',zimu{j});

for i=1:10
 name=strcat(struct_number,'(',num2str(i+a-1),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik2,q2]=viterbi(hmm_B,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik7,q7]=viterbi(hmm_three,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik8,q8]=viterbi(hmm_four,',struct_number,'(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7,loglik8];
 
[maxdata,b]=max(x);
    fprintf(fid,'%s \t',name);
    if b==1
        fprintf(fid,'The result is A\n');
    else if b==2
            fprintf(fid,'The result is B\n');
        else if b==3
                fprintf(fid,'The result is C\n');
            else if b==4
                    fprintf(fid,'The result is D\n');
                else if b==5
                        fprintf(fid,'The result is 1\n');
                    else if b==6
                        fprintf(fid,'The result is 2\n');
                        else if b==7
                            fprintf(fid,'The result is 3\n');
                            else
                                fprintf(fid,'The result is 4\n');
                            end
                        end
                        
                    end
                end
            end
        end
    end
    if b==j
        count=count+1;
    end
end


end
end
fclose(fid);
accuracy=count/140/8

