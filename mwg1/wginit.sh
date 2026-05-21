#!/bin/sh
set -e

if [ ! -f /mwg/wg0.conf ]; then
  echo "ERROR: /mwg/wg0.conf not found"
  exit 1
fi

# Поднимаем WireGuard
wg-quick up /mwg/wg0.conf

# Настраиваем policy routing после появления wg0
ip route replace default dev wg0 table 200

ip rule show | grep -q "from 10.13.14.3 lookup 200" \
  || ip rule add from 10.13.14.3/32 table 200

echo "WireGuard started"
wg show
ip rule
ip route show table 200

# Чтобы контейнер не завершился
sleep infinity