
%---产生CSI
%---对CSI进行扩频


function out =  CSI_Gen(x)
global K_ChannelDim;
global Walsh_matrix;  %---T*K的walsh码矩阵P
global K ;   %---信号的稀疏度

CSI=zeros(1,K_ChannelDim);  
Non_zeros=sqrt(0.5)*(randn(K,1)+1i*randn(K,1));
Pos=randperm(K_ChannelDim);
CSI(:,Pos(1:K))=Non_zeros;
% CSI =  sqrt(0.5) * ( randn(1,K_ChannelDim) + i*randn(1,K_ChannelDim) );  %---产生CSI； 1*K
Spread_CSI = (CSI*Walsh_matrix.').';  %---扩频, 得到1*T的数据



out = [CSI.';Spread_CSI];











