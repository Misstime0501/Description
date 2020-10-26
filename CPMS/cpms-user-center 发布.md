# cpms-user-center 发布说明

## 安装工具
```
安装 Finalshell （http://www.hostbuf.com/）
```

## 配置登录
```
登录进入 118.102.25.201:77
登录公钥：id_rsa_202042_zll113170
公钥密码：zll113170
```

## 软件包
```
文件地址：/data/docker/cpms-user-center/cpms-user-center-1.0.jar
```

## 软件包下载到本地
```
拷贝命令：scp -P 77 -i /Users/chenli/id_rsa_202042_zll113170 root@118.102.25.201:/data/docker/cpms-user-center/cpms-user-center-1.0.jar /Users/chenli/Desktop/


scp -P 77 -i /Users/chenli/id_rsa_202042_zll113170 root@118.102.25.201:/data/docker/cpms-process-engine/cpms-process-engine-1.0.jar /Users/chenli/Desktop/ 

```

## Jar 包刻盘
```
将 jar 包刻入光盘
```

## ===========================

## 登录云平台环境
```
登录命令：Xshell 创建登录
用户名：root
密码：Admin@9000
```


## 拷贝 Jar 包到云平台环境
```
拷贝 Jar 包：cp /     /opt/docker/cpms-user-cneter
```


## 重启服务
```
进入目录：/opt/docker/cpms-user-center
执行命令：sh deploy.sh
```


## 登录页面测试
```
测试页面地址：172.13.29.171:10002
```

## ===========================

## 查看日志（docker 命令）

| Docker 命令 | 功能说明 |
| -- | -- |
| docker ps | 查看所有服务列表 |
| docker logs -t | 查看历史日志 |
| docker logs -f | 查看实时日志 |






