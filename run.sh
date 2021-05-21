touch /app/log
nohup sh /app/loop.sh >> /app/log &
tail -f /app/log
