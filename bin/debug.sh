#!/usr/bin/env bash

export WECHATY_PUPPET_SERVICE_TOKEN=586471df-7580-4b7d-940e-bde75d214dd5
echo "WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_PUPPET_SERVICE_TOKEN"
export WECHATY_PUPPET_SERVICE_ENDPOINT="127.0.0.1:8788"

docker run -ti \
  --rm \
  --name php-wechaty \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_SERVICE_TOKEN \
  -e WECHATY_PUPPET_SERVICE_ENDPOINT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  examples/ding-dong-bot.php