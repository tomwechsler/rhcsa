#Working on alma

#Create a new file named 'my.sh' if it doesn't already exist
touch my.sh

#Determine the type of the 'my.sh' file
file my.sh

#Append the string "echo hello" to the 'my.sh' file
echo "echo hello" >> my.sh

#Determine the type of the 'my.sh' file again, after the modification
file my.sh

vim my.sh
#!/bin/bash

#Save and exit

file my.sh

vim my.sh
#Remove Shebang
ps -f -p $$

#Save and exit

chmod a+x my.sh

#The script is executing in the current shell
./my.sh

#Start a bourne shell
sh

#The script is executing in the current shell
./my.sh

#Add shebang
vim my.sh
#!/bin/bash

#Save and exit

./my.sh