function rmount
  if test "$argv[1]" = ""
    echo "Please specify the remote to mount."
    rclone listremotes
    exit 1;
  end
  rclone mount "$argv[1]" ~/Cloud/ --vfs-cache-mode full
end
