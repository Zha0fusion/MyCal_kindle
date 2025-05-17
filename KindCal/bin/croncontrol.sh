#!/bin/sh

mntroot rw

# 设置 crontab 路径
CRONDIR="/var/spool/cron/crontabs"
CRONFILE="$CRONDIR/root"

# 确保目录存在
mkdir -p "$CRONDIR"

# 写入每 30 分钟执行一次的任务
# 使用绝对路径确保可靠执行
echo "* * * * * /mnt/us/extensions/KindCal/bin/cron_showcal.sh" > "$CRONFILE"

# 重启 crond（杀掉旧的，重启新的）
killall crond 2>/dev/null
crond -c "$CRONDIR"
