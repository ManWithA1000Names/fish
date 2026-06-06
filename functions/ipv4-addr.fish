function ipv4-addr
  ip -4 addr show up | grep -v "127.0.0.1" | awk '/inet / {print $2}' | cut -d/ -f1 | head -n1
end
