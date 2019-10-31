#!/usr/bin/env bash

SCORE=0

if terraform validate; then
SCORE = SCORE + 45
  if terraform plan -out plan; then
  SCORE = SCORE + 15
    if terraform apply plan; then
      SCORE = SCORE + 15
    fi
  fi
else
echo "FS_SCORE:${SCORE}%"
fi

