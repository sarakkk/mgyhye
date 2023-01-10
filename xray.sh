#!/bin/sh
if [ ! -f UUID ]; then
  UUID="606489ac-55ea-49df-96ff-0b3a5b3b91e1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

