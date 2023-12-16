#Working on the rhel system

#Search for the term 'root' in the /etc/passwd file
grep root /etc/passwd

#Search for lines starting with 'root' in the /etc/passwd file
grep ^root /etc/passwd

#Search for the term 'bash' in the /etc/passwd file
grep bash /etc/passwd

#Search for lines ending with 'bash' in the /etc/passwd file
grep bash$ /etc/passwd

#Search for the term 'Password' in the /etc/ssh/sshd_config file with superuser permissions
sudo grep Password /etc/ssh/sshd_config

#Search for lines starting with 'Password' in the /etc/ssh/sshd_config file with superuser permissions
sudo grep ^Password /etc/ssh/sshd_config

#Count the number of lines in the /etc/ssh/sshd_config file with superuser permissions
sudo wc -l /etc/ssh/sshd_config

#Display lines in the /etc/ssh/sshd_config file that are not comments or empty, with superuser permissions
sudo grep -vE '^(#|$)' /etc/ssh/sshd_config

#Count the number of lines in the /etc/ssh/sshd_config file that are not comments or empty, with superuser permissions
sudo grep -vE '^(#|$)' /etc/ssh/sshd_config | wc -l