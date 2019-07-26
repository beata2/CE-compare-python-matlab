% 功率因子为0.2
%% 512x16，BER
clear ;
clc 
close all;
snr=-0:2:18;
% subplot(2,1,1);
NO_ce_xu = [0.1947 0.1408 0.08966 0.04722 0.01852 0.005058 0.0008219 7.6e-5	3.45e-6	6.6e-8];
Has_ce_xu = [0.25 0.1831 0.1169	0.0614 0.02445 0.00677 0.001099	8.5e-5 3.8e-6 1.55e-7];
NO_ce_cai = [0.19547 0.14186 0.09023 0.04764 0.01914 0.00530 0.0009411 9.2333984375e-05	4.58984375e-06 9.765625e-08];
Has_ce_cai = [0.239570 0.173877	0.110577 0.0583341 0.023555	0.006713574	0.001235986	0.00013320 8.9355e-06 2.9296875e-07];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x16--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x16，MSE

% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.2674	0.2063	0.1459	0.09231	0.05412	0.03345	0.02371	0.01914	0.0166	0.01505];
Has_ce_xu = [0.4775	0.3648	0.2536	0.1579	0.09099	0.05318	0.03484	0.02581	0.02063	0.01759];
NO_ce_cai = [0.25252 0.18251 0.1250	0.0780 0.0438 0.023879 0.013611 0.008710 0.00615 0.00470];
Has_ce_cai = [0.31955 0.2265 0.15322 0.0950 0.053833 0.02982 0.018136 0.0123391 0.0093106 0.0075236];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x16--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')

%% 512x32，BER
clear ;
clc 
close all;
snr=-0:2:14;
% subplot(2,1,1);
NO_ce_xu = [0.1965	0.1438	0.09342	0.05026	0.02087	0.005928	0.001041	0.0001084];
Has_ce_xu = [0.2835	0.2125	0.1395	0.07644	0.03191	0.008786	0.001541	0.0001611];
NO_ce_cai = [0.197135	0.144427	0.093533	0.05030	0.020635	0.0058876	0.0010173	0.00010659];
Has_ce_cai = [0.2707541015625	0.20097216796875	0.129644140625	0.06978896484375	0.02823759765625	0.00769853515625	0.001365234375	0.0001453125];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x32--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x32，MSE
snr=-0:2:14;
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.4239	0.3462	0.2645	0.1834	0.1199	0.08034	0.0609	0.05203];
Has_ce_xu = [0.7644	0.6479	0.5009	0.3459	0.2168	0.1333	0.09088	0.06991];
NO_ce_cai = [0.39486	0.3100554	0.225608	0.14859606	0.09007	0.053246	0.033369	0.02324];
Has_ce_cai = [0.5525103	0.41291803	0.29316726	0.19090451	0.11293535	0.06642032	0.04344486	0.0314698];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x32--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')

%% 512x64，BER
clear ;
clc 
close all;
snr=-0:2:18;
% subplot(2,1,1);
NO_ce_xu = [0.1997	0.1499	0.1011	0.05933	0.02826	0.01036	0.002894	0.0006564	0.0001279	2.97e-5];
Has_ce_xu = [0.3229	0.2541	0.1786	0.1076	0.05175	0.01914	0.005852	0.001818	0.00077	0.0004728];
NO_ce_cai = [0.2009466	0.149838	0.1005289	0.058574804	0.0280092	0.01078647	0.0035344	0.00132070	0.000743164	0.00057915];
Has_ce_cai = [0.31062451171875	0.2392220703125	0.16244560546875	0.0930462890625	0.043634375	0.0173044921875	0.00694130859375	0.0036765625	0.00279208984375	0.002525390625];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x64，MSE
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.6009	0.5294	0.4422	0.3447	0.2557	0.19	0.1523	0.1332	0.1238	0.1188];
Has_ce_xu = [1.025	0.9675	0.848	0.6766	0.4829	0.3333	0.2377	0.1856	0.1574	0.1407];
NO_ce_cai = [0.646674	0.504236	0.381025	0.274796	0.1880	0.12726	0.088913	0.06632	0.053133	0.0456288];
Has_ce_cai = [0.80344415	0.6791795	0.5602511	0.41769797	0.28676978	0.20592265	0.16480906	0.14416228	0.13258202	0.12622486];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')


%% 功率因子为0.2，BER对比
snr=-0:2:14;
ce_xu_16 = [0.25	0.1831	0.1169	0.0614	0.02445	0.00677	0.001099	8.5e-5];
ce_xu_32 = [0.2835	0.2125	0.1395	0.07644	0.03191	0.008786	0.001541	0.0001611];
ce_xu_64 = [0.3229	0.2541	0.1786	0.1076	0.05175	0.01914	0.005852	0.001818];
ce_cai_16 = [0.239570	0.173877	0.110577	0.0583341	0.023555	0.006713574	0.001235986	0.00013320];
ce_cai_32 = [0.2707541015625	0.20097216796875	0.129644140625	0.06978896484375	0.02823759765625	0.00769853515625	0.001365234375	0.0001453125];
ce_cai_64 = [0.31062451171875	0.2392220703125	0.16244560546875	0.0930462890625	0.043634375	0.0173044921875	0.00694130859375	0.0036765625];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--BER');
legend('XU-BER-CE(CSI=16)','XU-BER-CE(CSI=32)','XU-BER-CE(CSI=64)','DL-BER-CE(CSI=16)','DL-BER-CE(CSI=32)','DL-BER-CE(CSI=64)');
title('BER')

%% 功率因子为0.2，MSE对比
snr=-0:2:14;
ce_xu_16 = [0.4775	0.3648	0.2536	0.1579	0.09099	0.05318	0.03484	0.02581];
ce_xu_32 = [0.7644	0.6479	0.5009	0.3459	0.2168	0.1333	0.09088	0.06991];
ce_xu_64 = [1.025	0.9675	0.848	0.6766	0.4829	0.3333	0.2377	0.1856];
ce_cai_16 = [0.31955	0.2265	0.15322	0.0950	0.053833	0.02982	0.018136	0.0123391];
ce_cai_32 = [0.5525103	0.41291803	0.29316726	0.19090451	0.11293535	0.06642032	0.04344486	0.0314698];
ce_cai_64 = [0.80344415	0.6791795	0.5602511	0.41769797	0.28676978	0.20592265	0.16480906	0.14416228];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--MSE');
legend('XU-MSE-CE(CSI=16)','XU-MSE-CE(CSI=32)','XU-MSE-CE(CSI=64)','DL-MSE-CE(CSI=16)','DL-MSE-CE(CSI=32)','DL-MSE-CE(CSI=64)');
title('MSE')