1、添加163镜像源（/etc/apt/source.list）：
deb http://mirrors.163.com/debian/ jessie main non-free contrib
deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib
deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ jessie main non-free contrib
deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ jessie-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib

2、添加ppa源：
sudo add-apt-repository ppa:webupd8team/java
(sudo add-apt-repository --remove ppa:webupd8team/java)
sudo apt-get update

注：
# 如果add-apt-repository not found, 执行sudo apt-get install software-properties-common

3、install jdk
sudo apt-get install oracle-java8-installer
（sudo apt-get install openjdk-8-jdk）

4、查看已安装的jdk等工具
update-java-alternatives --list

5、设置默认的jdk
sudo update-alternatives --config java
