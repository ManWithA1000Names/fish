function add_to_path
  for path in $argv
    set abs_path (realpath $path)
    if contains $abs_path $PATH
      echo "$abs_path is already in \$PATH"
      return 1
    end
    set -U fish_user_paths "$abs_path" $fish_user_paths
  end
end

function path
  echo $PATH
end

function remove_from_path
  for path in $argv
    set abs_path (realpath $path)
    if set index (contains $abs_path $fish_user_paths)
      set -U --erase fish_user_paths[$index]
    else
      set_color red
      echo "$abs_path is not present in \$fish_user_paths"
      set_color normal
    end
  end
end
