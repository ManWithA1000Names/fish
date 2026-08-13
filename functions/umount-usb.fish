function umount-usb
  if test "$1" = ""
    sudo umount -l /home/user/.usb/
  else
    sudo umount -l "$2"
  end
end
