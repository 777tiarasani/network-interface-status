#!/bin/bash
# Script untuk memeriksa status interface jaringan dan menonaktifkan yang down

for iface in $(ip -o link show | awk -F': ' '{print $2}'); do
    state=$(cat /sys/class/net/$iface/operstate)
    echo "Interface $iface is $state"
    if [ "$state" = "down" ]; then
        echo "→ Disabling $iface..."
        sudo ip link set $iface down
    fi
done
