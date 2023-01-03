function ex
  if test -f "$argv[1]"
    if string match "*.tar.bz2" $argv[1]
      tar xjf $argv[1]
    else if string match "*.tar.gz" $argv[1]
      tar xzf $argv[1]
    else if string match "*.bz2" $argv[1]
      bunzip2 $argv[1]
    else if string match "*.rar" $argv[1]
      unrar x $argv[1]
    else if string match "*.gz" $argv[1]
      gunzip $argv[1]
    else if string match "*.tar" $argv[1]
      tar xf $argv[1]
    else if string match "*.tbz2" $argv[1]
      tar xjf $argv[1]
    else if string match "*.tgz" $argv[1]
      tar xzf $argv[1]
    else if string match "*.zip" $argv[1]
      unzip $argv[1]
    else if string match "*.Z" $argv[1]
      uncompress $argv[1]
    else if string match "*.7z" $argv[1]
      7z x $argv[1]
    else if string match "*.deb" $argv[1]
      ar x $argv[1]
    else if string match "*.tar.xz" $argv[1]
      tar xf $argv[1]
    else if string match "*.tar.zst" $argv[1]
      unzstd $argv[1]
    else
      echo "$argv[1] is an unidentified compression format."
    end
  else 
    echo "$argv[1] is not a valid file"
  end
end
