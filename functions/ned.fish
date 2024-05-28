function ned
  if ! test -e "flake.nix"
    echo "flake.nix: No such file or directory."
    exit 1
  end

  if set root (git rev-parse --show-toplevel)
    cd "$root"
    set last_file (git ls-files --cached --others --exclude-standard | xargs stat -c "%Y %n" | sort -nr | head -1 | awk '{print $2}')
  else
    set last_file (find . -type f -exec stat -c "%Y %n" {} \; | sort -nr | head -1 | awk '{print $2}')
  end
  nix develop -c $EDITOR $last_file
end
