###############################
###   Configuration Files   ###
###############################
alias frc "vim ~/.config/fish/config.fish"
alias grc "vim ~/.gitconfig"
alias vrc "vim ~/.config/nvim/init.lua"

alias src "source ~/.config/fish/config.fish && source ~/.config/fish/conf.d/* && source ~/.config/fish/functions/*"
###----------end------------###

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

alias b "bat"
alias g "git"
alias vim "nvim"
alias size "du -sh"
alias dnf "sudo dnf"
alias github "gh repo view --web"
alias ccopy "xclip -selection clipboard"
###----------end----------###
