clear all;
clc
load struct.mat
zimu={'A','B','C','D','one','two','three','four'};

for j=1:8
        struct_number=strcat('struct_',zimu{j});
 
        hmm_number=strcat('hmm_',zimu{j});
eval([hmm_number,'=train(',struct_number,'(1:140),[4 4 4 4]);'])
end
for j=1:8
    struct_number=strcat('struct_',zimu{j});

for i=1:140
 name=strcat(struct_number,'(',num2str(i),',:)');
    eval(['[loglik1,q1]=viterbi(hmm_A,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik2,q2]=viterbi(hmm_B,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik3,q3]=viterbi(hmm_C,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik4,q4]=viterbi(hmm_D,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik5,q5]=viterbi(hmm_one,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik6,q6]=viterbi(hmm_two,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik7,q7]=viterbi(hmm_three,',struct_number,'(',num2str(i),').accel);'])
    eval(['[loglik8,q8]=viterbi(hmm_four,',struct_number,'(',num2str(i),').accel);'])
    x=[loglik1,loglik2,loglik3,loglik4,loglik5,loglik6,loglik7,loglik8];
 eval([name,'=x;'])
end
eval(['save', struct_number struct_number])
end
