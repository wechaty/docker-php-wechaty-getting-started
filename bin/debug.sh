#!/usr/bin/env bash

export WECHATY_PUPPET_HOSTIE_TOKEN=5b7dc776-d583-406d-b22b-fdc68720408c
echo "WECHATY_PUPPET_HOSTIE_TOKEN=$WECHATY_PUPPET_HOSTIE_TOKEN"
export WECHATY_PUPPET_HOSTIE_ENDPOINT="127.0.0.1:8788"

docker run -ti \
  --rm \
  --name php-wechaty \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_HOSTIE_TOKEN \
  -e WECHATY_PUPPET_HOSTIE_ENDPOINT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  examples/ding-dong-bot.php