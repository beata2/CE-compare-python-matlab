function out =  Channel_Gen(x)
global G_matrix; %---产生M*1的G矩阵；
global M_antenna;  %---基站天线根数；
% global SNR_Current;  %---当前的信噪比；
global Frame_Len;  %---帧长,即T的长度；
global Ex ;   %---发射功率；
global preamble;
global G_matrix_LS;

% 产生训练数据
Temp_pilot= 1-2*rand(preamble,2);
polit_bit(find(Temp_pilot >=0 )) = 1;
polit_bit(find(Temp_pilot <0 )) = 0;     %竖
temp_pilot(find(polit_bit ==0 )) = sqrt(0.5);
temp_pilot(find(polit_bit ==1 )) = -sqrt(0.5);
temp_polit_1 = reshape(temp_pilot,preamble,2);
polit = temp_polit_1(:,1) +1i*temp_polit_1(:,2);
polit_Ex = (sqrt(Ex)*polit).';

x_data_all = [polit_Ex,x.'];     % [1,P+F]
% 过信道
G_matrix = 1/sqrt(M_antenna*2) * ( randn(M_antenna,1) + i*randn(M_antenna,1) );  %---产生上行信道； M*1 --产生G矩阵；
data = G_matrix*x_data_all;  %---数据过无线信道，[p+F,M]；
noise = sqrt(0.5) * ( randn(M_antenna,preamble+Frame_Len) + i*randn(M_antenna,preamble+Frame_Len) ); % ---根据当前的SNR产生噪声；
y_data_all = data + noise;    %[M,P+F]

% 由前导估计H
y_polit = y_data_all(:,1:1:preamble);    % [M,P]
y_data= y_data_all(:,preamble+1:1:end);    % [M,F]
% G_matrix_LS = pinv(polit_Ex'*polit_Ex)*polit_Ex'*y_polit;   % [1,M]   LS估计
% G_matrix_LS = (polit_Ex*pinv(polit_Ex))'*y_polit*pinv(polit_Ex);   % [1,M]   LS估计
G_matrix_LS = y_polit*pinv(polit_Ex);   % [1,M]   LS估计
% H_MMSE = sqrt(T_ChannelDim/Ex)*pinv(T_ChannelDim/Ex*eye(T_ChannelDim,T_ChannelDim)+polit'*polit)*polit'*y_polit;
        


% G_matrix = 1/sqrt(M_antenna)*sqrt(0.5) * ( randn(M_antenna,1) + i*randn(M_antenna,1) );  %---产生上行信道； M*1 --产生G矩阵；
% data = G_matrix*x_data.';  %---数据过无线信道，数据data为M*T的矩阵；
% noise = sqrt(0.5) * ( randn(M_antenna,Frame_Len) + i*randn(M_antenna,Frame_Len) ); % ---根据当前的SNR产生噪声；
% out_temp = data + noise;


out = reshape(y_data, [M_antenna*Frame_Len,1]);











