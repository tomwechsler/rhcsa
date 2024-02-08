#Working on alma

#&& => The second command only runs if the first command succedes mkdir dir1 && cd dir1
#|| => The second command only runs if the first command fails cd dir1 || mkdir dir1

#Print the exit status of the last executed command
echo $?

#List the details of the file '/etc/hosts'
ls /etc/hosts

#Print the exit status of the last executed command
echo $?

#Try to list the details of the file '/etc/Hosts' (note that Unix-like systems are case-sensitive)
ls /etc/Hosts

#Print the exit status of the last executed command
echo $?

#List the files and directories in the current directory
ls

#Choose a directory which exists
mkdir etc

#Print the exit status of the last executed command
echo $?

#Try to create a directory named 'etc'; if it already exists, change to it
mkdir etc || cd etc

#Print the current working directory
pwd

#Create a directory named 'sales' and if it's successful, change to it
mkdir sales && cd sales

#Try to change to the 'mkt' directory; if it doesn't exist, create it and then change to it
cd mkt || mkdir mkt && cd mkt

#Print the current working directory
pwd

#Change to the home directory
cd

#Remove the directory named 'mkt' and its contents
rm -r mkt

#Try to change to the 'mkt' directory; if it doesn't exist, create it and then change to it
cd mkt 2>/dev/null || mkdir mkt && cd mkt

#Print the current working directory
pwd

#Change to the home directory
cd

#Try to change to the 'mkt' directory; if it doesn't exist, create it and then change to it
cd mkt 2>/dev/null || mkdir mkt && cd mkt

#Change to the home directory
cd

#Group them together
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

#Change to the home directory
cd

#Remove the directory named 'mkt' and its contents
rm -r mkt

#Change to the 'mkt' directory if it exists; if it doesn't, create it and then change to it
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

#Print the current working directory
pwd

#Try to change to a subdirectory 'mkt' within the current 'mkt' directory; if it doesn't exist, create it and then change to it
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

#Print the current working directory
pwd