#!/usr/bin/env bash
# docker pull wechaty/wechaty
export WECHATY_PUPPET="wechaty-puppet-wechat"
export WECHATY_TOKEN=$(curl -s https://www.uuidgenerator.net/api/version4)
echo "WECHATY_TOKEN=$WECHATY_TOKEN"
export WECHATY_PUPPET_SERVER_PORT="8788"
export WECHATY_LOG="verbose"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER="false"

docker run -tid \
  --name wechaty_puppet_service_token_gateway \
  --privileged \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET \
  -e WECHATY_PUPPET_SERVER_PORT \
  -e WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER \
  -e WECHATY_TOKEN \
  wechaty/wechaty
