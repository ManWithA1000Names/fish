function term_name
  basename "/"(ps -f -p (cat /proc/(echo %self)/stat | cut -d \  -f 4) | tail -1 | sed 's/^.* //')
end

function fu 
  set prev ( string split " " $history[1])
  set prev_cmd $prev[1]
  set prev_args $prev[2..(count $prev)]
  sudo $prev_cmd $prev_args
end

function ports
   sudo lsof -i -P -n | grep LISTEN
end;
