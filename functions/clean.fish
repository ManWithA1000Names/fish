function clean
  set ndots ./*
  set dots ./.*
  if count ndots >/dev/null
    rm -rf $ndots
  end
  if count dots > /dev/null
    rm -rf $dots
  end
end
