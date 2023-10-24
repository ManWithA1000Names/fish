function gg
  if test -z "$argv"
    echo "gg - commit and push all changes."
    echo "USAGE: gg <commit message>"
  else
    git add (git rev-parse --show-toplevel)
    git commit -m "$argv[1]"
    git push
  end
end
