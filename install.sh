#!/bin/bash
VERISON=1.0
echo Stopping the current instance of tilt

echo Downloading Mount Royal tilt application version $VERSION.
cd /home/pi
wget -q https://raw.githubusercontent.com/craigsidcarlson/mount-royal-tilt-flow/master/flow-hdmi.json -O /home/pi/.node-red/flows_tiltpi.json

echo Updating url endpoint to direct to Mount Royal servers.
for i in *.json; do
    sed -i 's|"cloudURL": ["https://script.google.com/macros/s/AKfycbwNXh6rEWoULd0vxWxDylG_PJwQwe0dn5hdtSkuC4k3D9AXBSA/exec, true]|dfg|g' $i
done

echo Done updating system
reboot