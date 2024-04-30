#Working on the rhel system in virtualbox

#Boot Process
#1 - BIOS/UEFI => The system bios/uefi is used to start the system and locate the boot partition
#2 - GRUB => The boot loader in RHEL is GRUB and allows you to selevt the Linux jernel to load
#3 - Kernel => The kernel is loaded but prior to this the initialization ram dis is loaded to customize the boot process to your hardware

#Edit linux entry

Remove rhgb and quiet and add rd.break enforcing=0 (hit ctrl +x to start)

#Remount the '/sysroot' directory with read-write permissions
mount -o remount,rw /sysroot

#Change the root directory to '/sysroot' for the current process
chroot /sysroot

#Change the password of the current user
passwd

#Exit the current shell
exit

#Remount the '/sysroot' directory with read-only permissions
mount -o remount,ro /sysroot

exit

#Login as root and
restorecon -v /etc/shadow

getenforce

setenforce 1