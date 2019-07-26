clear; clc; close all;
% warning off;

tic
Frame_Len =512;  %---����֡��,��T�ĳ��ȣ�

m = log2(Frame_Len);
wn = 1;
for i = 1:m
    w2n = [wn wn;wn -1*wn];
    wn = w2n;
end
Walsh_matrix = wn;


%---����walsh����������ԡ�
TTT = Walsh_matrix'*Walsh_matrix; 
count_TTT = length(find(TTT~=0))

if  count_TTT == Frame_Len;
    find_end = 1
else
    find_end = 0
end 
% csvwrite('Walsh_matrix512x64.csv',Walsh_matrix(:,1:64))
Walsh_matrix = Walsh_matrix(:,1:32);
save('Walsh_matrix512x32.mat','Walsh_matrix')
toc   



