#Working on alma

#Create a process
sleep 5000 &

#Display process info
ps -lfp $(pgrep sleep)

#The nice values goes from -20 to +19 => The lower the number the higher the priority

#Set the nice value
nice -n10 sleep 5000 &

#Display process info
ps -lfp $(pgrep sleep)

#Set the nice value
nice -n19 sleep 5000 &

#Display process info
ps -lfp $(pgrep sleep)

#Change the nice value
renice -n 15 -p 3286

#Display process info
ps -lfp $(pgrep sleep)

#To change the nice value for higher priority we need elevated rights
sudo renice -n -20 -p 3286

#Display process info
ps -lfp $(pgrep sleep)

#Without elevated rights it will fail
renice -n -20 -p 3286