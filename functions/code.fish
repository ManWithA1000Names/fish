function code
  if test -z "$argv[1]"
    projects code (projects random)
  else
    set project (projects fuzz "$argv[1]") 
    if test "$status" != "0"
      return $status
    end
    projects code "$project"
  end
end
