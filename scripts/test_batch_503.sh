#!/usr/bin/env bash
cd "$(dirname "$0")/.."
for m in ttl_74x503 ttl_74x504 ttl_74x505 ttl_74x508 ttl_74x515 ttl_74x516 ttl_74x518 ttl_74x519 ttl_74x520 ttl_74x521 ttl_74x522 ttl_74x524 ttl_74x525 ttl_74x526 ttl_74x527 ttl_74x528 ttl_74x531 ttl_74x532 ttl_74x533 ttl_74x534 ttl_74x535 ttl_74x536 ttl_74x537 ttl_74x538 ttl_74x539 ttl_74x540 ttl_74x541 ttl_74x543 ttl_74x544 ttl_74x545 ttl_74x546 ttl_74ls547 ttl_74f547 ttl_74ls548 ttl_74f548 ttl_74x549 ttl_74x550 ttl_74x551; do
  if bash scripts/run_one.sh "$m" > "/tmp/out_${m}.log" 2>&1; then
    echo "OK: $m"
  else
    echo "FAIL: $m"
  fi
done
