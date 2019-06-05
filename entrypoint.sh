#!/bin/sh

# read ENV variable(V2RAY_SERVER, V2RAY_PORT, V2RAY_ID) and set to config

file=/etc/v2ray/config.json
if [[ -f $file ]]; then
    if [[ "$V2RAY_SERVER" && "$V2RAY_PORT" && "$V2RAY_ID" ]]; then
        cat $file | sed "s/__V2RAY_SERVER__/$V2RAY_SERVER/" | sed "s/__V2RAY_PORT__/$V2RAY_PORT/" | sed "s/__V2RAY_ID__/$V2RAY_ID/" > /config.json
        v2ray -config=/config.json
    else
        v2ray -config=$file
    fi
fi

