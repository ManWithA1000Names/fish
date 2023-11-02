function matches_trimmed
  if string match "$argv[1]" "$argv[2]" > /dev/null
    set lenn (string length "$argv[1]")
    set lenn (math "$lenn - 1")
    string sub -e -"$lenn" "$argv[2]"
    return 0
  end
  return 1
end

function rex
  if test -f "$argv[1]"
    echo -e "Unpacking '\x1b[33m$argv[1]\x1b[0m'..."
    if set rest (matches_trimmed "*.tar.bz2" $argv[1])
      tar xjf $argv[1]
    else if set rest (matches_trimmed "*.tar.gz" $argv[1])
      tar xzf $argv[1]
    else if set rest (matches_trimmed "*.bz2" $argv[1])
      bunzip2 $argv[1]
    else if set rest  (matches_trimmed "*.rar" $argv[1])
      unrar x $argv[1]
    else if set rest  (matches_trimmed "*.gz" $argv[1])
      gunzip $argv[1]
    else if set rest  (matches_trimmed "*.tar" $argv[1])
      tar xf $argv[1]
    else if set rest  (matches_trimmed "*.tbz2" $argv[1])
      tar xjf $argv[1]
    else if set rest  (matches_trimmed "*.tgz" $argv[1])
      tar xzf $argv[1]
    else if set rest  (matches_trimmed "*.zip" $argv[1])
      unzip $argv[1]
    else if set rest  (matches_trimmed "*.vsix" $argv[1])
      unzip $argv[1]
    else if set rest  (matches_trimmed "*.Z" $argv[1])
      uncompress $argv[1]
    else if set rest  (matches_trimmed "*.7z" $argv[1])
      7z x $argv[1]
    else if set rest  (matches_trimmed "*.deb" $argv[1])
      ar x $argv[1]
    else if set rest  (matches_trimmed "*.tar.xz" $argv[1])
      tar xf $argv[1]
    else if set rest  (matches_trimmed "*.tar.zst" $argv[1])
      unzstd $argv[1]
    else if set rest  (matches_trimmed "*.gpg" $argv[1])
      gpg $argv[1]
    else
      echo ""
      echo -e "Ended up with the file: \x1b[32m$argv[1]\x1b[0m"
      return 1
    end
    rex "$rest"
  else if test -d "$argv[1]"
    echo ""
    echo -e "Ended up with the directory: \x1b[32m$argv[1]\x1b[0m"
  else 
    echo ""
    echo -e "\x1b[31m$argv[1]\x1b[0m is not a valid file or directory"
  end
end
