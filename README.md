# DOCKER-PHP-WECHATY-GETTING-STARTED

[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/wechaty/wechaty)
[![Docker Pulls](https://img.shields.io/docker/pulls/phpwechaty/php-wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/phpwechaty/php-wechaty/)
[![Docker Stars](https://img.shields.io/docker/stars/phpwechaty/php-wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/phpwechaty/php-wechaty/)
[![Docker CI](https://github.com/wechaty/docker-php-wechaty-getting-started/actions/workflows/docker.yml/badge.svg)](https://github.com/wechaty/docker-wechaty-getting-started/actions/workflows/docker.yml)
[![PHP Wechaty](https://img.shields.io/badge/wechaty-php--wechaty-blue.svg)](https://github.com/wechaty/php-wechaty)

[![dockeri.co](http://dockeri.co/image/phpwechaty/php-wechaty)](https://hub.docker.com/r/phpwechaty/php-wechaty/)

Getting Started Template for Docker Users

## FEATURES

1. PHP Wechaty is fully dockerized. So it will be very easy to be used as a MicroService.
1. Clone this repository, then you will be able to use Docker to run PHP Wechaty with ZERO configuration.

## REQUIREMENTS

1. Docker
1. Global Internet Connection

## USAGE

### Run Bot Examples

#### 1. Run PHP Example with no tls

Source code at `examples/ding-dong-bot.php`

```shell
./quick_start.sh
```

#### 2. Run PHP Example with tls

Source code at `examples/ding-dong-bot.php`

```shell
./quick_start_tls.sh
```

#### 3. Run PHP Example with docker-compose and no tls

Source code at `examples/ding-dong-bot.php`

```shell
./docker-compse-start.sh
```

#### 4. Run PHP Example with docker-compose and tls

Source code at `examples/ding-dong-bot.php`

```shell
./docker-compse-start-tls.sh
```

#### New environment variables

<!-- markdownlint-disable MD013 -->

1. `WECHATY_PUPPET_SERVICE_TLS_CA_CERT`: can be overwrite by `options.tlsRootCert`. Set Root CA Cert to verify the server or client.

For Puppet Server:

| Environment Variable | Options | Description |
| -------------------- | ------- | ----------- |
| `WECHATY_PUPPET_SERVICE_TLS_SERVER_CERT` | `options.tls.serverCert` | Server CA Cert (string data) |
| `WECHATY_PUPPET_SERVICE_TLS_SERVER_KEY` | `options.tls.serverKey` | Server CA Key (string data) |
| `WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER` | `options.tls.disable` | Set `true` to disable server TLS |

For Puppet Client:

| Environment Variable | Options | Description |
| -------------------- | ------- | ----------- |
| `WECHATY_PUPPET_SERVICE_AUTHORITY` | `options.authority` | Service discovery host, default: `api.chatie.io` |
| `WECHATY_PUPPET_SERVICE_TLS_CA_CERT` | `options.caCert` | Certification Authority Root Cert, default is using Wechaty Community root cert |
| `WECHATY_PUPPET_SERVICE_TLS_SERVER_NAME` | `options.serverName` | Server Name (mast match for SNI) |
| `WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT` | `options.tls.disable` | Set `true` to disable client TLS |

> Learn more about tls at https://github.com/wechaty/puppet-service

## DOCKER

### Install Docker

Quick & easy install Docker via:

```shell
curl -sSL https://get.docker.com | sh
```

Or

```shell
wget -qO- https://get.docker.com/ | sh
```

Get to know more about Docker at: <https://www.docker.com/>

## TEST

BATS: [HOW TO USE BATS TO TEST YOUR COMMAND LINE TOOLS](https://www.engineyard.com/blog/bats-test-command-line-tools)

## SEE ALSO

1. PHP Wechaty Getting Started: <https://github.com/wechaty/php-wechaty-getting-started>

## HISTORY

### v0.1 (Nov 23, 2021)

Init docker support.

## AUTHOR

[@zhangchunsheng](https://github.com/zhangchunsheng) - Chunsheng Zhang (张春生)

## COPYRIGHT & LICENSE

- Code & Docs © 2021-now Chunsheng Zhang \<zhangchunsheng423@gmail.com\>
- Code released under the Apache-2.0 License
- Docs released under Creative Commons
