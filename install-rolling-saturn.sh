#!/bin/bash
echo -e "Installing local copy to /sbin for root to run..."
cp ./rolling-saturn /sbin/rolling-saturn || echo -e "\e[31m ERROR could not install ./rolling-saturn to /sbin "
chmod +x /sbin/rolling-saturn || echo -e "\e[31m ERROR could not make /sbin/rolling-saturn executable "
echo -e "\e[0m Setting /root/yum.before so rolling-saturn does not reboot the system right away..."
yum list installed | grep "kernel[.]" > /root/yum.before
echo -e "\e[35m Install of rolling-saturn complete."
echo -e "\e[0m Run by typing rolling-saturn "
echo "as a superuser such as root. "
echo "It runs forever until you reboot or control c etc."
echo "Happy updates."
