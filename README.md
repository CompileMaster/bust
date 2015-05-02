
脚本说明：

SecurityPolicy-Server.cmd ：windows服务端策略生成，默认加入tcp 80（http协议）和tcp 443（https协议） 服务端口，可以同时为加密码客户端和未加密客户端服务。

SecurityPolicy-Client.cmd ：windows客户端策略生成，默认加入tcp 80（http协议）和tcp 443（https协议）访问端口，可以同时访问加密服务端和未加密服务端。

策略为自适应的，加密和未加密双方可以正常通信。psk为共享密钥，起形成加密通道的作用，建议不要修改。
后边会持续改进脚本，以支持数字证书和linux系统，欢迎大家测试，有问题请提交issue。
