#Working on the the rhel system

#Do not run on a production system!

#Important => working as root
sudo -i

#Create a new user named 'fred' with a home directory
useradd -m fred

#List the security context of the '/etc/shadow' file
ls -Z /etc/shadow

#Change the security context type of the '/etc/shadow' file to 'user_home_t'
chcon -t user_home_t /etc/shadow

#List the security context of the '/etc/shadow' file again, after the modification
ls -Z /etc/shadow

#Switch to the 'fred' user using sudo
sudo -i -u fred

#Restore the default security context of the '/etc/shadow' file
restorecon -v /etc/shadow

#Switch to the 'fred' user using sudo again
sudo -i -u fred

#Exit the current shell (which is running as 'fred')
exit

#Exit the current shell again (which should return you to your original user)
exit

#Switch to the root user using sudo
sudo -i