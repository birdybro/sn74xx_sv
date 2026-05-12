#!/usr/bin/env bash
cd "$(dirname "$0")/.."
for p in 617 630 631 632 633 634 635 636 637; do
  f="rtl/chips/ttl_74x${p}/ttl_74x${p}.sv"
  sed -i 's|if (((i+1) >> j) & 1)|if ((((i+1) >> j) \& 32'\''d1) != 32'\''d0)|g' "$f"
done
