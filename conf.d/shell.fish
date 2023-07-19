function ckdir
    if test -z $argv[1]
        echo "please provide the name of the directory to create";
        return 1;
    end;
    mkdir $argv[1];
    cd $argv[1]
end

alias rm "rm -rf"
function new
  if test -z $argv[1]
    echo 'Create nested files and directories'
    echo 'If the input ends with a / is it assumed to be a directory other wise it is a file.'
    echo ""
    echo 'USAGE: new <input>'
    return 1;
  end
  for arg in $argv
    if string match --regex '/$' "$arg" > /dev/null
      mkdir -p "$arg"  
    else
      mkdir -p (dirname "$arg")
      touch "$arg"
    end
  end
end

function now
  if test -z "$argv[1]"
    echo "Create nested files and directories and then cd/vim the created path"
    echo "If the input ends with a / is it assumed to be a directory other wise it is a file."
    echo ""
    echo "USAGE: now <input>"
    return 1;
  end
  if not new "$argv[1]"
    return 1
  end
  if string match --regex '/$' "$argv[1]" > /dev/null
    cd "$argv[1]"
  else
    vim "$argv[1]"
  end
end

function add_var
  if test -z $argv[1] || test -z $argv[2]
    echo "please use this syntax: 'NAME' 'VALUE'"
    return 1
  end
  echo "set -x $argv[1] \"$argv[2]\"" >> ~/.config/fish/conf.d/set.fish
end

function remove_var
  if test -z $argv
    echo "Please spcify variable name to remove"
    return 1
  end
  if set fish_index (grep -n "$argv" ~/.config/fish/config.fish | string split ":")[1]
    sed -i "$fish_index d" ~/.config/fish/config.fish
  else
    set_color red
    echo "didn't find the variable name in config.fish"
    set_color normal
  end
end

function d
  if test -z "$argv"
    return
  end
  command $argv &> /dev/null &
  set pid $last_pid
  disown $pid
  echo "$pid"
end
