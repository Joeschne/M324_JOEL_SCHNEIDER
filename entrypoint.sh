#!/bin/sh
set -eu

# Please
git config --global --add safe.directory /repo

cd /repo || exit 1

if [ -d .git ] && [ "${BASE_REF:-}" ] && [ "${HEAD_SHA:-}" ]; then
  git fetch origin "$BASE_REF"
  git fetch origin "$HEAD_SHA"

  echo "=== PR DIFF (origin/$BASE_REF...$HEAD_SHA) ==="
  git diff "origin/$BASE_REF...$HEAD_SHA"
  echo "=== END PR DIFF ==="
else
  echo "Please work already"
fi

/review.sh
