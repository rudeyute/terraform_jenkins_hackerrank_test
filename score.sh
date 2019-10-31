#!/usr/bin/env bash

SCORE=0

if terraform validate; then
SCORE = SCORE + 45
  if terraform plan -out plan; then
  SCORE = SCORE + 15
    if terraform apply plan; then
      SCORE = SCORE + 15
      print_score
    fi
    print_score
  fi
  print_score
else
print_score
fi

print_score() {
  echo "FS_SCORE:${SCORE}%"
}
