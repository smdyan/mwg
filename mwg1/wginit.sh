#!/bin/sh
set -e

if [ ! -f /mwg/wg0.conf ]; then
  echo "ERROR: /mwg/wg0.conf not found"
  exit 1
fi

# Поднимаем WireGuard
wg-quick up /mwg/wg0.conf


# Чтобы контейнер не завершился
sleep infinity