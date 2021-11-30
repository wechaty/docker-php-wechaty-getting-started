#!/usr/bin/env bash
export WECHATY_PUPPET="wechaty-puppet-wechat"
export WECHATY_TOKEN=$(curl -s https://www.uuidgenerator.net/api/version4)
echo "WECHATY_TOKEN=$WECHATY_TOKEN"
export WECHATY_PUPPET_SERVER_PORT="8788"
export WECHATY_LOG="verbose"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER="false"

export WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_TOKEN
echo "WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_PUPPET_SERVICE_TOKEN"
export WECHATY_PUPPET_SERVICE_ENDPOINT="127.0.0.1:8788"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT="false"

docker-compose up
# docker-compose down