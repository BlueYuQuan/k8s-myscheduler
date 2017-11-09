#This Dockerfile uses to test the my java scheruldr progrem for k8s 
#VERSION 1.0
#ImageName: sjq-java-scheduler
#Author: songjinquan

#基于基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/sjq-study/java：8
#维护者
MAINTAINER 441452752@qq.com
#将当前目录下的文件全部复制到基础镜像的/usr/src/myapp目录下
COPY . /usr/src/myapp
#为后续的RUN,CMD,ENTRYPOINT指令配置工作目录
WORKDIR /usr/src/myapp
#编译.java程序
RUN javac Myscheduler.java
#指定启动容器时执行的命令--启动程序
CMD ["java", "Myscheduler"]
