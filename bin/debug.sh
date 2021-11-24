#!/usr/bin/env bash

export WECHATY_PUPPET_SERVICE_TOKEN=b6adee3f-a388-4e47-bc8e-82001462fd06
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