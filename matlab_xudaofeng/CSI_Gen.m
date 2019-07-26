
%---����CSI
%---��CSI������Ƶ


function out =  CSI_Gen(x)
global K_ChannelDim;
global Walsh_matrix;  %---T*K��walsh�����P
global K ;   %---�źŵ�ϡ���

CSI=zeros(1,K_ChannelDim);  
Non_zeros=sqrt(0.5)*(randn(K,1)+1i*randn(K,1));
Pos=randperm(K_ChannelDim);
CSI(:,Pos(1:K))=Non_zeros;
% CSI =  sqrt(0.5) * ( randn(1,K_ChannelDim) + i*randn(1,K_ChannelDim) );  %---����CSI�� 1*K
Spread_CSI = (CSI*Walsh_matrix.').';  %---��Ƶ, �õ�1*T������



out = [CSI.';Spread_CSI];











