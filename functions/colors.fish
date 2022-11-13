function colors
  set bg_code 38
  if test "$argv[1]" = "bg"
    set bg_code 48
  end
  for i in (seq 0 15)
    echo -n " "
    for j in (seq 0 15)
      set code (math "$i * 16 + $j")
      set m "m"
      set spaces " "
      if test "$code" -lt "10"
        set spaces "   "
      else if test "$code" -lt "100"
        set spaces "  "
      end
      echo -en "\033[$bg_code;5;$code$m $code$spaces"
    end
    echo -e "\033[0m"
  end
end
