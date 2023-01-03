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
alias cdev "cder ~/Github"
alias cdoc "cder ~/Documents"
