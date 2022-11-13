function ckdir
    if test -z $argv[1]
        echo "please provide the name of the directory to create";
        return 1;
    end;
    mkdir $argv[1];
    cd $argv[1]
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
  if test -z "$argv[1]"
    return
  end
  command "$argv[1]" &> /dev/null &
  set pid $last_pid
  disown $pid
  echo "$pid"
end
