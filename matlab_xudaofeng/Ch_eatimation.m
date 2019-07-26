function out =  Ch_eatimation(x)

global K_ChannelDim; %---�����ŵ���ά�ȣ���K�ĳ��ȣ�
global Walsh_matrix;  %---K*T����Ƶ����P
global M_antenna;  %---��վ���߸�����
% global SNR_Current;  %---��ǰ������ȣ�
global Frame_Len;  %---֡��,��T�ĳ��ȣ�
global pho;   %---���ù��ʷ������ӣ�
global Ex ;   %---���书�ʣ�
global G_matrix; %---����M*1��G����
global Iter_num ;   %---���ջ���������
global K ;   %---�źŵ�ϡ���
global G_matrix_LS;

G_matrix = G_matrix_LS;
Y = reshape(x, [M_antenna,Frame_Len]);  %M�����߽��յ����ź�M*T��[M,F]
Y_update = Y ;


for ii = 1:1:Iter_num
    
    % ��������������Z��
    Z = (1/Frame_Len) * Y_update * Walsh_matrix;   
    
    %---����H
    temp1 = Frame_Len * sqrt(pho*Ex*K);
    temp2 = (K_ChannelDim+(Frame_Len-K_ChannelDim)*pho)*Ex *G_matrix'*G_matrix;
    H =  temp1 * ( pinv(temp2 + K_ChannelDim) ) * G_matrix' * Z;  %---��������Ϊ1��ʡ�Ե�
    
    %---�����ŵ�H�ĸ���
    Y_wave = Y - sqrt(pho*Ex/K) * G_matrix * H * Walsh_matrix.';
    %------ʹ��MMSE���-------------
     part1= sqrt((1-pho)*Ex);
    part2=((1-pho)*Ex)*G_matrix'*G_matrix+1;
    S_MMSE= part1*(pinv(part2))*G_matrix'*Y_wave;
    S_MMSE=sqrt(2)/2*(sign(real(S_MMSE))+1i*sign(imag(S_MMSE)));  %---Ϊʲô�����������
    
%     %---�ü򵥵���������1*T������S, 
%     S_ZF = 1/(sqrt((1-pho)*Ex)) * pinv(G_matrix) * Y_wave;   
%     %=========��Ҫ��ԭΪ��Ӧ��QPSK�������ݡ� 
%     temp = sqrt(2)/2 * [(1+i);(1-i);(-1+i);(-1-i) ];
%     for tt = 1:1:Frame_Len
%         [val, loc] = min(abs(temp - S_ZF(tt))) ;
%         S_ZF(tt) = temp(loc);
%     end
%     
    
    
    %---���ü�⵽������S����Y��
    Y_update = Y - sqrt((1-pho)*Ex) * G_matrix *   S_MMSE;
    
end



out = [H, S_MMSE].';
