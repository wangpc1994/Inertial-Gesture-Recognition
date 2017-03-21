clear all;
load train.mat

    eval(['[loglik1,q1]=viterbi(hmm_A,',test_number,'.accel);'])
    eval(['[loglik2,q2]=viterbi(hmm_B,',test_number,'.accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,',test_number,'.accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,',test_number,'.accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,',test_number,'.accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,',test_number,'.accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,',test_number,'.accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    
    if a==i
        count=count+1;
    end


for i=21:100
    name=strcat('struct_','B','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','B','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','B','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','B','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','B','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','B','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','B','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','B','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);

    
    if a==2
        count=count+1;
    end
end
for i=21:100
    name=strcat('struct_','C','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','C','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','C','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','C','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','C','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','C','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','C','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','C','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);
    if a==1
        fprintf('识别结果为A\n');
    else if a==2
            fprintf('识别结果为B\n');
        else if a==3
                fprintf('识别结果为C\n');
            else if a==4
                    fprintf('识别结果为D\n');
                else if a==5
                        fprintf('识别结果为1\n');
                    else if a==6
                        fprintf('识别结果为2\n');
                        else
                            fprintf('识别结果为7\n');
                        end
                        
                    end
                end
            end
        end
    end
    
    if a==3
        count=count+1;
    end
end
for i=21:100
    name=strcat('struct_','D','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','D','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','D','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','D','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','D','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','D','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','D','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','D','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);
    if a==1
        fprintf('识别结果为A\n');
    else if a==2
            fprintf('识别结果为B\n');
        else if a==3
                fprintf('识别结果为C\n');
            else if a==4
                    fprintf('识别结果为D\n');
                else if a==5
                        fprintf('识别结果为1\n');
                    else if a==6
                        fprintf('识别结果为2\n');
                        else
                            fprintf('识别结果为7\n');
                        end
                        
                    end
                end
            end
        end
    end
    
    if a==4
        count=count+1;
    end
end
for i=21:100
    name=strcat('struct_','one','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','one','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','one','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','one','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','one','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','one','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','one','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','one','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);
    if a==1
        fprintf('识别结果为A\n');
    else if a==2
            fprintf('识别结果为B\n');
        else if a==3
                fprintf('识别结果为C\n');
            else if a==4
                    fprintf('识别结果为D\n');
                else if a==5
                        fprintf('识别结果为1\n');
                    else if a==6
                        fprintf('识别结果为2\n');
                        else
                            fprintf('识别结果为7\n');
                        end
                        
                    end
                end
            end
        end
    end
    
    if a==5
        count=count+1;
    end
end
for i=21:100
    name=strcat('struct_','two','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','two','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','two','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','two','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','two','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','two','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','two','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','two','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);
    if a==1
        fprintf('识别结果为A\n');
    else if a==2
            fprintf('识别结果为B\n');
        else if a==3
                fprintf('识别结果为C\n');
            else if a==4
                    fprintf('识别结果为D\n');
                else if a==5
                        fprintf('识别结果为1\n');
                    else if a==6
                        fprintf('识别结果为2\n');
                        else
                            fprintf('识别结果为7\n');
                        end
                        
                    end
                end
            end
        end
    end
    
    if a==6
        count=count+1;
    end
end
for i=21:100
    name=strcat('struct_','sev','(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,struct_','sev','(',num2str(i),').accel);'])
    
    eval(['[loglik2,q2]=viterbi(hmm_B,struct_','sev','(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,struct_','sev','(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,struct_','sev','(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,struct_','sev','(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,struct_','sev','(',num2str(i),').accel);'])
   eval(['[loglik7,q7]=viterbi(hmm_sev,struct_','sev','(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7];
    [maxdata,a]=max(x);
    fprintf('%s \t',name);
    if a==1
        fprintf('识别结果为A\n');
    else if a==2
            fprintf('识别结果为B\n');
        else if a==3
                fprintf('识别结果为C\n');
            else if a==4
                    fprintf('识别结果为D\n');
                else if a==5
                        fprintf('识别结果为1\n');
                    else if a==6
                        fprintf('识别结果为2\n');
                        else
                            fprintf('识别结果为7\n');
                        end
                        
                    end
                end
            end
        end
    end
    
    if a==7
        count=count+1;
    end
end

per=count/560
