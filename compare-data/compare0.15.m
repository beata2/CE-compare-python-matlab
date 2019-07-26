% ��������Ϊ0.15
%% 512x16��BER
clear ;
clc 
close all;
snr=-0:2:14;
% subplot(2,1,1);
NO_ce_xu = [0.1873	0.1337	0.08344	0.04222	0.01616	0.004169	0.0006542	5.45e-5];
Has_ce_xu = [0.2425	0.1752	0.1103	0.05569	0.02161	0.005588	0.0008747	7.2e-5];
NO_ce_cai = [0.18854	0.134304	0.084027587	0.043037	0.016752	0.004465	0.0007381	7.40234375e-05];
Has_ce_cai = [0.23083818359375	0.16512412109375	0.1032427734375	0.0527853515625	0.020678125	0.0057134765625	0.00101474609375	9.873046875e-05];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x16--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x16��MSE
snr=-0:2:14;
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.3372	0.2633	0.1897	0.1224	0.07548	0.04929	0.03719	0.0314];
Has_ce_xu = [0.5527	0.4333	0.3083	0.1971	0.1179	0.07256	0.0502	0.03926];
NO_ce_cai = [0.30590	0.23044	0.159918	0.099505	0.055951	0.030695	0.018083	0.012084];
Has_ce_cai = [0.38548112	0.28249314	0.19327705	0.11835137	0.0669385	0.03773779	0.023766603	0.01642785];

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
NO_ce_xu = [0.1881	0.136	0.08573	0.04537	0.01793	0.004922	0.0008598	8.88e-5];
Has_ce_xu = [0.2771	0.2048	0.1323	0.06991	0.02778	0.007502	0.001265	0.0001206];
NO_ce_cai = [0.188779	0.1363050	0.086480	0.0447611	0.017414	0.004462	0.0007008	5.9423828125e-05];
Has_ce_cai = [0.26138203125	0.1902244140625	0.1208798828125	0.0626037109375	0.02442197265625	0.006683203125	0.001257421875	0.0001890625];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x32--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x32��MSE
snr=-0:2:14;
% grid on;  
% subplot(2,1,2);
NO_ce_xu = [0.5044	0.4233	0.3308	0.2378	0.1633	0.1172	0.09396	0.08316];
Has_ce_xu = [0.8423	0.7326	0.5821	0.4135	0.2682	0.1763	0.1277	0.1039];
NO_ce_cai = [0.482118	0.3833	0.2805	0.18334	0.10919	0.06344	0.039331	0.026811];
Has_ce_cai = [0.6458207	0.5049578	0.36728802	0.23672226	0.14047903	0.08652562	0.059430245	0.045800854];

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
NO_ce_xu = [0.1904	0.1396	0.09187	0.05203	0.02364	0.008487	0.002274	0.0005281];
Has_ce_xu = [0.3167	0.2466	0.1683	0.09778	0.04415	0.01541	0.00433	0.001175];
NO_ce_cai = [0.1916754	0.1404381	0.091569	0.050312	0.02156181	0.006648	0.001480	0.000368];
Has_ce_cai = [0.29786865234375	0.22557431640625	0.14934853515625	0.0828146484375	0.03717333984375	0.0138556640625	0.00497314453125	0.002211328125];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--BER');
legend('BER--NO ce xu','BER--Has ce xu','BER--NO ce cai','BER--Has ce cai');
title('BER')

%% 512x64��MSE
% grid on;  
% subplot(2,1,2);
snr=-0:2:14;
NO_ce_xu = [0.6778	0.6102	0.5202	0.4193	0.3243	0.2566	0.216	0.196];
Has_ce_xu = [1.071	1.025	0.9175	0.7467	0.5511	0.3971	0.3011	0.2486];
NO_ce_cai = [0.772649	0.64436	0.49768	0.345491	0.216396	0.126959	0.0743511	0.0446577];
Has_ce_cai = [0.9089497	0.809227	0.68728185	0.51861876	0.36154976	0.2648115	0.21509092	0.18846753];

semilogy(snr,NO_ce_xu,'K:o',snr,Has_ce_xu,'r:^',snr,NO_ce_cai,'K-o',snr,Has_ce_cai,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('512x64--MSE');
legend('MSE--NO ce xu','MSE--Has ce xu','MSE--NO ce cai','MSE--Has ce cai');
title('MSE')


%% ����BER�Ա�
snr=-0:2:14;
ce_xu_16 = [0.2425	0.1752	0.1103	0.05569	0.02161	0.005588	0.0008747	7.2e-5];
ce_xu_32 = [0.2771	0.2048	0.1323	0.06991	0.02778	0.007502	0.001265	0.0001206];
ce_xu_64 = [0.3167	0.2466	0.1683	0.09778	0.04415	0.01541	0.00433	0.001175];
ce_cai_16 = [0.23083818359375	0.16512412109375	0.1032427734375	0.0527853515625	0.020678125	0.0057134765625	0.00101474609375	9.873046875e-05];
ce_cai_32 = [0.26138203125	0.1902244140625	0.1208798828125	0.0626037109375	0.02442197265625	0.006683203125	0.001257421875	0.0001890625];
ce_cai_64 = [0.29786865234375	0.22557431640625	0.14934853515625	0.0828146484375	0.03717333984375	0.0138556640625	0.00497314453125	0.002211328125];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--BER');
legend('XU-BER-CE(CSI=16)','XU-BER-CE(CSI=32)','XU-BER-CE(CSI=64)','DL-BER-CE(CSI=16)','DL-BER-CE(CSI=32)','DL-BER-CE(CSI=64)');
title('BER')

%% ����MSE�Ա�
snr=-0:2:14;
ce_xu_16 = [0.5527	0.4333	0.3083	0.1971	0.1179	0.07256	0.0502	0.03926];
ce_xu_32 = [0.8423	0.7326	0.5821	0.4135	0.2682	0.1763	0.1277	0.1039];
ce_xu_64 = [1.071	1.025	0.9175	0.7467	0.5511	0.3971	0.3011	0.2486];
ce_cai_16 = [0.38548112	0.28249314	0.19327705	0.11835137	0.0669385	0.03773779	0.023766603	0.01642785];
ce_cai_32 = [0.6458207	0.5049578	0.36728802	0.23672226	0.14047903	0.08652562	0.059430245	0.045800854];
ce_cai_64 = [0.9089497	0.809227	0.68728185	0.51861876	0.36154976	0.2648115	0.21509092	0.18846753];

semilogy(snr,ce_xu_16,'K:o',snr,ce_xu_32,'b:o',snr,ce_xu_64,'r:o',snr,ce_cai_16,'K-^',snr,ce_cai_32,'b-^',snr,ce_cai_64,'r-^','LineWidth',2);
xlabel('SNR');
ylabel('CE--MSE');
legend('XU-MSE-CE(CSI=16)','XU-MSE-CE(CSI=32)','XU-MSE-CE(CSI=64)','DL-MSE-CE(CSI=16)','DL-MSE-CE(CSI=32)','DL-MSE-CE(CSI=64)');
title('MSE')