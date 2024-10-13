function github
  if set root (git rev-parse --show-toplevel 2>/dev/null)
    gh repo view --web
  else
    xdg-open 'https://www.github.com'
  end
end
