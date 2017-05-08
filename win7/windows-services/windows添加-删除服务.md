通过winsw实现服务的添加和删除

1、下载winsw.exe文件，可以将其重命名，比如：ServiceUtil.exe

install——to install the service to Windows Service Controller. This command requires some preliminary steps described in the Installation Guide.
uninstall——to uninstall the service. The opposite operation of above.
start——to start the service. The service must have already been installed.
stop——to stop the service.
restart——to restart the service. If the service is not currently running, this command acts like start.
status——to check the current status of the service.

This command prints one line to the console.
NonExistent——indicates the service is not currently installed
Started——to indicate the service is currently running
Stopped——to indicate that the service is installed but not currently running.

2、创建ServiceUtil.xml配置文件（文件名需要与exe文件名一致）
<service>  
 <id>nginx</id>  
 <name>nginx</name>  
 <description>nginx</description>  
 <executable>D:\hadoop\nginx-1.12.0\nginx.exe</executable>  
 <logpath>D:\hadoop\nginx-1.12.0\logs\</logpath>  
 <logmode>roll</logmode>  
 <startargument>-p D:\hadoop\nginx-1.12.0</startargument>  
 <stopargument>-p D:\hadoop\nginx-1.12.0 -s stop</stopargument>  
</service>  

（配置参数说明：https://github.com/kohsuke/winsw/blob/master/doc/xmlConfigFile.md）
 
3、install服务
ServiceUtil.exe install ngnix.exe

4、uninstall服务
ServiceUtil.exe uninstall ngnix.exe

参考链接：
https://github.com/kohsuke/winsw
http://blog.csdn.net/defonds/article/details/7906005