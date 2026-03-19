#!/usr/bin/env bash
set -e

: "${ACE_STEP_PROTOCOL:=http}"
: "${ACE_STEP_HOST:=192.168.1.64}"
: "${ACE_STEP_PORT:=7860}"
: "${ACE_STEP_BASE_PATH:=}"

envsubst '${ACE_STEP_PROTOCOL} ${ACE_STEP_HOST} ${ACE_STEP_PORT} ${ACE_STEP_BASE_PATH}' \
  < /usr/share/nginx/html/config.template.js \
  > /usr/share/nginx/html/config.js

exec "$@"
