function peco_select_cd
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  set -l max_depth $PECO_SELECT_CD_MAX_DEPTH
  set -l ignore_case $PECO_SELECT_CD_IGNORE_CASE

  if test -z $max_depth
    set max_depth 3
  end

  if test -z $ignore_case
    find . -maxdepth $max_depth -type d | peco --prompt "Change Directory >" $peco_flags | read line
  else
    find . -maxdepth $max_depth -type d | egrep -v $ignore_case | peco -prompt "Change Directory >" $peco_flags | read line
  end

  if test $line
    cd $line
    commandline -f repaint
  end
end

function peco_select_file
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  fd -t f | peco --prompt "Open File >" $peco_flags | read line
  if test $line
    commandline "$EDITOR $line"
    commandline -f execute
  end
end

function peco_select_history
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  history | peco --prompt "Choose previous command >" $peco_flags | read line
  if test $line
    commandline $line
  else
    commandline ''
  end
end

function peco_select_z
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  zoxide query -l | sort -rn | cut -c 12- | peco --prompt "Change to frequent Directory >" $peco_flags | read line
  if test $line
    cd $line
    commandline -f repaint
  end
end
