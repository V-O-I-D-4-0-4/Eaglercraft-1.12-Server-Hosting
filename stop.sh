#!/bin/sh

cd "$(dirname "$0")"

# Start backend server in foreground
cd server
java -Dterminal.jline=false -Dterminal.ansi=true -Xms4M -Xmx2G -jar server.jar nogui &
BACKEND_PID=$!
cd ..

# Start BungeeCord in foreground
cd bungee
java -Xms512M -Xmx512M -jar bungee.jar &
BUNGEE_PID=$!
cd ..

# Trap CTRL-C and stop both servers cleanly
trap 'echo "stop" > server/console.in; echo "end" > bungee/console.in' INT

# Wait for both to exit
wait $BACKEND_PID
wait $BUNGEE_PID
