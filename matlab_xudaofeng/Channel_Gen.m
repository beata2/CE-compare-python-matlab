function out =  Channel_Gen(x)
global G_matrix; %---����M*1��G����
global M_antenna;  %---��վ���߸�����
% global SNR_Current;  %---��ǰ������ȣ�
global Frame_Len;  %---֡��,��T�ĳ��ȣ�
global Ex ;   %---���书�ʣ�
global preamble;
global G_matrix_LS;

% ����ѵ������
Temp_pilot= 1-2*rand(preamble,2);
polit_bit(find(Temp_pilot >=0 )) = 1;
polit_bit(find(Temp_pilot <0 )) = 0;     %��
temp_pilot(find(polit_bit ==0 )) = sqrt(0.5);
temp_pilot(find(polit_bit ==1 )) = -sqrt(0.5);
temp_polit_1 = reshape(temp_pilot,preamble,2);
polit = temp_polit_1(:,1) +1i*temp_polit_1(:,2);
polit_Ex = (sqrt(Ex)*polit).';

x_data_all = [polit_Ex,x.'];     % [1,P+F]
% ���ŵ�
G_matrix = 1/sqrt(M_antenna*2) * ( randn(M_antenna,1) + i*randn(M_antenna,1) );  %---���������ŵ��� M*1 --����G����
data = G_matrix*x_data_all;  %---���ݹ������ŵ���[p+F,M]��
noise = sqrt(0.5) * ( randn(M_antenna,preamble+Frame_Len) + i*randn(M_antenna,preamble+Frame_Len) ); % ---���ݵ�ǰ��SNR����������
y_data_all = data + noise;    %[M,P+F]

% ��ǰ������H
y_polit = y_data_all(:,1:1:preamble);    % [M,P]
y_data= y_data_all(:,preamble+1:1:end);    % [M,F]
% G_matrix_LS = pinv(polit_Ex'*polit_Ex)*polit_Ex'*y_polit;   % [1,M]   LS����
% G_matrix_LS = (polit_Ex*pinv(polit_Ex))'*y_polit*pinv(polit_Ex);   % [1,M]   LS����
G_matrix_LS = y_polit*pinv(polit_Ex);   % [1,M]   LS����
% H_MMSE = sqrt(T_ChannelDim/Ex)*pinv(T_ChannelDim/Ex*eye(T_ChannelDim,T_ChannelDim)+polit'*polit)*polit'*y_polit;
        


% G_matrix = 1/sqrt(M_antenna)*sqrt(0.5) * ( randn(M_antenna,1) + i*randn(M_antenna,1) );  %---���������ŵ��� M*1 --����G����
% data = G_matrix*x_data.';  %---���ݹ������ŵ�������dataΪM*T�ľ���
% noise = sqrt(0.5) * ( randn(M_antenna,Frame_Len) + i*randn(M_antenna,Frame_Len) ); % ---���ݵ�ǰ��SNR����������
% out_temp = data + noise;


out = reshape(y_data, [M_antenna*Frame_Len,1]);











