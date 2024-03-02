function clone
  if test -z "$argv[1]"
    echo "Please provide a repo to clone."
    return 1
  end
  if string match 'http*' $argv[1]
    if test "$argv[2]" = "full"
      echo "Executing: git clone $argv[1]"
      git clone $argv[1]
    else
      echo "Executing: git clone $argv[1] --depth 1"
      git clone $argv[1] --depth 1
    end
  else
    if test "$argv[2]" = "full"
      echo "Executing: gh repo clone $argv[1]"
      gh repo clone $argv[1]
    else
      echo "Executing: gh repo clone $argv[1] -- --depth 1"
      gh repo clone $argv[1] -- --depth 1
    end
  end
end
