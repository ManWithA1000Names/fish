function code
  set EDITOR "zeditor"

  # ghostty -e "cd emcc-custom-functionality && nix develop -c npm start" &
  $EDITOR ~/dummy &
  sleep 2
  cd ~/emcc-custom-functionality/
  nc "$EDITOR" . &
  nc npm start
end
