function mount-usb
  if test "$argv[1]" = "--help" || test "$argv[1]" = '-h'
    echo "Mount FAT USB drives with ease!"
    echo ""
    echo "USAGE:"
    echo "> mount-usb [FLAGS...] [DEVICE=/dev/sda1] [DIRECTORY=~/.usb/]"
    echo ""
    echo "FLAGS:"
    echo "--help | -h Show this message."
    echo ""
    echo "If DEVICE is not provided it defaults to '/dev/sda1'."
    echo "If DIRECTORY is not provided it defaults to '~/.usb' and is created if necessary."
    echo "The current user will have full read/write/execute permissions on the mounted drive!"
    echo ""
    echo "WARNING:"
    echo "It is assumed that your drive has a filesystem of in FAT familiy!"
    echo "Trying to mount anything else will most likely fail!"
    echo ""
    echo "You cannot provide a specific directory without providing the device first!"
    echo "> mount-usb ~/.mydiretory           # ERROR!"
    echo "> mount-usb /dev/sda1 ~/.mydiretory # OK"
    echo ""
    echo "EXAMPLES:" 
    echo "> mount-usb                    # /dev/sda1 will be mounted in ~/.usb"
    echo "> mount-usb /dev/sdx2          # /dev/sdx2 will be mounted in ~/.usb"
    echo "> mount-usb /dev/sdx2 /mnt/usb # /dev/sdx2 will be mounted in /mnt/usb"
    return 0
  end

  if test "$argv[1]" = ""
    mkdir -p "/home/$USER/.usb/"
    sudo mount -o uid=(id -u),gid=(id -g) /dev/sda1 "/home/$USER/.usb"
  else if test "$argv[2]" = ""
    mkdir -p "/home/$USER/.usb/"
    sudo mount -o uid=(id -u),gid=(id -g) "$argv[1]" "/home/$USER/.usb"
  else
    if ! test -d "$argv[2]" 
      echo "Directory: '$argv[2]' does not exist! Create it first and then run the command again."
      return 1
    end

    sudo mount -o uid=(id -u),gid=(id -g) "$argv[1]" "$argv[2]"
  end
end
