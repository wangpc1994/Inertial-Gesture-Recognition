clear all;
clc
namelist  = dir('*.txt');
l = length(namelist);

 for j=1:l
        filename=namelist(j).name;
        
fid=fopen(filename,'r','n','utf-8');
count = 0;
result = [];
while ~feof(fid) 
    count = count + 1;
    for i = 1 : 4
        tline=fgetl(fid); 
        tline = native2unicode(tline); 
       if i <= 2  
            continue;
       end
        if i==3
            new = tline(7:length(tline));
        else
            new = tline(7:length(tline));
        end
        
        if i == 3
            result(count,1 : 3) = str2num(new);
        else
            result(count,4 : 6) = str2num(new);
        end
    end
end
fclose(fid);
A = [];
for i=1:length(result)
    A(i,1)=result(i,1)^2+result(i,2)^2+result(i,3)^2;
    A(i,2)=(result(i,4)^2+result(i,5)^2+result(i,6)^2)*100;
end

% subplot(3,2,j)
% plot(A);
 [b,a]=butter(4,0.2);
eval([filename(1:3),'_',filename(4:end-4),'=filter(b,a,A);'])
%  eval(['two_',num2str(j),'=A;'])
%  subplot(3,4,j);
%  
% plot(A);

end
save 'two.mat';
%  subplot(2,2,1);plot(A_3(:,1));subplot(2,2,2);plot(A_4(:,1));subplot(2,2,3);plot(A_3(:,2));subplot(2,2,4);plot(A_4(:,2));
% subplot(2,2,1);plot(A_1);subplot(2,2,2);plot(A_2);subplot(2,2,3);plot(A_3);
%   subplot(2,2,1);plot(A_3(:,1:3));subplot(2,2,2);plot(A_4(:,1:3));subplot(2,2,3);plot(A_3(:,4:6));subplot(2,2,4);plot(A_4(:,4:6));
%   figure
%    subplot(2,2,1);plot(A_1(:,1:3));subplot(2,2,2);plot(A_2(:,1:3));subplot(2,2,3);plot(A_1(:,4:6));subplot(2,2,4);plot(A_2(:,4:6));