#!/usr/bin/env bash

SCORE=0
cd configs

print_score() {
  echo "FS_SCORE:${SCORE}%"
}

if terraform validate; then
  (( SCORE += 45 ))
  if terraform plan -out plan; then
  (( SCORE += 15 ))
    if terraform apply plan; then
      (( SCORE += 15 ))
      print_score
    fi
    print_score
  fi
  print_score
else
print_score
fi