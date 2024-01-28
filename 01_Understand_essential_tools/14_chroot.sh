#Interrupt Grub and navigate to the Linux16 line

#replace rhgb quite with rd.break

#ctrl + x to continue the boot process

mount -o remount,rw /sysroot

chroot /sysroot

passwd

touch /.autorelabel

exit

exit