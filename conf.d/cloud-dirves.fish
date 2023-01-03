# OneDrive
alias m-onedrive "rclone mount OneDrive: ~/Drives/OneDrive --vfs-cache-mode full --daemon"
alias um-onedrive "fusermount -u ~/Drives/OneDrive" 

# NextCloud
alias m-nextcloud "rclone mount NextCloud: ~/Drives/NextCloud --vfs-cache-mode full --daemon"
alias um-nextcloud "fusermount -u ~/Drives/NextCloud"

# 
alias m-googledrive "rclone mount GoogleDrive: ~/Drives/GoogleDrive --daemon"
alias um-googledrive "fusermount -u ~/Drives/GoogleDrive"

function m-all
  m-onedrive
  m-nextcloud
  m-googledrive
end

function um-all
  um-onedrive
  um-nextcloud
  um-googledrive
end
