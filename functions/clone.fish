function clone
  if test -z "$argv[1]"
    echo "Please provide a repo to clone."
    return 1
  end
  if string match 'http*' $argv[1]
    if test -n "$argv[2]"
      git clone $argv[1] --depth $argv[2]
    else
      git clone $argv[1]
    end
  else
    if test -n "$argv[2]"
      gh repo clone $argv[1] -- --depth $argv[2]
    else
      gh repo clone $argv[1]
    end
  end
end
