#!/usr/bin/env bash
cd "$(dirname "$0")/.."
for m in ttl_74x552 ttl_74x556 ttl_74x557 ttl_74x558 ttl_74x559 ttl_74x560 ttl_74x561 ttl_74x563 ttl_74x564 ttl_74x566 ttl_74x567 ttl_74x568 ttl_74x569 ttl_74x570 ttl_74x571 ttl_74x572 ttl_74x573 ttl_74x574 ttl_74x575 ttl_74x576 ttl_74x577 ttl_74x579 ttl_74x580 ttl_74x582 ttl_74x583 ttl_74x588 ttl_74x589 ttl_74x590 ttl_74x591 ttl_74x592 ttl_74x593 ttl_74x594 ttl_74x595 ttl_74x596 ttl_74x597 ttl_74x598 ttl_74x599; do
  if bash scripts/run_one.sh "$m" > "/tmp/out_${m}.log" 2>&1; then
    echo "OK: $m"
  else
    echo "FAIL: $m"
  fi
done
