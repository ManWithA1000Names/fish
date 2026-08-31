function umount-usb
  if test "$argv[1]" = ""
    sudo umount -l "/home/$USER/.usb/"
  else
    sudo umount -l "$argv[1]"
  end
end
