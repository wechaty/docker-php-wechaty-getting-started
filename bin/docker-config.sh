PHP_WECHATY_IMAGE=phpwechaty/php-wechaty:v1

function docker::env () {
  for var in "$@"
  do
      echo -n " -e $var"
  done
}