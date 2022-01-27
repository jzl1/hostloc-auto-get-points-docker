FROM alpine:latest
WORKDIR /app
RUN apk update \
  && apk add --no-cache curl python3 py3-pip \
  && pip install requests pyaes \
  && curl -L https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/hostloc_auto_get_points.py > /app/hostloc_auto_get_points.py \
  && curl -L https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/run.sh > /app/run.sh \
  && curl -L https://raw.githubusercontent.com/jzl1/hostloc-auto-get-points-docker/main/loop.sh > /app/loop.sh \
  && chmod 755 /app/* \
  && rm -rf /var/cache/apk/*
CMD ["/bin/sh","/app/run.sh"]
