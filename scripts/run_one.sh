#!/usr/bin/env bash
# run_one.sh <module_name>
#
# Lint, simulate, and (if yosys is on PATH) synthesis-check a single chip.
# Module name is the normalized lowercase form, e.g. ttl_74x00.
#
# Exit codes:
#   0   pass
#   1   usage / file not found
#   2   verilator lint failed
#   3   verilator build failed
#   4   testbench failed (returned non-zero or did not print PASS)
#   5   yosys synth check failed (only when yosys is present)

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "usage: $0 <module_name>" >&2
    echo "example: $0 ttl_74x00" >&2
    exit 1
fi

MODULE="$1"
REPO_ROOT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." && pwd )"
RTL="${REPO_ROOT}/rtl/chips/${MODULE}/${MODULE}.sv"
TB="${REPO_ROOT}/tb/chips/${MODULE}/tb_${MODULE}.sv"
PKG="${REPO_ROOT}/rtl/common/ttl_pkg.sv"
SIM_DIR="${REPO_ROOT}/sim/${MODULE}"

if [[ ! -f "${RTL}" ]]; then
    echo "ERROR: RTL not found: ${RTL}" >&2
    exit 1
fi
if [[ ! -f "${TB}" ]]; then
    echo "ERROR: Testbench not found: ${TB}" >&2
    exit 1
fi

# Only pull in ttl_pkg when the chip actually imports it.
SOURCES=()
if grep -q "import ttl_pkg" "${RTL}" "${TB}"; then
    SOURCES+=("${PKG}")
fi
SOURCES+=("${RTL}" "${TB}")

mkdir -p "${SIM_DIR}"

# ---- 1) Lint --------------------------------------------------------------
echo "[${MODULE}] verilator --lint-only"
if ! verilator --lint-only -Wall \
        -Wno-DECLFILENAME -Wno-UNUSEDSIGNAL -Wno-TIMESCALEMOD \
        -Wno-MULTIDRIVEN \
        --top-module "tb_${MODULE}" \
        "${SOURCES[@]}" 2>&1; then
    echo "[${MODULE}] LINT FAIL" >&2
    exit 2
fi

# ---- 2) Build + run -------------------------------------------------------
echo "[${MODULE}] verilator --binary"
cd "${SIM_DIR}"
if ! verilator --binary --quiet \
        -Wno-DECLFILENAME -Wno-UNUSEDSIGNAL -Wno-TIMESCALEMOD \
        -Wno-MULTIDRIVEN \
        --top-module "tb_${MODULE}" \
        -o "tb_${MODULE}" \
        "${SOURCES[@]}" 2>&1; then
    echo "[${MODULE}] BUILD FAIL" >&2
    exit 3
fi

echo "[${MODULE}] running testbench"
RUN_LOG="${SIM_DIR}/run.log"
if ! "./obj_dir/tb_${MODULE}" >"${RUN_LOG}" 2>&1; then
    echo "[${MODULE}] RUN FAIL (testbench exited non-zero)" >&2
    cat "${RUN_LOG}" >&2
    exit 4
fi

if ! grep -q "^PASS: " "${RUN_LOG}"; then
    echo "[${MODULE}] RUN FAIL (no PASS line found)" >&2
    cat "${RUN_LOG}" >&2
    exit 4
fi

echo "[${MODULE}] $(grep '^PASS: ' "${RUN_LOG}" | tail -n1)"

# ---- 3) Optional Yosys synth check ---------------------------------------
if command -v yosys >/dev/null 2>&1; then
    echo "[${MODULE}] yosys synth check"
    YOSYS_SOURCES=""
    for src in "${SOURCES[@]}"; do
        # The testbench is not synthesizable; exclude it.
        if [[ "${src}" == *"/tb_"* ]]; then
            continue
        fi
        YOSYS_SOURCES="${YOSYS_SOURCES} ${src}"
    done
    if ! yosys -q -p "read_verilog -sv${YOSYS_SOURCES}; synth -top ${MODULE}; stat" \
            >"${SIM_DIR}/yosys.log" 2>&1; then
        echo "[${MODULE}] YOSYS FAIL" >&2
        cat "${SIM_DIR}/yosys.log" >&2
        exit 5
    fi
    echo "[${MODULE}] yosys ok"
else
    echo "[${MODULE}] yosys not on PATH, synth check skipped"
fi

echo "[${MODULE}] ALL OK"
