# How to make a 1.12.2 eaglercraft server
## Docs:
https://dragon731012.github.io/Eaglercraft-1.12-Server-Hosting/
use this fr the auto killing of the server



for p in /proc/[0-9]*; do
  if grep -q "java" "$p/cmdline" 2>/dev/null; then
    kill -9 "$(basename "$p")"
  fi
done
