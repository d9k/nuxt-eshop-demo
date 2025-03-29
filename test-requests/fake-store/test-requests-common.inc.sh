#!/bin/bash

# DEFAULT_TEST_REQUESTS_ENV="local-dev"
DEFAULT_TEST_REQUESTS_ENV="local-dev"

function echoerr {
  printf "%s\n" "$*" >&2;
}

function require_env_file_variable { VAR_NAME="$1"
  if [[ -z "${!VAR_NAME}" ]]; then
    echo "Error: $VAR_NAME not defined. Check env file!"
    exit 100
  fi
}

if [ ${0##*/} == ${BASH_SOURCE[0]##*/} ]; then
  echoerr "This script is not meant to be executed directly!"
  echoerr "Use this script only by sourcing it."
  exit 1000
fi

if [ -z "$SCRIPTS_DIR" ]; then
  SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

if [ -z "$TEST_REQUESTS_ENV" ]; then
  echoerr "TEST_REQUESTS_ENV not defined! Using default value \"$DEFAULT_TEST_REQUESTS_ENV\""
  TEST_REQUESTS_ENV="$DEFAULT_TEST_REQUESTS_ENV"
fi

ENV_FILE_PATH="$SCRIPTS_DIR/.$TEST_REQUESTS_ENV.env"

if [[ ! -f "$ENV_FILE_PATH" ]]; then
  echoerr "Error: No env file \"$ENV_FILE_PATH\"!"
  cd "$SCRIPTS_DIR"
  # ls .*.env
  echoerr "\n# Available envs:"

  for FOUND_ENV_FILE_PATH in .*.env; do
    # echo "$FOUND_ENV_FILE_PATH"
    FOUND_ENV_FILE_NAME=$(basename "$FOUND_ENV_FILE_PATH")
    FOUND_ENV_FILE_EXTENSION=$(echo "$FOUND_ENV_FILE_NAME" | rev | cut -f 1 -d '.' | rev)
    FOUND_ENV_FILE_NAME_NO_EXT=$(echo "$FOUND_ENV_FILE_NAME" | sed -e s/\.${FOUND_ENV_FILE_EXTENSION}$//g)
    FOUND_ENV_NAME=$(echo "$FOUND_ENV_FILE_NAME_NO_EXT" | sed -e "s|^\.||")
    echoerr "- $FOUND_ENV_NAME"
  done

  exit 2000
fi

source "$ENV_FILE_PATH"

require_env_file_variable "FAKE_STORE_API_URL"
require_env_file_variable "FAKE_STORE_API_DOCS_URL"
