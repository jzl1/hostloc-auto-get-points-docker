FROM python:rc-alpine3.13
WORKDIR /app
RUN apk update \
  && apk add wget \
  && pip install requests pyaes \
  && wget -O /app/hostloc_auto_get_points.py "https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/hostloc_auto_get_points.py" \
  && wget -O /app/run.sh "https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/run.sh" \
  && wget -O /app/loop.sh "https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/loop.sh" \
  && rm -rf /var/cache/apk/*
CMD ["sh","/app/run.sh"]
