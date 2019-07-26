from model_work import *

gen_data(data_chacuolv,D_pi)
# train_layer(layer,D_pi)
# save_layer(layer,D_pi)
# train_layer_again(layer,D_pi)

# [ber,mse] = test_model(5,data_ce,Snr)


# 测试
# BER = []
# MSE = []
# for Snr in range(0,16,2):
#     print('*' * 50)
#     print("SNR:%d"%(Snr))
#     [ber,mse] = test_model(5,data_ce,Snr)
#     BER.append(ber)
#     MSE.append(mse)
# print('-' * 50)
# print("BER:")
# print(BER)
# print('-' * 50)
# print("MSE:")
# print(MSE)



# 数据产生
# gen_data(data_ce,D_pi)
# gen_data(data_chacuolv)
#
# 训练
# train_layer(1)   # train  H_1
# save_layer(1)
# train_layer(2)   # train  D_1
# save_layer(2)
# train_layer(3)   # train  H_2
# save_layer(3)
# train_layer(4)   # train  D_2
# save_layer(4)

# 再训练
# train_layer_again(1)
# train_layer_again(2)
# train_layer_again(3)
# train_layer_again(4)

# 测试
# BER = []
# MSE = []
# for Snr in range(0,16,2):
#     print('*' * 50)
#     print("SNR:%d"%(Snr))
#     [ber,mse] = test_model(5,data_chacuolv,Snr)
#     BER.append(ber)
#     MSE.append(mse)
# print('-' * 50)
# print("BER:")
# print(BER)
# print('-' * 50)
# print("MSE:")
# print(MSE)
