function out =  Ch_eatimation(x)

global K_ChannelDim; %---设置信道的维度，即K的长度；
global Walsh_matrix;  %---K*T的扩频矩阵P
global M_antenna;  %---基站天线根数；
% global SNR_Current;  %---当前的信噪比；
global Frame_Len;  %---帧长,即T的长度；
global pho;   %---设置功率分配因子；
global Ex ;   %---发射功率；
global G_matrix; %---产生M*1的G矩阵；
global Iter_num ;   %---接收机迭代次数
global K ;   %---信号的稀疏度
global G_matrix_LS;

G_matrix = G_matrix_LS;
Y = reshape(x, [M_antenna,Frame_Len]);  %M根天线接收到的信号M*T；[M,F]
Y_update = Y ;


for ii = 1:1:Iter_num
    
    % 解扩处理——更新Z；
    Z = (1/Frame_Len) * Y_update * Walsh_matrix;   
    
    %---更新H
    temp1 = Frame_Len * sqrt(pho*Ex*K);
    temp2 = (K_ChannelDim+(Frame_Len-K_ChannelDim)*pho)*Ex *G_matrix'*G_matrix;
    H =  temp1 * ( pinv(temp2 + K_ChannelDim) ) * G_matrix' * Z;  %---噪声功率为1，省略掉
    
    %---消除信道H的干扰
    Y_wave = Y - sqrt(pho*Ex/K) * G_matrix * H * Walsh_matrix.';
    %------使用MMSE检测-------------
     part1= sqrt((1-pho)*Ex);
    part2=((1-pho)*Ex)*G_matrix'*G_matrix+1;
    S_MMSE= part1*(pinv(part2))*G_matrix'*Y_wave;
    S_MMSE=sqrt(2)/2*(sign(real(S_MMSE))+1i*sign(imag(S_MMSE)));  %---为什么不在这里纠正
    
%     %---用简单的迫零检测检测1*T的数据S, 
%     S_ZF = 1/(sqrt((1-pho)*Ex)) * pinv(G_matrix) * Y_wave;   
%     %=========需要还原为相应的QPSK调制数据。 
%     temp = sqrt(2)/2 * [(1+i);(1-i);(-1+i);(-1-i) ];
%     for tt = 1:1:Frame_Len
%         [val, loc] = min(abs(temp - S_ZF(tt))) ;
%         S_ZF(tt) = temp(loc);
%     end
%     
    
    
    %---利用检测到的数据S更新Y；
    Y_update = Y - sqrt((1-pho)*Ex) * G_matrix *   S_MMSE;
    
end



out = [H, S_MMSE].';
