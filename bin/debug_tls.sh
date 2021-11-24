#!/usr/bin/env bash

export WECHATY_PUPPET_SERVICE_TOKEN=ecd4ea79-6f76-452a-b89e-001b9de984b5
echo "WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_PUPPET_SERVICE_TOKEN"
export WECHATY_PUPPET_SERVICE_ENDPOINT="127.0.0.1:8788"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT="false"

docker run -ti \
  --rm \
  --name php-wechaty \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_SERVICE_TOKEN \
  -e WECHATY_PUPPET_SERVICE_ENDPOINT \
  -e WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  examples/ding-dong-bot.php