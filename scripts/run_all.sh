#!/usr/bin/env bash
# run_all.sh
#
# Run every chip testbench that exists under rtl/chips/.
# Prints a per-chip status line and a final summary. Exit non-zero if any
# chip fails.

set -uo pipefail

REPO_ROOT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." && pwd )"
RUN_ONE="${REPO_ROOT}/scripts/run_one.sh"

pass_count=0
fail_count=0
skipped_count=0
failed_modules=()

for rtl_dir in "${REPO_ROOT}"/rtl/chips/*/; do
    module="$(basename "${rtl_dir}")"
    rtl_file="${rtl_dir}${module}.sv"
    tb_file="${REPO_ROOT}/tb/chips/${module}/tb_${module}.sv"

    if [[ ! -f "${rtl_file}" || ! -f "${tb_file}" ]]; then
        echo "SKIP  ${module}  (RTL or testbench missing)"
        skipped_count=$((skipped_count + 1))
        continue
    fi

    if "${RUN_ONE}" "${module}" >/tmp/run_one_"${module}".log 2>&1; then
        echo "PASS  ${module}"
        pass_count=$((pass_count + 1))
    else
        echo "FAIL  ${module}  (see /tmp/run_one_${module}.log)"
        fail_count=$((fail_count + 1))
        failed_modules+=("${module}")
    fi
done

echo
echo "----------------------------------------"
echo "PASS:    ${pass_count}"
echo "FAIL:    ${fail_count}"
echo "SKIPPED: ${skipped_count}"
echo "----------------------------------------"

if [[ ${fail_count} -gt 0 ]]; then
    echo "Failed modules:"
    for m in "${failed_modules[@]}"; do
        echo "  ${m}"
    done
    exit 1
fi

exit 0
