#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="xmr-us-east1.nanopool.org"
PORT=10343
MYADDRESS="44kTZZ5RUFfHi58sb7fk6SYJ541yXhWkwCzJUEArwe4fATt9xBkFka2htcKuBPXXKsJpuZJHm3rNGgv5qSrG17Mp5xXxdNa"
COINNAME="monero"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
