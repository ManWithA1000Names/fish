alias m-onedrive "mkdir -p ~/.onedrive && rclone mount onedrive: ~/.onedrive --vfs-cache-mode full --vfs-refresh --dir-cache-time 24h --onedrive-delta --vfs-cache-max-age 24h --tpslimit 2 --tpslimit-burst 0 --daemon"
alias um-onedrive "fusermount -u ~/.onedrive" 

alias m-googledrive "mkdir -p ~/.googledrive && rclone mount GoogleDrive: ~/.googledrive --daemon"
alias um-googledrive "fusermount -u ~/.googledrive"

function m-all
  m-onedrive
  m-googledrive
end

function um-all
  um-onedrive
  um-googledrive
end
