#!/usr/bin/env bash

export WECHATY_PUPPET_HOSTIE_TOKEN=73626c45-5f3d-4185-b760-8c8b53ad9db6
echo "WECHATY_PUPPET_HOSTIE_TOKEN=$WECHATY_PUPPET_HOSTIE_TOKEN"
export WECHATY_PUPPET_HOSTIE_ENDPOINT="localhost:8788"

docker run -tid \
  --rm \
  --name php-wechaty \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_HOSTIE_TOKEN \
  -e WECHATY_PUPPET_HOSTIE_ENDPOINT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  examples/ding-dong-bot.php