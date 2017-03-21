function hmm= train(samples, M)
%输入:
%  samples -- 样本结构
%  M       -- 为每个状态指定pdf个数,如:[3 3 3 3]
%输出:
%  hmm      -- 训练完成后的hmm


% 计算语音参数


hmm = inithmm(samples, M);


hmm = baum(hmm, samples);

