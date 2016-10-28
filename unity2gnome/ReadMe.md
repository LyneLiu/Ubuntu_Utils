1、安装gnome桌面    
sudo apt-get install gnome-shell  

sudo apt-get install gnome-themes*   

sudo apt-get install gnome-tweak-tool   

2、设置gnome为默认启动桌面   
sudo  /usr/lib/lightdm/lightdm-set-defaults -s gnome-shell  <==== 默认gnome3为启动桌面   

或者  

sudo  /usr/lib/lightdm/lightdm-set-defaults -s gnome-classic <===== 默认gnome2为启动桌面   

3、删除unity桌面（注：可以不执行删除unity操作，unity和gnome桌面系统共存，在登陆界面选择桌面系统）   
sudo apt-get -y -auto-remove purge unity   

sudo apt-get -y -auto-remove purge unity-common  

sudo apt-get -y -auto-remove purge unity-lens*  

sudo apt-get -y -auto-remove purge unity-services  

4、重启系统，完成gnome桌面系统的安装  