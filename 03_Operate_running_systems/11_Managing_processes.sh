#Working on alma

#Change to the proc
cd /proc

#List the bash process id
echo $$

#Change into the directory
cd /proc/$$

pwd

ls

#The bash process
ps

#Watch for a specific process
ps -p $$

#More details
ps -lp $$

ps -lfp $$

#What about pstree
pstree

#We need to install but what is the package name
dnf provides '/usr/bin/pstree'

sudo dnf install -y psmisc

#Now we can use pstree
pstree

#Lets create some processes
sleep 5000 &
sleep 5000 &
sleep 5000 &
sleep 5000 &

#With pgrep
pgrep sleep

#Display some info
ps -fp $(!!)

#Terminate all sleep processes
pkill sleep

#Lets create a process again
sleep 5000 &

#Send a signal
pkill -kill sleep