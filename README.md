# rolling-saturn

Interactive shell script for keeping a CentOS 7 test build at latest and printing yum list output in a loop.

This will reboot your machine for the first run if you don't use the install script first.

When it detects a kernel version change, rolling-saturn reboots the system.

Also, the first time it is run, it will reboot the machine unless the following is done (via install script):

yum list installed | grep "kernel[.]" > /root/yum.before

That way the first run has something to compare to! 
