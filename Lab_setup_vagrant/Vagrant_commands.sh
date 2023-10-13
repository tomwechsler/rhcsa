#Validate the file
vagrant validate

#Start the virtual machines. (Remember, that if you do not specify a VM name all the defined VMs will be started.)
vagrant up

#Check their status with the following command
vagrant status

#Check the global status of all the VMs
vagrant global-status

#Connect to the test1 virtual machine to confirm that it’s working and then exit it
vagrant ssh test1
exit

#Connect to the test2 virtual machine to confirm that it’s working
vagrant ssh test2
ping -c 3 192.168.56.101

#Stop the Virtual Machines
vagrant halt

#Destroy the Virtual Machines
vagrant destroy