function mount-usb
  if test "$1" = ""
    mkdir -p /home/user/.usb/
    sudo mount -o uid=(id -u),gid=(id -g) /dev/sda1 /home/user/.usb
  else if test "$2" = ""
    mkdir -p /home/user/.usb/
    sudo mount -o uid=(id -u),gid=(id -g) "$1" /home/user/.usb
  else
    sudo mount -o uid=(id -u),gid=(id -g) "$1" "$2"
  end
end
