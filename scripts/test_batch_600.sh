#!/usr/bin/env bash
cd "$(dirname "$0")/.."
for m in ttl_74x600 ttl_74x601 ttl_74x602 ttl_74x603 ttl_74x604 ttl_74x605 ttl_74x606 ttl_74x607 ttl_74x608 ttl_74x610 ttl_74x611 ttl_74x612 ttl_74x613 ttl_74x614 ttl_74x615 ttl_74x616 ttl_74x617 ttl_74x620 ttl_74x621 ttl_74x622 ttl_74x623 ttl_74x624 ttl_74x625 ttl_74x626 ttl_74x627 ttl_74x628 ttl_74x629 ttl_74x630 ttl_74x631 ttl_74x632 ttl_74x633 ttl_74x634 ttl_74x635 ttl_74x636 ttl_74x637 ttl_74x638 ttl_74x639 ttl_74x640 ttl_74x641 ttl_74x642; do
  if bash scripts/run_one.sh "$m" > "/tmp/out_${m}.log" 2>&1; then
    echo "OK: $m"
  else
    echo "FAIL: $m"
  fi
done
