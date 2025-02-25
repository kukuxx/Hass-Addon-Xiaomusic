#!/bin/sh
set -ex

echo "Checking mounted directories..."

mkdir -p /config/xiaomusic /media/xiaomusic /media/xiaomusic/download

[ ! -L /app/conf ] && ln -sfn /config/xiaomusic /app/conf
[ ! -L /app/music ] && ln -sfn /media/xiaomusic /app/music
[ ! -L /app/music ] && ln -sfn /media/xiaomusic/download /app/music/download

echo "Mounted directories:"
ls -lah /app/conf /app/music /app/music/download

exec /bin/sh -c "/usr/bin/supervisord -c /etc/supervisor/supervisord.conf && tail -F /app/supervisord.log /app/xiaomusic.log.txt"
