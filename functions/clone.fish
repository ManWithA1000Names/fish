function clone
  if test -z "$argv[1]"
    echo "Please provide a repo to clone."
    return 1
  end
  if string match 'http*' $argv[1]
    if test "$argv[2]" = "full"
      git clone $argv[1]
    else
      git clone $argv[1] --depth 1
    end
  else
    if test "$argv[2]" = "full"
      gh repo clone $argv[1]
    else
      gh repo clone $argv[1] -- --depth 1
    end
  end
end
