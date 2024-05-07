#############################
###   Program Shortcuts   ###
#############################
### EXA
alias ls "exa -1 --icons --group-directories-first"
alias la "exa -lah --icons --group-directories-first"
alias lt "exa --icons -lah --tree --level=3"
# files
alias lf "exa --icons --group-directories-first | grep -v  "
alias laf "exa --icons -lah --group-directories-first | grep -v  "
# directories
alias ld "exa --icons -D --oneline --group-directories-first"
alias lad "exa --icons -lah -D --group-directories-first"
### End EXA

### Peco
alias pd peco_select_cd
alias pf peco_select_file
alias ph peco_select_history
alias pz peco_select_z
### End Peco

### aria2
function aria2-resume
  set thing (xxd -p -seek 10 -l 20 ./*.aria2)
  aria2c --continue=true (echo "magnet:?xt=urn:btih:$thing")
  set -e thing
end

### Nix
alias ned "nix develop -c \$EDITOR ."
alias ns "nix develop -c \$SHELL"

# Vim
alias vs '$EDITOR +:terminal +:startinsert'

### Mpv
alias mpv "mpv --hwdec"

###----------end----------###

#############################
###   Random programs     ###
############################%
alias b "bat"
alias g "git"
alias size "du -sh"
alias github "gh repo view --web"
alias ccopy "xclip -selection clipboard"
alias open "xdg-open"
alias o "xdg-open"
alias p "projects"
###----------end----------###

###################
###   Server    ###
###################
set -x SERVER "192.168.1.199"
alias server "ssh server@$SERVER"
alias server-ping "ssh server@$SERVER echo test > /dev/null 2> /dev/null"
alias server-shutdown "ssh server@$SERVER -t sudo shutdown now"
alias server-reboot "ssh server@$SERVER -t sudo reboot now"
alias server-sudo "ssh server@$SERVER -t sudo"
###-----end-----###
