
脚本说明：

SeucrityPolicy-Server.cmd ：windows服务端策略生成，默认加入tcp 80（http协议）和tcp 443（https协议） 服务端口，可以同时为加密码客户端和未加密客户端服务。

SecurityPolicy-Client.cmd ：windows客户端策略生成，默认加入tcp 80（http协议）和tcp 443（https协议）访问端口，可以同时访问加密服务端和未加密服务端。

后边会持续改进脚本，以支持数字证书和linux系统，欢迎大家测试，有问题请提交issue。
