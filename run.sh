touch /app/log
nohup python /app/hostloc_auto_get_points.py >> /app/log &
tail -f /app/log
