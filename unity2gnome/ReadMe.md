1����װgnome����    
sudo apt-get install gnome-shell  

sudo apt-get install gnome-themes*   

sudo apt-get install gnome-tweak-tool   

2������gnomeΪĬ����������   
sudo  /usr/lib/lightdm/lightdm-set-defaults -s gnome-shell  <==== Ĭ��gnome3Ϊ��������   

����  

sudo  /usr/lib/lightdm/lightdm-set-defaults -s gnome-classic <===== Ĭ��gnome2Ϊ��������   

3��ɾ��unity���棨ע�����Բ�ִ��ɾ��unity������unity��gnome����ϵͳ���棬�ڵ�½����ѡ������ϵͳ��   
sudo apt-get -y -auto-remove purge unity   

sudo apt-get -y -auto-remove purge unity-common  

sudo apt-get -y -auto-remove purge unity-lens*  

sudo apt-get -y -auto-remove purge unity-services  

4������ϵͳ�����gnome����ϵͳ�İ�װ  