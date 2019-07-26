clear all;
clc;
close all;

global K_ChannelDim; %---设置信道的维度，即K的长度；
global Walsh_matrix;  %---K*T的扩频矩阵P
global M_antenna;  %---基站天线根数；
global SNR_Current;  %---当前的信噪比；
global Frame_Len;  %---帧长,即T的长度；
global pho;   %---设置功率分配因子；
global Ex ;   %---发射功率；
global Iter_num ;   %---接收机迭代次数
global K ;   %---信号的稀疏度
global preamble;

%---参数设置----
preamble = 26;
Frame_Len =512;  %---设置帧长,即T的长度；
Trans_Len = preamble+Frame_Len;
Sample_time =1;  %---simulink模块采样频率；
simu_time = 2e3*(Sample_time*Frame_Len*2);  %---设置仿真时间；
pho = 0.05;   %---设置功率分配因子；
K_ChannelDim =32;  %---设置信道的维度，即K的长度；
M_antenna =32; %---设置基站天线根数；
Iter_num =3; %---接收机迭代次数
K=K_ChannelDim;  %---稀疏度


tic
%---产生walsh扩频矩阵；
Walsh_matrix = zeros(Frame_Len,K_ChannelDim);   %---初始化扩频矩阵；
% temp = randint(K_ChannelDim,1,[1,Frame_Len]);
% for iii = 1:1:K_ChannelDim
%   KKK =temp(iii) ;
%   sim('Walsh_Code.mdl');
%   Walsh_matrix(:,iii ) = walsh_code;
% end
% toc
load('Walsh_matrix512x32.mat','Walsh_matrix') 
% load('Walsh_matrix4x128.mat','Walsh_matrix')
Walsh_matrix=Walsh_matrix;
A=Walsh_matrix.'*Walsh_matrix;
B=length(find(A~=0))

SNR =14;
for jj= 1:1:length(SNR);
    SNR_Current = SNR(jj);
    Ex = 10^(0.1*SNR_Current);
    sim('CS_SUP.mdl');
end


% time_test = 0;
% SNR =  8:2:24;
% for i = 1:1:length(SNR);
%     SNR1 = SNR(i);
%     SNR2 = SNR1-3;
%     sim('CTA_ITA_CmpSim.mdl');
%     
%     Pc_RA1_CTA(i) = RA1_CTA(length(RA1_ITA),1);
%     Pc_RA1_ITA(i) = RA1_ITA(length(RA1_ITA),1);
%     Pc_RA2_CTA(i) = RA2_CTA(length(RA2_ITA),1);
%     Pc_RA2_ITA(i) = RA2_ITA(length(RA2_ITA),1);
%     save('CTA_ITA_PcSimLow.mat','Pc_RA1_CTA','Pc_RA1_ITA','Pc_RA2_CTA','Pc_RA2_ITA' );
%     
%     time_test = time_test + 1
% end;
% %PITA_Theory=[0.054171890976737	0.122944948720033	0.242494823640207	0.396266291290567	0.551788332192827	0.684726712193959	0.786453737430054	0.858966261002567	0.908380315169905	0.941110175244776	0.96240380033585	0.97610134534033	0.984849923839338];
% PITA_Theory=[0.551788332192827	0.684726712193959	0.786453737430054	0.858966261002567	0.908380315169905	0.941110175244776	0.96240380033585	0.97610134534033	0.984849923839338];
% 
% 
% plot(SNR,Pc_RA1_CTA,'-o',SNR,Pc_RA1_ITA,'--',SNR,PITA_Theory,'-s','LineWidth',2,'MarkerSize',8);
% xlabel('\mu_1 (dB)');
% ylabel('PCA');
% title('simulation value vs ITA theory value (Low)');
% legend('CTA (Sim)','ITA (Sim)','ITA (Theory)');
% grid;


