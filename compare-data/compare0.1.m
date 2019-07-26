% ��������Ϊ0.1
%% 512x16��BER
clear ;
clc 
close all;
snr=-0:2:14;
% subplot(2,1,1);
NO_ce_xu = [0.1798	0.1267	0.07735	0.03807	0.01417	0.003433	0.0005106	4.05e-5];
Has_ce_xu = [0.2363	0.1679	0.1023	0.05064	0.01911	0.0048204	0.000715	6.5e-5];
NO_ce_cai = [0.1807730	0.1274021	0.0781672	0.0385651	0.014443	0.0036520	0.0005659	4.8291015625e-05];
Has_ce_cai = [0.22358876953125	0.15673115234375	0.09612314453125	0.04748115234375	0.01802939453125	0.0045884765625	0.00075478515625	7.890625e-05];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x16--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x16��MSE
snr=-0:2:14;
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.4432	0.3589	0.2671	0.1813	0.1199	0.08483	0.06823	0.06031];
Has_ce_xu = [0.6624	0.5407	0.4014	0.2687	0.1702	0.1131	0.08448	0.07017];
NO_ce_cai = [0.41486	0.320147	0.22410	0.13817	0.07758	0.042321	0.024866	0.016355];
Has_ce_cai = [0.5123259	0.38121727	0.26463103	0.16070278	0.09250472	0.05354659	0.035571847	0.02607294];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x16--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')

%% 512x32��BER
clear ;
clc 
close all;
snr=-0:2:14;
% subplot(2,1,1);
NO_ce_xu = [0.1796	0.1271	0.07878	0.04011	0.01531	0.004036	0.0006672	6.71e-05];
Has_ce_xu = [0.2697	0.1966	0.1236	0.06361	0.02433	0.006338	0.001018	9.8e-5];
NO_ce_cai = [0.181086	0.128288	0.07896	0.03939	0.014460	0.003425	0.000470	3.134765625e-05];
Has_ce_cai = [0.2525435546875	0.18120693359375	0.112264453125	0.05573095703125	0.02092109375	0.0054537109375	0.00089638671875	0.0001037109375];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x32--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x32��MSE
snr=-0:2:14;
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.6161	0.53510	0.4359	0.3311	0.2437	0.1892	0.1612	0.1481];
Has_ce_xu = [0.9288	0.8374	0.6903	0.51514	0.3577	0.254	0.199	0.1714];
NO_ce_cai = [0.61980	0.50363	0.37245	0.243443	0.14439	0.0832	0.05109	0.034126];
Has_ce_cai = [0.7964336	0.64209425	0.47752416	0.3117109	0.19044864	0.1231102	0.08893324	0.07140158];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x32--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')

%% 512x64��BER
clear ;
clc 
close all;
snr=-0:2:14;
% subplot(2,1,1);
NO_ce_xu = [0.1813	0.1299	0.08203	0.04418	0.01904	0.006321	0.001634	0.0003404];
Has_ce_xu = [0.31	0.2363	0.1574	0.08701	0.03755	0.01164	0.002921	0.0006177];
NO_ce_cai = [0.18212	0.13069	0.082229	0.043062	0.01712	0.004600	0.000828	0.0001133];
Has_ce_cai = [0.28805244140625	0.2135626953125	0.1376962890625	0.0737595703125	0.03115654296875	0.0104806640625	0.00292939453125	0.0008552734375];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x64��MSE
% grid on;  
% subplot(2,1,2);
snr=-0:2:14;
NO_ce_xu = [0.7665	0.7087	0.6257	0.5265	0.4329	0.3646	0.3255	0.3055];
Has_ce_xu = [1.102	1.072	.9816	0.8262	0.6447	0.4946	0.4048	0.3538];
NO_ce_cai = [0.9351635	0.79858	0.628127	0.439402	0.27413	0.16098	0.094726	0.056156];
Has_ce_cai = [1.0110173	0.9399698	0.8171567	0.6395152	0.4653944	0.35694325	0.29922956	0.2694387];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')


%% BER�Ա�
snr=-0:2:14;
ce_xu_16 = [0.2363	0.1679	0.1023	0.05064	0.01911	0.0048204	0.000715	6.5e-5];
ce_xu_32 = [0.2697	0.1966	0.1236	0.06361	0.02433	0.006338	0.001018	9.8e-5];
ce_xu_64 = [0.31	0.2363	0.1574	0.08701	0.03755	0.01164	0.002921	0.0006177];
ce_cai_16 = [0.22358876953125	0.15673115234375	0.09612314453125	0.04748115234375	0.01802939453125	0.0045884765625	0.00075478515625	7.890625e-05];
ce_cai_32 = [0.2525435546875	0.18120693359375	0.112264453125	0.05573095703125	0.02092109375	0.0054537109375	0.00089638671875	0.0001037109375];
ce_cai_64 = [0.28805244140625	0.2135626953125	0.1376962890625	0.0737595703125	0.03115654296875	0.0104806640625	0.00292939453125	0.0008552734375];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--BER');
legend('XU-BER-CE(CSI=16)','XU-BER-CE(CSI=32)','XU-BER-CE(CSI=64)','DL-BER-CE(CSI=16)','DL-BER-CE(CSI=32)','DL-BER-CE(CSI=64)');
title('BER')

%% MSE�Ա�
snr=-0:2:14;
ce_xu_16 = [0.6624	0.5407	0.4014	0.2687	0.1702	0.1131	0.08448	0.07017];
ce_xu_32 = [0.9288	0.8374	0.6903	0.51514	0.3577	0.254	0.199	0.1714];
ce_xu_64 = [1.102	1.072	.9816	0.8262	0.6447	0.4946	0.4048	0.3538];
ce_cai_16 = [0.5123259	0.38121727	0.26463103	0.16070278	0.09250472	0.05354659	0.035571847	0.02607294];
ce_cai_32 = [0.7964336	0.64209425	0.47752416	0.3117109	0.19044864	0.1231102	0.08893324	0.07140158];
ce_cai_64 = [1.0110173	0.9399698	0.8171567	0.6395152	0.4653944	0.35694325	0.29922956	0.2694387];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--MSE');
legend('XU-MSE-CE(CSI=16)','XU-MSE-CE(CSI=32)','XU-MSE-CE(CSI=64)','DL-MSE-CE(CSI=16)','DL-MSE-CE(CSI=32)','DL-MSE-CE(CSI=64)');
title('MSE')