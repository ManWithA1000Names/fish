function cder 
  cd $argv[1];
  if test -n "$argv[2]"
    cd $argv[2];
  end
end

alias cdd "cder ~/Downloads"
alias cdp "cder ~/Pictures"
alias cdc "cder ~/.config"
alias cdv "cder ~/Videos"
alias cde "cder ~/Empty"
alias cdoc "cder ~/Documents"

function cdev
  if test -z "$argv[1]"
    cd (projects random --path)
  else
    set dir (projects path "$argv[1]")
    if test "$status" != "0"
      return 1
    else
        cd "$dir"
    end
  end
end


