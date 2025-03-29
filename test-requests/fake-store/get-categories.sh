#!/bin/bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$SCRIPTS_DIR/test-requests-common.inc.sh" || exit 1
SCRIPT_FILE_NAME=$(basename "$0")
SCRIPT_NAME=$(echo "$SCRIPT_FILE_NAME" | cut -d'.' -f-1)

OUT="$SCRIPT_NAME.$TEST_REQUESTS_ENV.json"

if [[ -z "$EDITOR" ]]; then
  EDITOR=nano
fi

sed 's/^ *//' \
<<ENDDOC
  # Categories API docs

  Retrieve a list of all available categories.

  ${FAKE_STORE_API_DOCS_URL}/en/rest/categories/

ENDDOC

(\
  set -x; \
  \
  curl \
    --get \
    "${FAKE_STORE_API_URL}/categories" \
  | jq > "$OUT"; \
  \
  $EDITOR "$OUT"\
)
