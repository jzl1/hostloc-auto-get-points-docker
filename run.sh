touch /app/log
nohup while true; do python /app/hostloc_auto_get_points.py; sleep 6h; done >> /app/log &
tail -f /app/log
