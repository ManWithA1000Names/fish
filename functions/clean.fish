function clean
  for entry in (ls -a | awk '{print $1}')
    rm -rf "$entry"
  end
end
