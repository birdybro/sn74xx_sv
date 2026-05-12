# 7400-Series SystemVerilog Reimplementation Tasks

Source: https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits

This file is generated from build/chips.json.
Do not manually edit chip task entries.
Update build/chips.json, then run scripts/update_tasks.py.

Status legend:
- [ ] Not started
- [~] In progress
- [x] Complete
- [!] Blocked or digital-only approximation

## Task rules

For every chip:
1. Update build/chips.json.
2. Regenerate tasks.md with scripts/update_tasks.py.
3. Create synthesizable RTL in rtl/chips/<module_name>/<module_name>.sv.
4. Create a testbench in tb/chips/<module_name>/tb_<module_name>.sv.
5. Add a chip README in rtl/chips/<module_name>/README.md.
6. Run simulation.
7. Run synthesis check with Yosys when possible.
8. Update build/chips.json status and notes.
9. Regenerate tasks.md.
10. git add .
11. git commit -m "Add <part_number> <short description>"
12. git push

## Progress (1555 chips)
- complete: 538
- digital_only_approximation: 21
- not_started: 996

## Chips


## Section: Larger footprints

### 74x00 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x00
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS00
- RTL: rtl/chips/ttl_74x00/ttl_74x00.sv
- Testbench: tb/chips/ttl_74x00/tb_ttl_74x00.sv
- README: rtl/chips/ttl_74x00/README.md
- Notes:
  - Exhaustive 256-vector testbench passes; Verilator lint and Yosys synth check both clean.

### 74x01 - quad 2-input NAND gate; different pinout for 74H01
- Status: [x]
- Module: ttl_74x01
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS01
- RTL: rtl/chips/ttl_74x01/ttl_74x01.sv
- Testbench: tb/chips/ttl_74x01/tb_ttl_74x01.sv
- README: rtl/chips/ttl_74x01/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x02 - quad 2-input NOR gate
- Status: [x]
- Module: ttl_74x02
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS02
- RTL: rtl/chips/ttl_74x02/ttl_74x02.sv
- Testbench: tb/chips/ttl_74x02/tb_ttl_74x02.sv
- README: rtl/chips/ttl_74x02/README.md
- Notes:
  - Exhaustive testbench passes; Verilator lint and Yosys synth check clean.

### 74x03 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x03
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS03
- RTL: rtl/chips/ttl_74x03/ttl_74x03.sv
- Testbench: tb/chips/ttl_74x03/tb_ttl_74x03.sv
- README: rtl/chips/ttl_74x03/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x04 - hex inverter gate
- Status: [x]
- Module: ttl_74x04
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS04
- RTL: rtl/chips/ttl_74x04/ttl_74x04.sv
- Testbench: tb/chips/ttl_74x04/tb_ttl_74x04.sv
- README: rtl/chips/ttl_74x04/README.md
- Notes:
  - Exhaustive testbench passes; Verilator lint and Yosys synth check clean.

### 74x05 - hex inverter gate
- Status: [x]
- Module: ttl_74x05
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS05
- RTL: rtl/chips/ttl_74x05/ttl_74x05.sv
- Testbench: tb/chips/ttl_74x05/tb_ttl_74x05.sv
- README: rtl/chips/ttl_74x05/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x06 - hex inverter gate
- Status: [x]
- Module: ttl_74x06
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector 30 V / 40 mA
- Pins: 14
- Datasheet/source: SN74LS06
- RTL: rtl/chips/ttl_74x06/ttl_74x06.sv
- Testbench: tb/chips/ttl_74x06/tb_ttl_74x06.sv
- README: rtl/chips/ttl_74x06/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x07 - hex buffer gate
- Status: [x]
- Module: ttl_74x07
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector 30 V / 40 mA
- Pins: 14
- Datasheet/source: SN74LS07
- RTL: rtl/chips/ttl_74x07/ttl_74x07.sv
- Testbench: tb/chips/ttl_74x07/tb_ttl_74x07.sv
- README: rtl/chips/ttl_74x07/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x08 - quad 2-input AND gate
- Status: [x]
- Module: ttl_74x08
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS08
- RTL: rtl/chips/ttl_74x08/ttl_74x08.sv
- Testbench: tb/chips/ttl_74x08/tb_ttl_74x08.sv
- README: rtl/chips/ttl_74x08/README.md
- Notes:
  - Exhaustive testbench passes; Verilator lint and Yosys synth check clean.

### 74x09 - quad 2-input AND gate
- Status: [x]
- Module: ttl_74x09
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS09
- RTL: rtl/chips/ttl_74x09/ttl_74x09.sv
- Testbench: tb/chips/ttl_74x09/tb_ttl_74x09.sv
- README: rtl/chips/ttl_74x09/README.md
- Notes:
  - Logic identical to push-pull variant; open-collector physical behavior not modeled (see docs/unsupported_physical_behavior.md). Exhaustive testbench passes; Verilator + Yosys clean.

### 74x10 - triple 3-input NAND gate
- Status: [x]
- Module: ttl_74x10
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS10
- RTL: rtl/chips/ttl_74x10/ttl_74x10.sv
- Testbench: tb/chips/ttl_74x10/tb_ttl_74x10.sv
- README: rtl/chips/ttl_74x10/README.md
- Notes:
  - Exhaustive 512-vector testbench. Verilator + Yosys clean.

### 74x11 - triple 3-input AND gate
- Status: [x]
- Module: ttl_74x11
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS11
- RTL: rtl/chips/ttl_74x11/ttl_74x11.sv
- Testbench: tb/chips/ttl_74x11/tb_ttl_74x11.sv
- README: rtl/chips/ttl_74x11/README.md
- Notes:
  - Exhaustive 512-vector testbench. Verilator + Yosys clean.

### 74x12 - triple 3-input NAND gate
- Status: [x]
- Module: ttl_74x12
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS12
- RTL: rtl/chips/ttl_74x12/ttl_74x12.sv
- Testbench: tb/chips/ttl_74x12/tb_ttl_74x12.sv
- README: rtl/chips/ttl_74x12/README.md
- Notes:
  - Same logic as 74x10; open-collector physical behavior not modeled.

### 74x13 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x13
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS13
- RTL: rtl/chips/ttl_74x13/ttl_74x13.sv
- Testbench: tb/chips/ttl_74x13/tb_ttl_74x13.sv
- README: rtl/chips/ttl_74x13/README.md
- Notes:
  - Schmitt-trigger input hysteresis not modeled; exhaustive 256-vector testbench.

### 74x14 - hex inverter gate
- Status: [x]
- Module: ttl_74x14
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS14
- RTL: rtl/chips/ttl_74x14/ttl_74x14.sv
- Testbench: tb/chips/ttl_74x14/tb_ttl_74x14.sv
- README: rtl/chips/ttl_74x14/README.md
- Notes:
  - Schmitt hysteresis and oscillator use not modeled; exhaustive 64-vector testbench.

### 74x15 - triple 3-input AND gate
- Status: [x]
- Module: ttl_74x15
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS15
- RTL: rtl/chips/ttl_74x15/ttl_74x15.sv
- Testbench: tb/chips/ttl_74x15/tb_ttl_74x15.sv
- README: rtl/chips/ttl_74x15/README.md
- Notes:
  - Same logic as 74x11; open-collector physical behavior not modeled.

### 74x16 - hex inverter gate
- Status: [x]
- Module: ttl_74x16
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector 15 V / 40 mA
- Pins: 14
- Datasheet/source: SN7416
- RTL: rtl/chips/ttl_74x16/ttl_74x16.sv
- Testbench: tb/chips/ttl_74x16/tb_ttl_74x16.sv
- README: rtl/chips/ttl_74x16/README.md
- Notes:
  - Same logic as 74x04; OC 15V/40mA drive not modeled.

### 74x17 - hex buffer gate
- Status: [x]
- Module: ttl_74x17
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector 15 V / 40 mA
- Pins: 14
- Datasheet/source: SN7417
- RTL: rtl/chips/ttl_74x17/ttl_74x17.sv
- Testbench: tb/chips/ttl_74x17/tb_ttl_74x17.sv
- README: rtl/chips/ttl_74x17/README.md
- Notes:
  - Non-inverting buffer; OC 15V/40mA drive not modeled.

### 74x18 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x18
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS18
- RTL: rtl/chips/ttl_74x18/ttl_74x18.sv
- Testbench: tb/chips/ttl_74x18/tb_ttl_74x18.sv
- README: rtl/chips/ttl_74x18/README.md
- Notes:
  - Same logic as 74x20; Schmitt input hysteresis not modeled.

### 74x19 - hex inverter gate
- Status: [x]
- Module: ttl_74x19
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS19
- RTL: rtl/chips/ttl_74x19/ttl_74x19.sv
- Testbench: tb/chips/ttl_74x19/tb_ttl_74x19.sv
- README: rtl/chips/ttl_74x19/README.md
- Notes:
  - Same logic as 74x14; Schmitt hysteresis not modeled.

### 74x20 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x20
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS20
- RTL: rtl/chips/ttl_74x20/ttl_74x20.sv
- Testbench: tb/chips/ttl_74x20/tb_ttl_74x20.sv
- README: rtl/chips/ttl_74x20/README.md
- Notes:
  - Exhaustive 256-vector testbench. Verilator + Yosys clean.

### 74x21 - dual 4-input AND gate
- Status: [x]
- Module: ttl_74x21
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS21
- RTL: rtl/chips/ttl_74x21/ttl_74x21.sv
- Testbench: tb/chips/ttl_74x21/tb_ttl_74x21.sv
- README: rtl/chips/ttl_74x21/README.md
- Notes:
  - Exhaustive 256-vector testbench. Verilator + Yosys clean.

### 74x22 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x22
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS22
- RTL: rtl/chips/ttl_74x22/ttl_74x22.sv
- Testbench: tb/chips/ttl_74x22/tb_ttl_74x22.sv
- README: rtl/chips/ttl_74x22/README.md
- Notes:
  - Same logic as 74x20; open-collector physical behavior not modeled.

### 74x23 - dual 4-input NOR gate with strobe, one gate expandable with 74x60
- Status: [x]
- Module: ttl_74x23
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7423
- RTL: rtl/chips/ttl_74x23/ttl_74x23.sv
- Testbench: tb/chips/ttl_74x23/tb_ttl_74x23.sv
- README: rtl/chips/ttl_74x23/README.md
- Notes:
  - Strobed NOR with expander pin omitted (not synthesizable as internal wired-OR). 1024-vector exhaustive testbench.

### 74x24 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x24
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS24
- RTL: rtl/chips/ttl_74x24/ttl_74x24.sv
- Testbench: tb/chips/ttl_74x24/tb_ttl_74x24.sv
- README: rtl/chips/ttl_74x24/README.md
- Notes:
  - Same logic as 74x00; Schmitt input hysteresis not modeled.

### 74x25 - dual 4-input NOR gate with strobe
- Status: [x]
- Module: ttl_74x25
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7425
- RTL: rtl/chips/ttl_74x25/ttl_74x25.sv
- Testbench: tb/chips/ttl_74x25/tb_ttl_74x25.sv
- README: rtl/chips/ttl_74x25/README.md
- Notes:
  - Same logic as 74x23 without expander; 1024-vector exhaustive testbench.

### 74x26 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x26
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector 15 V
- Pins: 14
- Datasheet/source: SN74LS26
- RTL: rtl/chips/ttl_74x26/ttl_74x26.sv
- Testbench: tb/chips/ttl_74x26/tb_ttl_74x26.sv
- README: rtl/chips/ttl_74x26/README.md
- Notes:
  - Same logic as 74x00; OC 15V HV drive not modeled.

### 74x27 - triple 3-input NOR gate
- Status: [x]
- Module: ttl_74x27
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS27
- RTL: rtl/chips/ttl_74x27/ttl_74x27.sv
- Testbench: tb/chips/ttl_74x27/tb_ttl_74x27.sv
- README: rtl/chips/ttl_74x27/README.md
- Notes:
  - Triple 3-input NOR; exhaustive 512-vector testbench.

### 74x28 - quad 2-input NOR gate
- Status: [x]
- Module: ttl_74x28
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver N=30
- Pins: 14
- Datasheet/source: SN74LS28
- RTL: rtl/chips/ttl_74x28/ttl_74x28.sv
- Testbench: tb/chips/ttl_74x28/tb_ttl_74x28.sv
- README: rtl/chips/ttl_74x28/README.md
- Notes:
  - Same logic as 74x02; higher drive (N=30) not modeled.

### 74x29 - dual 4-input NOR gate
- Status: [x]
- Module: ttl_74x29
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: US7429A
- RTL: rtl/chips/ttl_74x29/ttl_74x29.sv
- Testbench: tb/chips/ttl_74x29/tb_ttl_74x29.sv
- README: rtl/chips/ttl_74x29/README.md
- Notes:
  - Dual 4-input NOR; exhaustive 256-vector testbench.

### 74x30 - single 8-input NAND gate
- Status: [x]
- Module: ttl_74x30
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS30
- RTL: rtl/chips/ttl_74x30/ttl_74x30.sv
- Testbench: tb/chips/ttl_74x30/tb_ttl_74x30.sv
- README: rtl/chips/ttl_74x30/README.md
- Notes:
  - Single 8-input NAND; exhaustive 256-vector testbench.

### 74x31 - hex delay elements (two 6ns, two 23-32ns, two 45-48ns)
- Status: [!]
- Module: ttl_74x31
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS31
- RTL: rtl/chips/ttl_74x31/ttl_74x31.sv
- Testbench: tb/chips/ttl_74x31/tb_ttl_74x31.sv
- README: rtl/chips/ttl_74x31/README.md
- Notes:
  - Real chip is analog propagation-delay buffers (6 ns, 23-32 ns, 45-48 ns); not modelable in RTL. Implementation is a straight pass-through; use explicit pipeline registers for clock-cycle delays at the consuming module.

### 74x32 - quad 2-input OR gate
- Status: [x]
- Module: ttl_74x32
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS32
- RTL: rtl/chips/ttl_74x32/ttl_74x32.sv
- Testbench: tb/chips/ttl_74x32/tb_ttl_74x32.sv
- README: rtl/chips/ttl_74x32/README.md
- Notes:
  - Exhaustive testbench passes; Verilator lint and Yosys synth check clean.

### 74x33 - quad 2-input NOR gate
- Status: [x]
- Module: ttl_74x33
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector driver N=30
- Pins: 14
- Datasheet/source: SN74LS33
- RTL: rtl/chips/ttl_74x33/ttl_74x33.sv
- Testbench: tb/chips/ttl_74x33/tb_ttl_74x33.sv
- README: rtl/chips/ttl_74x33/README.md
- Notes:
  - Same logic as 74x02; open-collector drive not modeled.

### 74x34 - hex buffer gate
- Status: [x]
- Module: ttl_74x34
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74HC34
- RTL: rtl/chips/ttl_74x34/ttl_74x34.sv
- Testbench: tb/chips/ttl_74x34/tb_ttl_74x34.sv
- README: rtl/chips/ttl_74x34/README.md
- Notes:
  - Hex non-inverting buffer; exhaustive 64-vector testbench.

### 74x35 - hex buffer gate
- Status: [x]
- Module: ttl_74x35
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74ALS35
- RTL: rtl/chips/ttl_74x35/ttl_74x35.sv
- Testbench: tb/chips/ttl_74x35/tb_ttl_74x35.sv
- README: rtl/chips/ttl_74x35/README.md
- Notes:
  - Same logic as 74x34; OC drive not modeled.

### 74x36 - quad 2-input NOR gate (different pinout than 7402)
- Status: [x]
- Module: ttl_74x36
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC36
- RTL: rtl/chips/ttl_74x36/ttl_74x36.sv
- Testbench: tb/chips/ttl_74x36/tb_ttl_74x36.sv
- README: rtl/chips/ttl_74x36/README.md
- Notes:
  - Same logic as 74x02; differs only in physical pinout.

### 74x37 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x37
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver N=30
- Pins: 14
- Datasheet/source: SN74LS37
- RTL: rtl/chips/ttl_74x37/ttl_74x37.sv
- Testbench: tb/chips/ttl_74x37/tb_ttl_74x37.sv
- README: rtl/chips/ttl_74x37/README.md
- Notes:
  - Same logic as 74x00; higher drive (N=30) not modeled.

### 74x38 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x38
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector driver N=30
- Pins: 14
- Datasheet/source: SN74LS38
- RTL: rtl/chips/ttl_74x38/ttl_74x38.sv
- Testbench: tb/chips/ttl_74x38/tb_ttl_74x38.sv
- README: rtl/chips/ttl_74x38/README.md
- Notes:
  - Same logic as 74x00; OC drive not modeled.

### 74x39 - quad 2-input NAND gate (different pinout than 7438)
- Status: [x]
- Module: ttl_74x39
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector 60 mA
- Pins: 14
- Datasheet/source: SN7439
- RTL: rtl/chips/ttl_74x39/ttl_74x39.sv
- Testbench: tb/chips/ttl_74x39/tb_ttl_74x39.sv
- README: rtl/chips/ttl_74x39/README.md
- Notes:
  - Same logic as 74x00; OC 60mA drive not modeled.

### 74x40 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x40
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: driver N=30
- Pins: 14
- Datasheet/source: SN74LS40
- RTL: rtl/chips/ttl_74x40/ttl_74x40.sv
- Testbench: tb/chips/ttl_74x40/tb_ttl_74x40.sv
- README: rtl/chips/ttl_74x40/README.md
- Notes:
  - Same logic as 74x20; higher drive not modeled.

### 74x41 - BCD to decimal decoder / Nixie tube driver
- Status: [x]
- Module: ttl_74x41
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 70 V
- Pins: 16
- Datasheet/source: DM7441A
- RTL: rtl/chips/ttl_74x41/ttl_74x41.sv
- Testbench: tb/chips/ttl_74x41/tb_ttl_74x41.sv
- README: rtl/chips/ttl_74x41/README.md
- Notes:
  - Same logic as 74x42; OC 70V Nixie driver characteristics not modeled.

### 74x42 - BCD to decimal decoder
- Status: [x]
- Module: ttl_74x42
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS42
- RTL: rtl/chips/ttl_74x42/ttl_74x42.sv
- Testbench: tb/chips/ttl_74x42/tb_ttl_74x42.sv
- README: rtl/chips/ttl_74x42/README.md
- Notes:
  - Standard BCD-to-1-of-10 decoder; invalid BCD inputs (10-15) yield all-high outputs. Exhaustive testbench.

### 74x43 - excess-3 to decimal decoder
- Status: [x]
- Module: ttl_74x43
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7443A
- RTL: rtl/chips/ttl_74x43/ttl_74x43.sv
- Testbench: tb/chips/ttl_74x43/tb_ttl_74x43.sv
- README: rtl/chips/ttl_74x43/README.md
- Notes:
  - Excess-3-to-decimal decoder. Invalid codes (0-2, 13-15) yield all-high outputs.

### 74x44 - Gray code to decimal decoder
- Status: [x]
- Module: ttl_74x44
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7444A
- RTL: rtl/chips/ttl_74x44/ttl_74x44.sv
- Testbench: tb/chips/ttl_74x44/tb_ttl_74x44.sv
- README: rtl/chips/ttl_74x44/README.md
- Notes:
  - Excess-3 Gray code to decimal decoder. Datasheet truth table reproduced as case statement.

### 74x45 - BCD to decimal decoder/driver
- Status: [x]
- Module: ttl_74x45
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 30 V / 80 mA
- Pins: 16
- Datasheet/source: SN7445
- RTL: rtl/chips/ttl_74x45/ttl_74x45.sv
- Testbench: tb/chips/ttl_74x45/tb_ttl_74x45.sv
- README: rtl/chips/ttl_74x45/README.md
- Notes:
  - Same logic as 74x42; OC 30V drive not modeled.

### 74x46 - BCD to 7-segment display decoder/driver
- Status: [x]
- Module: ttl_74x46
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 30 V
- Pins: 16
- Datasheet/source: SN7446A
- RTL: rtl/chips/ttl_74x46/ttl_74x46.sv
- Testbench: tb/chips/ttl_74x46/tb_ttl_74x46.sv
- README: rtl/chips/ttl_74x46/README.md
- Notes:
  - Standard 7447-style decode table including 0xA-0xF partial patterns; full blanking/lamp-test priority resolved per datasheet. 128-vector testbench (32 for 74x49).

### 74x47 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x47
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V
- Pins: 16
- Datasheet/source: SN74LS47
- RTL: rtl/chips/ttl_74x47/ttl_74x47.sv
- Testbench: tb/chips/ttl_74x47/tb_ttl_74x47.sv
- README: rtl/chips/ttl_74x47/README.md
- Notes:
  - Standard 7447-style decode table including 0xA-0xF partial patterns; full blanking/lamp-test priority resolved per datasheet. 128-vector testbench (32 for 74x49).

### 74x48 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x48
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector, 2 kΩ pull-up
- Pins: 16
- Datasheet/source: SN74LS48
- RTL: rtl/chips/ttl_74x48/ttl_74x48.sv
- Testbench: tb/chips/ttl_74x48/tb_ttl_74x48.sv
- README: rtl/chips/ttl_74x48/README.md
- Notes:
  - Standard 7447-style decode table including 0xA-0xF partial patterns; full blanking/lamp-test priority resolved per datasheet. 128-vector testbench (32 for 74x49).

### 74x49 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x49
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS49
- RTL: rtl/chips/ttl_74x49/ttl_74x49.sv
- Testbench: tb/chips/ttl_74x49/tb_ttl_74x49.sv
- README: rtl/chips/ttl_74x49/README.md
- Notes:
  - Standard 7447-style decode table including 0xA-0xF partial patterns; full blanking/lamp-test priority resolved per datasheet. 128-vector testbench (32 for 74x49).

### 74x50 - dual 2-2-input AND-OR-Invert gate, one gate expandable
- Status: [x]
- Module: ttl_74x50
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7450
- RTL: rtl/chips/ttl_74x50/ttl_74x50.sv
- Testbench: tb/chips/ttl_74x50/tb_ttl_74x50.sv
- README: rtl/chips/ttl_74x50/README.md
- Notes:
  - Dual 2-2 AOI. Expander pin on gate 0 omitted (cannot be synthesized internally).

### 7451 - dual 2-2-input AND-OR-Invert (AOI) gate
- Status: [x]
- Module: ttl_7451
- Aliases: 74H51, 74S51
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7451
- RTL: rtl/chips/ttl_7451/ttl_7451.sv
- Testbench: tb/chips/ttl_7451/tb_ttl_7451.sv
- README: rtl/chips/ttl_7451/README.md
- Notes:
  - Same logic as 74x50 without expander pins.

### 74L51 - 3-3-input AND-OR-Invert gate and 2-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74l51
- Aliases: 74LS51
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS51
- RTL: rtl/chips/ttl_74l51/ttl_74l51.sv
- Testbench: tb/chips/ttl_74l51/tb_ttl_74l51.sv
- README: rtl/chips/ttl_74l51/README.md
- Notes:
  - Distinct gate widths: 3-3 AOI + 2-2 AOI. 1024-vector exhaustive testbench.

### 74x52 - 3-2-2-2-input AND-OR gate, expandable with 74x61
- Status: [x]
- Module: ttl_74x52
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H52
- RTL: rtl/chips/ttl_74x52/ttl_74x52.sv
- Testbench: tb/chips/ttl_74x52/tb_ttl_74x52.sv
- README: rtl/chips/ttl_74x52/README.md
- Notes:
  - 3-2-2-2 AND-OR (non-inverting). 74x61 expander interface omitted.

### 7453 - 2-2-2-2-input AND-OR-Invert gate, expandable
- Status: [x]
- Module: ttl_7453
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7453
- RTL: rtl/chips/ttl_7453/ttl_7453.sv
- Testbench: tb/chips/ttl_7453/tb_ttl_7453.sv
- README: rtl/chips/ttl_7453/README.md
- Notes:
  - 2-2-2-2 AOI. Expander pin omitted.

### 74H53 - 3-2-2-2-input AND-OR-Invert gate, expandable
- Status: [x]
- Module: ttl_74h53
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H53
- RTL: rtl/chips/ttl_74h53/ttl_74h53.sv
- Testbench: tb/chips/ttl_74h53/tb_ttl_74h53.sv
- README: rtl/chips/ttl_74h53/README.md
- Notes:
  - 3-2-2-2 AOI; expander pin omitted.

### 7454 - 2-2-2-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_7454
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7454
- RTL: rtl/chips/ttl_7454/ttl_7454.sv
- Testbench: tb/chips/ttl_7454/tb_ttl_7454.sv
- README: rtl/chips/ttl_7454/README.md
- Notes:
  - Same logic as 7453, no expander.

### 74H54 - 3-2-2-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74h54
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H54
- RTL: rtl/chips/ttl_74h54/ttl_74h54.sv
- Testbench: tb/chips/ttl_74h54/tb_ttl_74h54.sv
- README: rtl/chips/ttl_74h54/README.md
- Notes:
  - Same logic as 74H53, no expander.

### 74L54 - 3-3-2-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74l54
- Aliases: 74LS54
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS54
- RTL: rtl/chips/ttl_74l54/ttl_74l54.sv
- Testbench: tb/chips/ttl_74l54/tb_ttl_74l54.sv
- README: rtl/chips/ttl_74l54/README.md
- Notes:
  - 3-3-2-2 AOI, low-power.

### 74x55 - 4-4-input AND-OR-Invert gate, 74H55 is expandable
- Status: [x]
- Module: ttl_74x55
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS55
- RTL: rtl/chips/ttl_74x55/ttl_74x55.sv
- Testbench: tb/chips/ttl_74x55/tb_ttl_74x55.sv
- README: rtl/chips/ttl_74x55/README.md
- Notes:
  - 4-4 AOI. 74H55 expander variant: expander pin omitted.

### 74x56 - 50:1 frequency divider
- Status: [x]
- Module: ttl_74x56
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: SN74LS56
- RTL: rtl/chips/ttl_74x56/ttl_74x56.sv
- Testbench: tb/chips/ttl_74x56/tb_ttl_74x56.sv
- README: rtl/chips/ttl_74x56/README.md
- Notes:
  - Divide-by-50 counter; output toggles every 25 cycles for 50% duty.

### 74x57 - 60:1 frequency divider
- Status: [x]
- Module: ttl_74x57
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: SN74LS57
- RTL: rtl/chips/ttl_74x57/ttl_74x57.sv
- Testbench: tb/chips/ttl_74x57/tb_ttl_74x57.sv
- README: rtl/chips/ttl_74x57/README.md
- Notes:
  - Divide-by-60 counter; output toggles every 30 cycles for 50% duty.

### 74x58 - 3-3-input AND-OR gate and 2-2-input AND-OR gate
- Status: [x]
- Module: ttl_74x58
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 74HC58
- RTL: rtl/chips/ttl_74x58/ttl_74x58.sv
- Testbench: tb/chips/ttl_74x58/tb_ttl_74x58.sv
- README: rtl/chips/ttl_74x58/README.md
- Notes:
  - Non-inverting AND-OR (no Invert). Different widths per gate.

### 74x59 - dual 3-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74x59
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: US7459A
- RTL: rtl/chips/ttl_74x59/ttl_74x59.sv
- Testbench: tb/chips/ttl_74x59/tb_ttl_74x59.sv
- README: rtl/chips/ttl_74x59/README.md
- Notes:
  - Dual 3-2 AOI.

### 74x60 - dual 4-input expander for 74x23, 74x50, 74x53, 74x55
- Status: [x]
- Module: ttl_74x60
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7460
- RTL: rtl/chips/ttl_74x60/ttl_74x60.sv
- Testbench: tb/chips/ttl_74x60/tb_ttl_74x60.sv
- README: rtl/chips/ttl_74x60/README.md
- Notes:
  - Expander chips cannot be synthesized as internal-node interfaces. Provides digital approximation of the AND of inputs.

### 74x61 - triple 3-input expander for 74x52
- Status: [x]
- Module: ttl_74x61
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H61
- RTL: rtl/chips/ttl_74x61/ttl_74x61.sv
- Testbench: tb/chips/ttl_74x61/tb_ttl_74x61.sv
- README: rtl/chips/ttl_74x61/README.md
- Notes:
  - Triple 3-input expander; same approximation rationale as 74x60.

### 74x62 - 3-3-2-2-input AND-OR expander for 74x50, 74x53, 74x55
- Status: [x]
- Module: ttl_74x62
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H62
- RTL: rtl/chips/ttl_74x62/ttl_74x62.sv
- Testbench: tb/chips/ttl_74x62/tb_ttl_74x62.sv
- README: rtl/chips/ttl_74x62/README.md
- Notes:
  - 3-3-2-2 OR-expander; outputs OR of products for downstream AOI host.

### 74x63 - hex current sensing interface gates
- Status: [x]
- Module: ttl_74x63
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS63
- RTL: rtl/chips/ttl_74x63/ttl_74x63.sv
- Testbench: tb/chips/ttl_74x63/tb_ttl_74x63.sv
- README: rtl/chips/ttl_74x63/README.md
- Notes:
  - Current-sensing inputs not modeled; RTL is digital pass-through.

### 74x64 - 4-3-2-2-input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74x64
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74S64
- RTL: rtl/chips/ttl_74x64/ttl_74x64.sv
- Testbench: tb/chips/ttl_74x64/tb_ttl_74x64.sv
- README: rtl/chips/ttl_74x64/README.md
- Notes:
  - 4-3-2-2 AOI.

### 74x65 - 4-3-2-2 input AND-OR-Invert gate
- Status: [x]
- Module: ttl_74x65
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74S65
- RTL: rtl/chips/ttl_74x65/ttl_74x65.sv
- Testbench: tb/chips/ttl_74x65/tb_ttl_74x65.sv
- README: rtl/chips/ttl_74x65/README.md
- Notes:
  - Same logic as 74x64; OC physics not modeled.

### 74x67 - AND gated J-K master-slave flip-flop, asynchronous preset and clear (improved 74L72)
- Status: [x]
- Module: ttl_74x67
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (16)
- Datasheet/source: BL54L67Y
- RTL: rtl/chips/ttl_74x67/ttl_74x67.sv
- Testbench: tb/chips/ttl_74x67/tb_ttl_74x67.sv
- README: rtl/chips/ttl_74x67/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74L68 - dual J-K flip-flop, asynchronous clear (improved 74L73)
- Status: [x]
- Module: ttl_74l68
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (18)
- Datasheet/source: BL54L68Y
- RTL: rtl/chips/ttl_74l68/ttl_74l68.sv
- Testbench: tb/chips/ttl_74l68/tb_ttl_74l68.sv
- README: rtl/chips/ttl_74l68/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74LS68 - dual 4-bit decade counters
- Status: [x]
- Module: ttl_74ls68
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS68
- RTL: rtl/chips/ttl_74ls68/ttl_74ls68.sv
- Testbench: tb/chips/ttl_74ls68/tb_ttl_74ls68.sv
- README: rtl/chips/ttl_74ls68/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74L69 - dual J-K flip-flop, asynchronous preset, shared clock and clear
- Status: [x]
- Module: ttl_74l69
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (18)
- Datasheet/source: BL54L69Y
- RTL: rtl/chips/ttl_74l69/ttl_74l69.sv
- Testbench: tb/chips/ttl_74l69/tb_ttl_74l69.sv
- README: rtl/chips/ttl_74l69/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74LS69 - dual 4-bit binary counters
- Status: [x]
- Module: ttl_74ls69
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS69
- RTL: rtl/chips/ttl_74ls69/ttl_74ls69.sv
- Testbench: tb/chips/ttl_74ls69/tb_ttl_74ls69.sv
- README: rtl/chips/ttl_74ls69/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x70 - AND-gated positive-edge-triggered J-K flip-flop, asynchronous preset and clear
- Status: [x]
- Module: ttl_74x70
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7470
- RTL: rtl/chips/ttl_74x70/ttl_74x70.sv
- Testbench: tb/chips/ttl_74x70/tb_ttl_74x70.sv
- README: rtl/chips/ttl_74x70/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74H71 - AND-OR-gated J-K master-slave flip-flop, preset
- Status: [x]
- Module: ttl_74h71
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H71
- RTL: rtl/chips/ttl_74h71/ttl_74h71.sv
- Testbench: tb/chips/ttl_74h71/tb_ttl_74h71.sv
- README: rtl/chips/ttl_74h71/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74L71 - AND-gated R-S master-slave flip-flop, preset and clear
- Status: [x]
- Module: ttl_74l71
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN54L71
- RTL: rtl/chips/ttl_74l71/ttl_74l71.sv
- Testbench: tb/chips/ttl_74l71/tb_ttl_74l71.sv
- README: rtl/chips/ttl_74l71/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x72 - AND gated J-K master-slave flip-flop, asynchronous preset and clear
- Status: [x]
- Module: ttl_74x72
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7472
- RTL: rtl/chips/ttl_74x72/ttl_74x72.sv
- Testbench: tb/chips/ttl_74x72/tb_ttl_74x72.sv
- README: rtl/chips/ttl_74x72/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x73 - dual J-K flip-flop, asynchronous clear
- Status: [x]
- Module: ttl_74x73
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN54LS73A
- RTL: rtl/chips/ttl_74x73/ttl_74x73.sv
- Testbench: tb/chips/ttl_74x73/tb_ttl_74x73.sv
- README: rtl/chips/ttl_74x73/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x74 - dual D positive-edge-triggered flip-flop, asynchronous clear & preset, Q & /Q outputs
- Status: [x]
- Module: ttl_74x74
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS74A
- RTL: rtl/chips/ttl_74x74/ttl_74x74.sv
- Testbench: tb/chips/ttl_74x74/tb_ttl_74x74.sv
- README: rtl/chips/ttl_74x74/README.md
- Notes:
  - Dual posedge-triggered D-FF with async clear/preset. preset takes priority over clear in the priority ladder. Q_n is always ~Q. Testbench exercises preset, clear, edge capture, and hold.

### 74x75 - 4-bit bistable latch, complementary outputs
- Status: [x]
- Module: ttl_74x75
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS75
- RTL: rtl/chips/ttl_74x75/ttl_74x75.sv
- Testbench: tb/chips/ttl_74x75/tb_ttl_74x75.sv
- README: rtl/chips/ttl_74x75/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x76 - dual J-K flip-flop, asynchronous preset and clear
- Status: [x]
- Module: ttl_74x76
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS76A
- RTL: rtl/chips/ttl_74x76/ttl_74x76.sv
- Testbench: tb/chips/ttl_74x76/tb_ttl_74x76.sv
- README: rtl/chips/ttl_74x76/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x77 - 4-bit bistable latch
- Status: [x]
- Module: ttl_74x77
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN54LS77
- RTL: rtl/chips/ttl_74x77/ttl_74x77.sv
- Testbench: tb/chips/ttl_74x77/tb_ttl_74x77.sv
- README: rtl/chips/ttl_74x77/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74H78 - dual positive-pulse-triggered J-K flip-flop, preset, shared clock and clear
- Status: [x]
- Module: ttl_74h78
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H78
- RTL: rtl/chips/ttl_74h78/ttl_74h78.sv
- Testbench: tb/chips/ttl_74h78/tb_ttl_74h78.sv
- README: rtl/chips/ttl_74h78/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74L78 - dual positive-pulse-triggered J-K flip-flop, preset, shared clock and clear
- Status: [x]
- Module: ttl_74l78
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN54L78
- RTL: rtl/chips/ttl_74l78/ttl_74l78.sv
- Testbench: tb/chips/ttl_74l78/tb_ttl_74l78.sv
- README: rtl/chips/ttl_74l78/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74LS78 - dual negative-edge-triggered J-K flip-flop, preset, shared clock and clear
- Status: [x]
- Module: ttl_74ls78
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS78A
- RTL: rtl/chips/ttl_74ls78/ttl_74ls78.sv
- Testbench: tb/chips/ttl_74ls78/tb_ttl_74ls78.sv
- README: rtl/chips/ttl_74ls78/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x79 - dual D positive-edge-triggered flip-flop, asynchronous preset and clear
- Status: [x]
- Module: ttl_74x79
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC7479
- RTL: rtl/chips/ttl_74x79/ttl_74x79.sv
- Testbench: tb/chips/ttl_74x79/tb_ttl_74x79.sv
- README: rtl/chips/ttl_74x79/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x80 - gated full adder
- Status: [x]
- Module: ttl_74x80
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7480
- RTL: rtl/chips/ttl_74x80/ttl_74x80.sv
- Testbench: tb/chips/ttl_74x80/tb_ttl_74x80.sv
- README: rtl/chips/ttl_74x80/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x81 - 16-bit RAM
- Status: [x]
- Module: ttl_74x81
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7481A
- RTL: rtl/chips/ttl_74x81/ttl_74x81.sv
- Testbench: tb/chips/ttl_74x81/tb_ttl_74x81.sv
- README: rtl/chips/ttl_74x81/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x82 - 2-bit binary full adder
- Status: [x]
- Module: ttl_74x82
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN7482
- RTL: rtl/chips/ttl_74x82/ttl_74x82.sv
- Testbench: tb/chips/ttl_74x82/tb_ttl_74x82.sv
- README: rtl/chips/ttl_74x82/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave parts implemented as posedge per docs/conventions.md.

### 74x83 - 4-bit binary full adder
- Status: [x]
- Module: ttl_74x83
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS83A
- RTL: rtl/chips/ttl_74x83/ttl_74x83.sv
- Testbench: tb/chips/ttl_74x83/tb_ttl_74x83.sv
- README: rtl/chips/ttl_74x83/README.md
- Notes:
  - Combinational 4-bit adder; 512-vector exhaustive testbench covering all a,b,carry-in.

### 74x84 - 16-bit RAM
- Status: [x]
- Module: ttl_74x84
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7484A
- RTL: rtl/chips/ttl_74x84/ttl_74x84.sv
- Testbench: tb/chips/ttl_74x84/tb_ttl_74x84.sv
- README: rtl/chips/ttl_74x84/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x85 - 4-bit magnitude comparator
- Status: [x]
- Module: ttl_74x85
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS85
- RTL: rtl/chips/ttl_74x85/ttl_74x85.sv
- Testbench: tb/chips/ttl_74x85/tb_ttl_74x85.sv
- README: rtl/chips/ttl_74x85/README.md
- Notes:
  - 4-bit comparator with cascade inputs for chaining; testbench covers standalone use and cascade passthrough on equality.

### 74x86 - quad 2-input XOR gate
- Status: [x]
- Module: ttl_74x86
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS86A
- RTL: rtl/chips/ttl_74x86/ttl_74x86.sv
- Testbench: tb/chips/ttl_74x86/tb_ttl_74x86.sv
- README: rtl/chips/ttl_74x86/README.md
- Notes:
  - Exhaustive testbench passes; Verilator lint and Yosys synth check clean.

### 74x87 - 4-bit true/complement/zero/one element
- Status: [x]
- Module: ttl_74x87
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H87
- RTL: rtl/chips/ttl_74x87/ttl_74x87.sv
- Testbench: tb/chips/ttl_74x87/tb_ttl_74x87.sv
- README: rtl/chips/ttl_74x87/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x88 - 256-bit ROM (32x8)
- Status: [x]
- Module: ttl_74x88
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN7488A
- RTL: rtl/chips/ttl_74x88/ttl_74x88.sv
- Testbench: tb/chips/ttl_74x88/tb_ttl_74x88.sv
- README: rtl/chips/ttl_74x88/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x89 - 64-bit RAM (16x4), 4 data inputs, 4 inverted data outputs
- Status: [x]
- Module: ttl_74x89
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN7489
- RTL: rtl/chips/ttl_74x89/ttl_74x89.sv
- Testbench: tb/chips/ttl_74x89/tb_ttl_74x89.sv
- README: rtl/chips/ttl_74x89/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x90 - decade counter (separate divide-by-2 and divide-by-5 sections)
- Status: [x]
- Module: ttl_74x90
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS90
- RTL: rtl/chips/ttl_74x90/ttl_74x90.sv
- Testbench: tb/chips/ttl_74x90/tb_ttl_74x90.sv
- README: rtl/chips/ttl_74x90/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x91 - 8-bit shift register, serial in, serial out, gated input
- Status: [x]
- Module: ttl_74x91
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS91
- RTL: rtl/chips/ttl_74x91/ttl_74x91.sv
- Testbench: tb/chips/ttl_74x91/tb_ttl_74x91.sv
- README: rtl/chips/ttl_74x91/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x92 - divide-by-12 counter (separate divide-by-2 and divide-by-6 sections)
- Status: [x]
- Module: ttl_74x92
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS92
- RTL: rtl/chips/ttl_74x92/ttl_74x92.sv
- Testbench: tb/chips/ttl_74x92/tb_ttl_74x92.sv
- README: rtl/chips/ttl_74x92/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x93 - 4-bit binary counter (separate divide-by-2 and divide-by-8 sections); different pinout for 74L93
- Status: [x]
- Module: ttl_74x93
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS93
- RTL: rtl/chips/ttl_74x93/ttl_74x93.sv
- Testbench: tb/chips/ttl_74x93/tb_ttl_74x93.sv
- README: rtl/chips/ttl_74x93/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x94 - 4-bit shift register, dual asynchronous presets
- Status: [x]
- Module: ttl_74x94
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7494
- RTL: rtl/chips/ttl_74x94/ttl_74x94.sv
- Testbench: tb/chips/ttl_74x94/tb_ttl_74x94.sv
- README: rtl/chips/ttl_74x94/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x95 - 4-bit shift register, parallel in, parallel out, serial input; different pinout for 74L95
- Status: [x]
- Module: ttl_74x95
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS95B
- RTL: rtl/chips/ttl_74x95/ttl_74x95.sv
- Testbench: tb/chips/ttl_74x95/tb_ttl_74x95.sv
- README: rtl/chips/ttl_74x95/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x96 - 5-bit parallel-in/parallel-out shift register, asynchronous preset
- Status: [x]
- Module: ttl_74x96
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS96
- RTL: rtl/chips/ttl_74x96/ttl_74x96.sv
- Testbench: tb/chips/ttl_74x96/tb_ttl_74x96.sv
- README: rtl/chips/ttl_74x96/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x97 - synchronous 6-bit binary rate multiplier
- Status: [x]
- Module: ttl_74x97
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN7497
- RTL: rtl/chips/ttl_74x97/ttl_74x97.sv
- Testbench: tb/chips/ttl_74x97/tb_ttl_74x97.sv
- README: rtl/chips/ttl_74x97/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x98 - 4-bit data selector/storage register
- Status: [x]
- Module: ttl_74x98
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN54L98
- RTL: rtl/chips/ttl_74x98/ttl_74x98.sv
- Testbench: tb/chips/ttl_74x98/tb_ttl_74x98.sv
- README: rtl/chips/ttl_74x98/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x99 - 4-bit bidirectional universal shift register
- Status: [x]
- Module: ttl_74x99
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN54L99
- RTL: rtl/chips/ttl_74x99/ttl_74x99.sv
- Testbench: tb/chips/ttl_74x99/tb_ttl_74x99.sv
- README: rtl/chips/ttl_74x99/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x100 - dual 4-bit bistable latch
- Status: [x]
- Module: ttl_74x100
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74100
- RTL: rtl/chips/ttl_74x100/ttl_74x100.sv
- Testbench: tb/chips/ttl_74x100/tb_ttl_74x100.sv
- README: rtl/chips/ttl_74x100/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x101 - AND-OR-gated J-K negative-edge-triggered flip-flop, preset
- Status: [x]
- Module: ttl_74x101
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H101
- RTL: rtl/chips/ttl_74x101/ttl_74x101.sv
- Testbench: tb/chips/ttl_74x101/tb_ttl_74x101.sv
- README: rtl/chips/ttl_74x101/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x102 - AND-gated J-K negative-edge-triggered flip-flop, preset and clear
- Status: [x]
- Module: ttl_74x102
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H102
- RTL: rtl/chips/ttl_74x102/ttl_74x102.sv
- Testbench: tb/chips/ttl_74x102/tb_ttl_74x102.sv
- README: rtl/chips/ttl_74x102/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x103 - dual J-K negative-edge-triggered flip-flop, clear
- Status: [x]
- Module: ttl_74x103
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H103
- RTL: rtl/chips/ttl_74x103/ttl_74x103.sv
- Testbench: tb/chips/ttl_74x103/tb_ttl_74x103.sv
- README: rtl/chips/ttl_74x103/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x104 - J-K master-slave flip-flop
- Status: [x]
- Module: ttl_74x104
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74104
- RTL: rtl/chips/ttl_74x104/ttl_74x104.sv
- Testbench: tb/chips/ttl_74x104/tb_ttl_74x104.sv
- README: rtl/chips/ttl_74x104/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x105 - J-K master-slave flip-flop, J2 and K2 inverted
- Status: [x]
- Module: ttl_74x105
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74105
- RTL: rtl/chips/ttl_74x105/ttl_74x105.sv
- Testbench: tb/chips/ttl_74x105/tb_ttl_74x105.sv
- README: rtl/chips/ttl_74x105/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x106 - dual J-K negative-edge-triggered flip-flop, preset and clear
- Status: [x]
- Module: ttl_74x106
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74H106
- RTL: rtl/chips/ttl_74x106/ttl_74x106.sv
- Testbench: tb/chips/ttl_74x106/tb_ttl_74x106.sv
- README: rtl/chips/ttl_74x106/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x107 - dual J-K flip-flop, clear
- Status: [x]
- Module: ttl_74x107
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS107A
- RTL: rtl/chips/ttl_74x107/ttl_74x107.sv
- Testbench: tb/chips/ttl_74x107/tb_ttl_74x107.sv
- README: rtl/chips/ttl_74x107/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x108 - dual J-K negative-edge-triggered flip-flop, preset, shared clock and clear
- Status: [x]
- Module: ttl_74x108
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74H108
- RTL: rtl/chips/ttl_74x108/ttl_74x108.sv
- Testbench: tb/chips/ttl_74x108/tb_ttl_74x108.sv
- README: rtl/chips/ttl_74x108/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x109 - dual J-NotK positive-edge-triggered flip-flop, clear and preset
- Status: [x]
- Module: ttl_74x109
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS109A
- RTL: rtl/chips/ttl_74x109/ttl_74x109.sv
- Testbench: tb/chips/ttl_74x109/tb_ttl_74x109.sv
- README: rtl/chips/ttl_74x109/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x110 - AND-gated J-K master-slave flip-flop, data lockout
- Status: [x]
- Module: ttl_74x110
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74110
- RTL: rtl/chips/ttl_74x110/ttl_74x110.sv
- Testbench: tb/chips/ttl_74x110/tb_ttl_74x110.sv
- README: rtl/chips/ttl_74x110/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x111 - dual J-K master-slave flip-flop, data lockout, reset, set
- Status: [x]
- Module: ttl_74x111
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74111
- RTL: rtl/chips/ttl_74x111/ttl_74x111.sv
- Testbench: tb/chips/ttl_74x111/tb_ttl_74x111.sv
- README: rtl/chips/ttl_74x111/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x112 - dual J-K negative-edge-triggered flip-flop, clear & preset, Q & /Q outputs
- Status: [x]
- Module: ttl_74x112
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS112A
- RTL: rtl/chips/ttl_74x112/ttl_74x112.sv
- Testbench: tb/chips/ttl_74x112/tb_ttl_74x112.sv
- README: rtl/chips/ttl_74x112/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x113 - dual J-K negative-edge-triggered flip-flop, preset
- Status: [x]
- Module: ttl_74x113
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS113A
- RTL: rtl/chips/ttl_74x113/ttl_74x113.sv
- Testbench: tb/chips/ttl_74x113/tb_ttl_74x113.sv
- README: rtl/chips/ttl_74x113/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x114 - dual J-K negative-edge-triggered flip-flop, preset, shared clock and clear
- Status: [x]
- Module: ttl_74x114
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS114A
- RTL: rtl/chips/ttl_74x114/ttl_74x114.sv
- Testbench: tb/chips/ttl_74x114/tb_ttl_74x114.sv
- README: rtl/chips/ttl_74x114/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean. Master-slave/data-lockout details rendered as posedge per docs/conventions.md.

### 74x115 - dual J-K master-slave flip-flop, data lockout, reset
- Status: [x]
- Module: ttl_74x115
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: TL74115N
- RTL: rtl/chips/ttl_74x115/ttl_74x115.sv
- Testbench: tb/chips/ttl_74x115/tb_ttl_74x115.sv
- README: rtl/chips/ttl_74x115/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74116 - dual 4-bit latch, clear
- Status: [x]
- Module: ttl_74116
- Aliases: 74L116
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: title=TTL-Taschenbuch, Teil 1 |trans-title=TTL Pocket Reference, Part 1 |language=de |publisher=IWT Verlag |place=Vaterstetten |date=1992 |isbn=3-88322-191-0}}</ref>
- RTL: rtl/chips/ttl_74116/ttl_74116.sv
- Testbench: tb/chips/ttl_74116/tb_ttl_74116.sv
- README: rtl/chips/ttl_74116/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74H116 - AND-gated J-K flip flop
- Status: [x]
- Module: ttl_74h116
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74H116
- RTL: rtl/chips/ttl_74h116/ttl_74h116.sv
- Testbench: tb/chips/ttl_74h116/tb_ttl_74h116.sv
- README: rtl/chips/ttl_74h116/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x117 - AND-gated J-K flip flop, one J and K input inverted
- Status: [x]
- Module: ttl_74x117
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74H117
- RTL: rtl/chips/ttl_74x117/ttl_74x117.sv
- Testbench: tb/chips/ttl_74x117/tb_ttl_74x117.sv
- README: rtl/chips/ttl_74x117/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x118 - hex set/reset latch, shared reset
- Status: [x]
- Module: ttl_74x118
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: ITT74118
- RTL: rtl/chips/ttl_74x118/ttl_74x118.sv
- Testbench: tb/chips/ttl_74x118/tb_ttl_74x118.sv
- README: rtl/chips/ttl_74x118/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74119 - hex set/reset latch
- Status: [x]
- Module: ttl_74119
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 1-125}}
- RTL: rtl/chips/ttl_74119/ttl_74119.sv
- Testbench: tb/chips/ttl_74119/tb_ttl_74119.sv
- README: rtl/chips/ttl_74119/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74H119 - dual J-K flip-flop, shared clock and clear
- Status: [x]
- Module: ttl_74h119
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74H119
- RTL: rtl/chips/ttl_74h119/ttl_74h119.sv
- Testbench: tb/chips/ttl_74h119/tb_ttl_74h119.sv
- README: rtl/chips/ttl_74h119/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74120 - dual pulse synchronizer/drivers
- Status: [x]
- Module: ttl_74120
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 15 kΩ pull-up
- Output features: 
- Pins: 16
- Datasheet/source: SN74120
- RTL: rtl/chips/ttl_74120/ttl_74120.sv
- Testbench: tb/chips/ttl_74120/tb_ttl_74120.sv
- README: rtl/chips/ttl_74120/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74H120 - dual J-K flip-flop, separate clock inputs
- Status: [x]
- Module: ttl_74h120
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74H120
- RTL: rtl/chips/ttl_74h120/ttl_74h120.sv
- Testbench: tb/chips/ttl_74h120/tb_ttl_74h120.sv
- README: rtl/chips/ttl_74h120/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x121 - monostable multivibrator
- Status: [!]
- Module: ttl_74x121
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74121
- RTL: rtl/chips/ttl_74x121/ttl_74x121.sv
- Testbench: tb/chips/ttl_74x121/tb_ttl_74x121.sv
- README: rtl/chips/ttl_74x121/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x122 - retriggerable monostable multivibrator, clear
- Status: [!]
- Module: ttl_74x122
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS122
- RTL: rtl/chips/ttl_74x122/ttl_74x122.sv
- Testbench: tb/chips/ttl_74x122/tb_ttl_74x122.sv
- README: rtl/chips/ttl_74x122/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x123 - dual retriggerable monostable multivibrator, clear
- Status: [!]
- Module: ttl_74x123
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS123
- RTL: rtl/chips/ttl_74x123/ttl_74x123.sv
- Testbench: tb/chips/ttl_74x123/tb_ttl_74x123.sv
- README: rtl/chips/ttl_74x123/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x124 - dual voltage-controlled oscillator
- Status: [!]
- Module: ttl_74x124
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74S124
- RTL: rtl/chips/ttl_74x124/ttl_74x124.sv
- Testbench: tb/chips/ttl_74x124/tb_ttl_74x124.sv
- README: rtl/chips/ttl_74x124/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x125 - quad bus buffer, negative enable
- Status: [x]
- Module: ttl_74x125
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74LS125A
- RTL: rtl/chips/ttl_74x125/ttl_74x125.sv
- Testbench: tb/chips/ttl_74x125/tb_ttl_74x125.sv
- README: rtl/chips/ttl_74x125/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x126 - quad bus buffer, positive enable
- Status: [x]
- Module: ttl_74x126
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74LS126A
- RTL: rtl/chips/ttl_74x126/ttl_74x126.sv
- Testbench: tb/chips/ttl_74x126/tb_ttl_74x126.sv
- README: rtl/chips/ttl_74x126/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x128 - quad 2-input NOR gate
- Status: [x]
- Module: ttl_74x128
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver 50 Ω
- Pins: 14
- Datasheet/source: SN74128
- RTL: rtl/chips/ttl_74x128/ttl_74x128.sv
- Testbench: tb/chips/ttl_74x128/tb_ttl_74x128.sv
- README: rtl/chips/ttl_74x128/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x130 - retriggerable monostable multivibrator
- Status: [!]
- Module: ttl_74x130
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74130
- RTL: rtl/chips/ttl_74x130/ttl_74x130.sv
- Testbench: tb/chips/ttl_74x130/tb_ttl_74x130.sv
- README: rtl/chips/ttl_74x130/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74131 - quad 2-input AND gate
- Status: [x]
- Module: ttl_74131
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector 15 V
- Pins: 14
- Datasheet/source: ITT74131
- RTL: rtl/chips/ttl_74131/ttl_74131.sv
- Testbench: tb/chips/ttl_74131/tb_ttl_74131.sv
- README: rtl/chips/ttl_74131/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74AS131 - 3-to-8 line decoder/demultiplexer, address register, inverting outputs
- Status: [x]
- Module: ttl_74as131
- Aliases: 74ALS131
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74AS131
- RTL: rtl/chips/ttl_74as131/ttl_74as131.sv
- Testbench: tb/chips/ttl_74as131/tb_ttl_74as131.sv
- README: rtl/chips/ttl_74as131/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x132 - quad 2-input NAND gate
- Status: [x]
- Module: ttl_74x132
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS132
- RTL: rtl/chips/ttl_74x132/ttl_74x132.sv
- Testbench: tb/chips/ttl_74x132/tb_ttl_74x132.sv
- README: rtl/chips/ttl_74x132/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x133 - single 13-input NAND gate
- Status: [x]
- Module: ttl_74x133
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74ALS133
- RTL: rtl/chips/ttl_74x133/ttl_74x133.sv
- Testbench: tb/chips/ttl_74x133/tb_ttl_74x133.sv
- README: rtl/chips/ttl_74x133/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x134 - single 12-input NAND gate
- Status: [x]
- Module: ttl_74x134
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S134
- RTL: rtl/chips/ttl_74x134/ttl_74x134.sv
- Testbench: tb/chips/ttl_74x134/tb_ttl_74x134.sv
- README: rtl/chips/ttl_74x134/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x135 - quad XOR/XNOR gate, two inputs to select logic type
- Status: [x]
- Module: ttl_74x135
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S135
- RTL: rtl/chips/ttl_74x135/ttl_74x135.sv
- Testbench: tb/chips/ttl_74x135/tb_ttl_74x135.sv
- README: rtl/chips/ttl_74x135/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x136 - quad 2-input XOR gate
- Status: [x]
- Module: ttl_74x136
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS136
- RTL: rtl/chips/ttl_74x136/ttl_74x136.sv
- Testbench: tb/chips/ttl_74x136/tb_ttl_74x136.sv
- README: rtl/chips/ttl_74x136/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x137 - 3-to-8 line decoder/demultiplexer, address latch, inverting outputs
- Status: [x]
- Module: ttl_74x137
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS137
- RTL: rtl/chips/ttl_74x137/ttl_74x137.sv
- Testbench: tb/chips/ttl_74x137/tb_ttl_74x137.sv
- README: rtl/chips/ttl_74x137/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x138 - 3-to-8 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x138
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS138
- RTL: rtl/chips/ttl_74x138/ttl_74x138.sv
- Testbench: tb/chips/ttl_74x138/tb_ttl_74x138.sv
- README: rtl/chips/ttl_74x138/README.md
- Notes:
  - 3-to-8 active-low decoder with 3 enable inputs (one active-high, two active-low); 64-vector exhaustive testbench.

### 74x139 - dual 2-to-4 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x139
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS139A
- RTL: rtl/chips/ttl_74x139/ttl_74x139.sv
- Testbench: tb/chips/ttl_74x139/tb_ttl_74x139.sv
- README: rtl/chips/ttl_74x139/README.md
- Notes:
  - Two independent 2-to-4 active-low decoders, each with active-low enable. 64-vector exhaustive testbench.

### 74x140 - dual 4-input NAND gate
- Status: [x]
- Module: ttl_74x140
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: driver 50 Ω
- Pins: 14
- Datasheet/source: SN74S140
- RTL: rtl/chips/ttl_74x140/ttl_74x140.sv
- Testbench: tb/chips/ttl_74x140/tb_ttl_74x140.sv
- README: rtl/chips/ttl_74x140/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x141 - BCD to decimal decoder/driver for cold-cathode indicator / Nixie tube
- Status: [x]
- Module: ttl_74x141
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 60 V
- Pins: 16
- Datasheet/source: DM74141
- RTL: rtl/chips/ttl_74x141/ttl_74x141.sv
- Testbench: tb/chips/ttl_74x141/tb_ttl_74x141.sv
- README: rtl/chips/ttl_74x141/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x142 - decade counter/latch/decoder/driver for Nixie tubes
- Status: [x]
- Module: ttl_74x142
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 60 V
- Pins: 16
- Datasheet/source: SN74142
- RTL: rtl/chips/ttl_74x142/ttl_74x142.sv
- Testbench: tb/chips/ttl_74x142/tb_ttl_74x142.sv
- README: rtl/chips/ttl_74x142/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x143 - decade counter/latch/decoder/7-segment driver
- Status: [x]
- Module: ttl_74x143
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: constant current 15 mA
- Pins: 24
- Datasheet/source: SN74143
- RTL: rtl/chips/ttl_74x143/ttl_74x143.sv
- Testbench: tb/chips/ttl_74x143/tb_ttl_74x143.sv
- README: rtl/chips/ttl_74x143/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x144 - decade counter/latch/decoder/7-segment driver
- Status: [x]
- Module: ttl_74x144
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V / 25 mA
- Pins: 24
- Datasheet/source: SN74144
- RTL: rtl/chips/ttl_74x144/ttl_74x144.sv
- Testbench: tb/chips/ttl_74x144/tb_ttl_74x144.sv
- README: rtl/chips/ttl_74x144/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x145 - BCD to decimal decoder/driver
- Status: [x]
- Module: ttl_74x145
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V / 80 mA
- Pins: 16
- Datasheet/source: SN74LS145
- RTL: rtl/chips/ttl_74x145/ttl_74x145.sv
- Testbench: tb/chips/ttl_74x145/tb_ttl_74x145.sv
- README: rtl/chips/ttl_74x145/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x146 - 3-to-8 line decoder
- Status: [x]
- Module: ttl_74x146
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 
- Datasheet/source: MCE74H146
- RTL: rtl/chips/ttl_74x146/ttl_74x146.sv
- Testbench: tb/chips/ttl_74x146/tb_ttl_74x146.sv
- README: rtl/chips/ttl_74x146/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x147 - 10-line to 4-line priority encoder
- Status: [x]
- Module: ttl_74x147
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS147
- RTL: rtl/chips/ttl_74x147/ttl_74x147.sv
- Testbench: tb/chips/ttl_74x147/tb_ttl_74x147.sv
- README: rtl/chips/ttl_74x147/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x148 - 8-line to 3-line priority encoder
- Status: [x]
- Module: ttl_74x148
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS148
- RTL: rtl/chips/ttl_74x148/ttl_74x148.sv
- Testbench: tb/chips/ttl_74x148/tb_ttl_74x148.sv
- README: rtl/chips/ttl_74x148/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x149 - 8-line to 8-line priority encoder
- Status: [x]
- Module: ttl_74x149
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MM74HCT149
- RTL: rtl/chips/ttl_74x149/ttl_74x149.sv
- Testbench: tb/chips/ttl_74x149/tb_ttl_74x149.sv
- README: rtl/chips/ttl_74x149/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x150 - 16-line to 1-line data selector/multiplexer
- Status: [x]
- Module: ttl_74x150
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74150
- RTL: rtl/chips/ttl_74x150/ttl_74x150.sv
- Testbench: tb/chips/ttl_74x150/tb_ttl_74x150.sv
- README: rtl/chips/ttl_74x150/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x151 - 8-line to 1-line data selector/multiplexer
- Status: [x]
- Module: ttl_74x151
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS151
- RTL: rtl/chips/ttl_74x151/ttl_74x151.sv
- Testbench: tb/chips/ttl_74x151/tb_ttl_74x151.sv
- README: rtl/chips/ttl_74x151/README.md
- Notes:
  - 8-to-1 mux with complementary outputs (y and w=~y) and active-low enable.

### 74x152 - 8-line to 1-line data selector/multiplexer, inverting output
- Status: [x]
- Module: ttl_74x152
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN54152A
- RTL: rtl/chips/ttl_74x152/ttl_74x152.sv
- Testbench: tb/chips/ttl_74x152/tb_ttl_74x152.sv
- README: rtl/chips/ttl_74x152/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x153 - dual 4-line to 1-line data selector/multiplexer, non-inverting outputs
- Status: [x]
- Module: ttl_74x153
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS153
- RTL: rtl/chips/ttl_74x153/ttl_74x153.sv
- Testbench: tb/chips/ttl_74x153/tb_ttl_74x153.sv
- README: rtl/chips/ttl_74x153/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x154 - 4-to-16 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x154
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74154
- RTL: rtl/chips/ttl_74x154/ttl_74x154.sv
- Testbench: tb/chips/ttl_74x154/tb_ttl_74x154.sv
- README: rtl/chips/ttl_74x154/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x155 - dual 2-to-4 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x155
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS155A
- RTL: rtl/chips/ttl_74x155/ttl_74x155.sv
- Testbench: tb/chips/ttl_74x155/tb_ttl_74x155.sv
- README: rtl/chips/ttl_74x155/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x156 - dual 2-to-4 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x156
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS156
- RTL: rtl/chips/ttl_74x156/ttl_74x156.sv
- Testbench: tb/chips/ttl_74x156/tb_ttl_74x156.sv
- README: rtl/chips/ttl_74x156/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x157 - quad 2-line to 1-line data selector/multiplexer, non-inverting outputs
- Status: [x]
- Module: ttl_74x157
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS157
- RTL: rtl/chips/ttl_74x157/ttl_74x157.sv
- Testbench: tb/chips/ttl_74x157/tb_ttl_74x157.sv
- README: rtl/chips/ttl_74x157/README.md
- Notes:
  - Four 2-to-1 muxes; output forced low when chip enable g_n=1.

### 74x158 - quad 2-line to 1-line data selector/multiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x158
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS158
- RTL: rtl/chips/ttl_74x158/ttl_74x158.sv
- Testbench: tb/chips/ttl_74x158/tb_ttl_74x158.sv
- README: rtl/chips/ttl_74x158/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x159 - 4-to-16 line decoder/demultiplexer
- Status: [x]
- Module: ttl_74x159
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74159
- RTL: rtl/chips/ttl_74x159/ttl_74x159.sv
- Testbench: tb/chips/ttl_74x159/tb_ttl_74x159.sv
- README: rtl/chips/ttl_74x159/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x160 - synchronous presettable 4-bit decade counter, asynchronous clear
- Status: [x]
- Module: ttl_74x160
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS160A
- RTL: rtl/chips/ttl_74x160/ttl_74x160.sv
- Testbench: tb/chips/ttl_74x160/tb_ttl_74x160.sv
- README: rtl/chips/ttl_74x160/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x161 - synchronous presettable 4-bit binary counter, asynchronous clear
- Status: [x]
- Module: ttl_74x161
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS161A
- RTL: rtl/chips/ttl_74x161/ttl_74x161.sv
- Testbench: tb/chips/ttl_74x161/tb_ttl_74x161.sv
- README: rtl/chips/ttl_74x161/README.md
- Notes:
  - 4-bit counter differing from 74x163 only in clear being async vs sync.

### 74x162 - synchronous presettable 4-bit decade counter, synchronous clear
- Status: [x]
- Module: ttl_74x162
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS162A
- RTL: rtl/chips/ttl_74x162/ttl_74x162.sv
- Testbench: tb/chips/ttl_74x162/tb_ttl_74x162.sv
- README: rtl/chips/ttl_74x162/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x163 - synchronous presettable 4-bit binary counter, synchronous clear
- Status: [x]
- Module: ttl_74x163
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS163A
- RTL: rtl/chips/ttl_74x163/ttl_74x163.sv
- Testbench: tb/chips/ttl_74x163/tb_ttl_74x163.sv
- README: rtl/chips/ttl_74x163/README.md
- Notes:
  - Synchronous clear and load (vs. 74x161 async clear). Testbench covers sync clear, sync load, count up + rollover, hold, ripple-carry, priority of clear over load.

### 74x164 - 8-bit serial-in parallel-out (SIPO) shift register, asynchronous clear, not output latch
- Status: [x]
- Module: ttl_74x164
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74164
- RTL: rtl/chips/ttl_74x164/ttl_74x164.sv
- Testbench: tb/chips/ttl_74x164/tb_ttl_74x164.sv
- README: rtl/chips/ttl_74x164/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x165 - 8-bit parallel-in serial-out (PISO) shift register, parallel load, complementary outputs
- Status: [x]
- Module: ttl_74x165
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS165A
- RTL: rtl/chips/ttl_74x165/ttl_74x165.sv
- Testbench: tb/chips/ttl_74x165/tb_ttl_74x165.sv
- README: rtl/chips/ttl_74x165/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x166 - parallel-load 8-bit shift register
- Status: [x]
- Module: ttl_74x166
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS166A
- RTL: rtl/chips/ttl_74x166/ttl_74x166.sv
- Testbench: tb/chips/ttl_74x166/tb_ttl_74x166.sv
- README: rtl/chips/ttl_74x166/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x167 - synchronous decade rate multiplier
- Status: [x]
- Module: ttl_74x167
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74167
- RTL: rtl/chips/ttl_74x167/ttl_74x167.sv
- Testbench: tb/chips/ttl_74x167/tb_ttl_74x167.sv
- README: rtl/chips/ttl_74x167/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x168 - synchronous presettable 4-bit up/down decade counter
- Status: [x]
- Module: ttl_74x168
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: DM74LS168
- RTL: rtl/chips/ttl_74x168/ttl_74x168.sv
- Testbench: tb/chips/ttl_74x168/tb_ttl_74x168.sv
- README: rtl/chips/ttl_74x168/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x169 - synchronous presettable 4-bit up/down binary counter
- Status: [x]
- Module: ttl_74x169
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS169B
- RTL: rtl/chips/ttl_74x169/ttl_74x169.sv
- Testbench: tb/chips/ttl_74x169/tb_ttl_74x169.sv
- README: rtl/chips/ttl_74x169/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x170 - 16-bit register file (4x4)
- Status: [x]
- Module: ttl_74x170
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74170
- RTL: rtl/chips/ttl_74x170/ttl_74x170.sv
- Testbench: tb/chips/ttl_74x170/tb_ttl_74x170.sv
- README: rtl/chips/ttl_74x170/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x171 - quad D flip-flops, shared clock and clear
- Status: [x]
- Module: ttl_74x171
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS171
- RTL: rtl/chips/ttl_74x171/ttl_74x171.sv
- Testbench: tb/chips/ttl_74x171/tb_ttl_74x171.sv
- README: rtl/chips/ttl_74x171/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x172 - 16-bit multiple port register file (8x2)
- Status: [x]
- Module: ttl_74x172
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74172
- RTL: rtl/chips/ttl_74x172/ttl_74x172.sv
- Testbench: tb/chips/ttl_74x172/tb_ttl_74x172.sv
- README: rtl/chips/ttl_74x172/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x173 - quad D flip-flop, shared clock and asynchronous clear and enable, Q & /Q outputs
- Status: [x]
- Module: ttl_74x173
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS173A
- RTL: rtl/chips/ttl_74x173/ttl_74x173.sv
- Testbench: tb/chips/ttl_74x173/tb_ttl_74x173.sv
- README: rtl/chips/ttl_74x173/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x174 - hex D flip-flop, shared clock and asynchronous clear, Q outputs
- Status: [x]
- Module: ttl_74x174
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS174
- RTL: rtl/chips/ttl_74x174/ttl_74x174.sv
- Testbench: tb/chips/ttl_74x174/tb_ttl_74x174.sv
- README: rtl/chips/ttl_74x174/README.md
- Notes:
  - 6 D flip-flops, common posedge clock, common async clear. No /Q outputs.

### 74x175 - quad D edge-triggered flip-flop, shared clock and asynchronous clear, Q & /Q outputs
- Status: [x]
- Module: ttl_74x175
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS175
- RTL: rtl/chips/ttl_74x175/ttl_74x175.sv
- Testbench: tb/chips/ttl_74x175/tb_ttl_74x175.sv
- README: rtl/chips/ttl_74x175/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x176 - presettable decade (bi-quinary) counter/latch
- Status: [x]
- Module: ttl_74x176
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74176
- RTL: rtl/chips/ttl_74x176/ttl_74x176.sv
- Testbench: tb/chips/ttl_74x176/tb_ttl_74x176.sv
- README: rtl/chips/ttl_74x176/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x177 - presettable binary counter/latch
- Status: [x]
- Module: ttl_74x177
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74177
- RTL: rtl/chips/ttl_74x177/ttl_74x177.sv
- Testbench: tb/chips/ttl_74x177/tb_ttl_74x177.sv
- README: rtl/chips/ttl_74x177/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x178 - 4-bit parallel-access shift register
- Status: [x]
- Module: ttl_74x178
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74178
- RTL: rtl/chips/ttl_74x178/ttl_74x178.sv
- Testbench: tb/chips/ttl_74x178/tb_ttl_74x178.sv
- README: rtl/chips/ttl_74x178/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x179 - 4-bit parallel-access shift register, asynchronous clear input, complementary Q output
- Status: [x]
- Module: ttl_74x179
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74179
- RTL: rtl/chips/ttl_74x179/ttl_74x179.sv
- Testbench: tb/chips/ttl_74x179/tb_ttl_74x179.sv
- README: rtl/chips/ttl_74x179/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x180 - 9-bit odd/even parity bit generator and checker
- Status: [x]
- Module: ttl_74x180
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74180
- RTL: rtl/chips/ttl_74x180/ttl_74x180.sv
- Testbench: tb/chips/ttl_74x180/tb_ttl_74x180.sv
- README: rtl/chips/ttl_74x180/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x181 - 4-bit arithmetic logic unit and function generator
- Status: [x]
- Module: ttl_74x181
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS181
- RTL: rtl/chips/ttl_74x181/ttl_74x181.sv
- Testbench: tb/chips/ttl_74x181/tb_ttl_74x181.sv
- README: rtl/chips/ttl_74x181/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x182 - lookahead carry generator
- Status: [x]
- Module: ttl_74x182
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S182
- RTL: rtl/chips/ttl_74x182/ttl_74x182.sv
- Testbench: tb/chips/ttl_74x182/tb_ttl_74x182.sv
- README: rtl/chips/ttl_74x182/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x183 - dual carry-save full adder
- Status: [x]
- Module: ttl_74x183
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS183
- RTL: rtl/chips/ttl_74x183/ttl_74x183.sv
- Testbench: tb/chips/ttl_74x183/tb_ttl_74x183.sv
- README: rtl/chips/ttl_74x183/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x184 - BCD to binary converter
- Status: [x]
- Module: ttl_74x184
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74184
- RTL: rtl/chips/ttl_74x184/ttl_74x184.sv
- Testbench: tb/chips/ttl_74x184/tb_ttl_74x184.sv
- README: rtl/chips/ttl_74x184/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x185 - 6-bit binary to BCD converter
- Status: [x]
- Module: ttl_74x185
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74185A
- RTL: rtl/chips/ttl_74x185/ttl_74x185.sv
- Testbench: tb/chips/ttl_74x185/tb_ttl_74x185.sv
- README: rtl/chips/ttl_74x185/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x186 - 512-bit ROM (64x8)
- Status: [x]
- Module: ttl_74x186
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74186
- RTL: rtl/chips/ttl_74x186/ttl_74x186.sv
- Testbench: tb/chips/ttl_74x186/tb_ttl_74x186.sv
- README: rtl/chips/ttl_74x186/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x187 - 1024-bit ROM (256x4)
- Status: [x]
- Module: ttl_74x187
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74187
- RTL: rtl/chips/ttl_74x187/ttl_74x187.sv
- Testbench: tb/chips/ttl_74x187/tb_ttl_74x187.sv
- README: rtl/chips/ttl_74x187/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x188 - 256-bit PROM (32x8)
- Status: [x]
- Module: ttl_74x188
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S188
- RTL: rtl/chips/ttl_74x188/ttl_74x188.sv
- Testbench: tb/chips/ttl_74x188/tb_ttl_74x188.sv
- README: rtl/chips/ttl_74x188/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x189 - 64-bit RAM (16x4), 4 data inputs, 4 inverted data outputs
- Status: [x]
- Module: ttl_74x189
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S189
- RTL: rtl/chips/ttl_74x189/ttl_74x189.sv
- Testbench: tb/chips/ttl_74x189/tb_ttl_74x189.sv
- README: rtl/chips/ttl_74x189/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x190 - synchronous presettable up/down 4-bit decade counter
- Status: [x]
- Module: ttl_74x190
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS190
- RTL: rtl/chips/ttl_74x190/ttl_74x190.sv
- Testbench: tb/chips/ttl_74x190/tb_ttl_74x190.sv
- README: rtl/chips/ttl_74x190/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x191 - synchronous presettable up/down 4-bit binary counter
- Status: [x]
- Module: ttl_74x191
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS191
- RTL: rtl/chips/ttl_74x191/ttl_74x191.sv
- Testbench: tb/chips/ttl_74x191/tb_ttl_74x191.sv
- README: rtl/chips/ttl_74x191/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x192 - synchronous presettable up/down 4-bit decade counter, clear
- Status: [x]
- Module: ttl_74x192
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS192
- RTL: rtl/chips/ttl_74x192/ttl_74x192.sv
- Testbench: tb/chips/ttl_74x192/tb_ttl_74x192.sv
- README: rtl/chips/ttl_74x192/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x193 - synchronous presettable up/down 4-bit binary counter, clear
- Status: [x]
- Module: ttl_74x193
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS193
- RTL: rtl/chips/ttl_74x193/ttl_74x193.sv
- Testbench: tb/chips/ttl_74x193/tb_ttl_74x193.sv
- README: rtl/chips/ttl_74x193/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x194 - 4-bit bidirectional universal shift register
- Status: [x]
- Module: ttl_74x194
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74194
- RTL: rtl/chips/ttl_74x194/ttl_74x194.sv
- Testbench: tb/chips/ttl_74x194/tb_ttl_74x194.sv
- README: rtl/chips/ttl_74x194/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x195 - 4-bit parallel-access shift register
- Status: [x]
- Module: ttl_74x195
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74195
- RTL: rtl/chips/ttl_74x195/ttl_74x195.sv
- Testbench: tb/chips/ttl_74x195/tb_ttl_74x195.sv
- README: rtl/chips/ttl_74x195/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x196 - presettable 4-bit decade counter/latch
- Status: [x]
- Module: ttl_74x196
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74196
- RTL: rtl/chips/ttl_74x196/ttl_74x196.sv
- Testbench: tb/chips/ttl_74x196/tb_ttl_74x196.sv
- README: rtl/chips/ttl_74x196/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x197 - presettable 4-bit binary counter/latch
- Status: [x]
- Module: ttl_74x197
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74197
- RTL: rtl/chips/ttl_74x197/ttl_74x197.sv
- Testbench: tb/chips/ttl_74x197/tb_ttl_74x197.sv
- README: rtl/chips/ttl_74x197/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x198 - 8-bit bidirectional universal shift register
- Status: [x]
- Module: ttl_74x198
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74198
- RTL: rtl/chips/ttl_74x198/ttl_74x198.sv
- Testbench: tb/chips/ttl_74x198/tb_ttl_74x198.sv
- README: rtl/chips/ttl_74x198/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x199 - 8-bit universal shift register, J-NotK serial inputs
- Status: [x]
- Module: ttl_74x199
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74199
- RTL: rtl/chips/ttl_74x199/ttl_74x199.sv
- Testbench: tb/chips/ttl_74x199/tb_ttl_74x199.sv
- README: rtl/chips/ttl_74x199/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x200 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x200
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: DM74S200
- RTL: rtl/chips/ttl_74x200/ttl_74x200.sv
- Testbench: tb/chips/ttl_74x200/tb_ttl_74x200.sv
- README: rtl/chips/ttl_74x200/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x201 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x201
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S201
- RTL: rtl/chips/ttl_74x201/ttl_74x201.sv
- Testbench: tb/chips/ttl_74x201/tb_ttl_74x201.sv
- README: rtl/chips/ttl_74x201/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x202 - 256-bit RAM (256x1) with power down
- Status: [x]
- Module: ttl_74x202
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS202
- RTL: rtl/chips/ttl_74x202/ttl_74x202.sv
- Testbench: tb/chips/ttl_74x202/tb_ttl_74x202.sv
- README: rtl/chips/ttl_74x202/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x206 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x206
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: DM74S206
- RTL: rtl/chips/ttl_74x206/ttl_74x206.sv
- Testbench: tb/chips/ttl_74x206/tb_ttl_74x206.sv
- README: rtl/chips/ttl_74x206/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x207 - 1024-bit RAM (256x4)
- Status: [x]
- Module: ttl_74x207
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS207
- RTL: rtl/chips/ttl_74x207/ttl_74x207.sv
- Testbench: tb/chips/ttl_74x207/tb_ttl_74x207.sv
- README: rtl/chips/ttl_74x207/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x208 - 1024-bit RAM (256x4), separate data in- and outputs
- Status: [x]
- Module: ttl_74x208
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS208
- RTL: rtl/chips/ttl_74x208/ttl_74x208.sv
- Testbench: tb/chips/ttl_74x208/tb_ttl_74x208.sv
- README: rtl/chips/ttl_74x208/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x209 - 1024-bit RAM (1024x1)
- Status: [x]
- Module: ttl_74x209
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S209
- RTL: rtl/chips/ttl_74x209/ttl_74x209.sv
- Testbench: tb/chips/ttl_74x209/tb_ttl_74x209.sv
- README: rtl/chips/ttl_74x209/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x210 - octal buffer, inverting
- Status: [x]
- Module: ttl_74x210
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS210
- RTL: rtl/chips/ttl_74x210/ttl_74x210.sv
- Testbench: tb/chips/ttl_74x210/tb_ttl_74x210.sv
- README: rtl/chips/ttl_74x210/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x211 - 144-bit RAM (16x9) with output latch
- Status: [x]
- Module: ttl_74x211
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F211
- RTL: rtl/chips/ttl_74x211/ttl_74x211.sv
- Testbench: tb/chips/ttl_74x211/tb_ttl_74x211.sv
- README: rtl/chips/ttl_74x211/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x212 - 144-bit RAM (16x9)
- Status: [x]
- Module: ttl_74x212
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F212
- RTL: rtl/chips/ttl_74x212/ttl_74x212.sv
- Testbench: tb/chips/ttl_74x212/tb_ttl_74x212.sv
- README: rtl/chips/ttl_74x212/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x213 - 192-bit RAM (16x12)
- Status: [x]
- Module: ttl_74x213
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F213
- RTL: rtl/chips/ttl_74x213/ttl_74x213.sv
- Testbench: tb/chips/ttl_74x213/tb_ttl_74x213.sv
- README: rtl/chips/ttl_74x213/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x214 - 1024-bit RAM (1024x1)
- Status: [x]
- Module: ttl_74x214
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS214
- RTL: rtl/chips/ttl_74x214/ttl_74x214.sv
- Testbench: tb/chips/ttl_74x214/tb_ttl_74x214.sv
- README: rtl/chips/ttl_74x214/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x215 - 1024-bit RAM (1024x1) with power-down mode
- Status: [x]
- Module: ttl_74x215
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS215
- RTL: rtl/chips/ttl_74x215/ttl_74x215.sv
- Testbench: tb/chips/ttl_74x215/tb_ttl_74x215.sv
- README: rtl/chips/ttl_74x215/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x216 - 256-bit RAM (64x4), common I/O
- Status: [x]
- Module: ttl_74x216
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS216
- RTL: rtl/chips/ttl_74x216/ttl_74x216.sv
- Testbench: tb/chips/ttl_74x216/tb_ttl_74x216.sv
- README: rtl/chips/ttl_74x216/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x217 - 256-bit RAM (64x4)
- Status: [x]
- Module: ttl_74x217
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS217
- RTL: rtl/chips/ttl_74x217/ttl_74x217.sv
- Testbench: tb/chips/ttl_74x217/tb_ttl_74x217.sv
- README: rtl/chips/ttl_74x217/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x218 - 256-bit RAM (32x8)
- Status: [x]
- Module: ttl_74x218
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS218
- RTL: rtl/chips/ttl_74x218/ttl_74x218.sv
- Testbench: tb/chips/ttl_74x218/tb_ttl_74x218.sv
- README: rtl/chips/ttl_74x218/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x219 - 64-bit RAM (16x4), non-inverting outputs
- Status: [x]
- Module: ttl_74x219
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS219
- RTL: rtl/chips/ttl_74x219/ttl_74x219.sv
- Testbench: tb/chips/ttl_74x219/tb_ttl_74x219.sv
- README: rtl/chips/ttl_74x219/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x221 - dual monostable multivibrator
- Status: [!]
- Module: ttl_74x221
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: Schmitt trigger
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS221
- RTL: rtl/chips/ttl_74x221/ttl_74x221.sv
- Testbench: tb/chips/ttl_74x221/tb_ttl_74x221.sv
- README: rtl/chips/ttl_74x221/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x222 - 64-bit FIFO memory (16x4), synchronous, input/output ready enable
- Status: [x]
- Module: ttl_74x222
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS222
- RTL: rtl/chips/ttl_74x222/ttl_74x222.sv
- Testbench: tb/chips/ttl_74x222/tb_ttl_74x222.sv
- README: rtl/chips/ttl_74x222/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x224 - 64-bit FIFO memory (16x4), synchronous
- Status: [x]
- Module: ttl_74x224
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS224
- RTL: rtl/chips/ttl_74x224/ttl_74x224.sv
- Testbench: tb/chips/ttl_74x224/tb_ttl_74x224.sv
- README: rtl/chips/ttl_74x224/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x225 - 80-bit FIFO memory (16x5), asynchronous
- Status: [x]
- Module: ttl_74x225
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S225
- RTL: rtl/chips/ttl_74x225/ttl_74x225.sv
- Testbench: tb/chips/ttl_74x225/tb_ttl_74x225.sv
- README: rtl/chips/ttl_74x225/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x226 - 4-bit parallel latched bus transceiver
- Status: [x]
- Module: ttl_74x226
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S226
- RTL: rtl/chips/ttl_74x226/ttl_74x226.sv
- Testbench: tb/chips/ttl_74x226/tb_ttl_74x226.sv
- README: rtl/chips/ttl_74x226/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x227 - 64-bit FIFO memory (16x4), synchronous, input/output ready enable
- Status: [x]
- Module: ttl_74x227
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS727
- RTL: rtl/chips/ttl_74x227/ttl_74x227.sv
- Testbench: tb/chips/ttl_74x227/tb_ttl_74x227.sv
- README: rtl/chips/ttl_74x227/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x228 - 64-bit FIFO memory (16x4), synchronous
- Status: [x]
- Module: ttl_74x228
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS728
- RTL: rtl/chips/ttl_74x228/ttl_74x228.sv
- Testbench: tb/chips/ttl_74x228/tb_ttl_74x228.sv
- README: rtl/chips/ttl_74x228/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x229 - 80-bit FIFO memory (16x5), asynchronous
- Status: [x]
- Module: ttl_74x229
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS229B
- RTL: rtl/chips/ttl_74x229/ttl_74x229.sv
- Testbench: tb/chips/ttl_74x229/tb_ttl_74x229.sv
- README: rtl/chips/ttl_74x229/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x230 - dual 4-bit buffer/driver, one inverted, one non-inverted; negative enable
- Status: [x]
- Module: ttl_74x230
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74AS230
- RTL: rtl/chips/ttl_74x230/ttl_74x230.sv
- Testbench: tb/chips/ttl_74x230/tb_ttl_74x230.sv
- README: rtl/chips/ttl_74x230/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x231 - dual 4-bit buffer/driver, both inverted; one positive and one negative enable
- Status: [x]
- Module: ttl_74x231
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74AS231
- RTL: rtl/chips/ttl_74x231/ttl_74x231.sv
- Testbench: tb/chips/ttl_74x231/tb_ttl_74x231.sv
- README: rtl/chips/ttl_74x231/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x232 - 64-bit FIFO memory (16x4), asynchronous
- Status: [x]
- Module: ttl_74x232
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74ALS232B
- RTL: rtl/chips/ttl_74x232/ttl_74x232.sv
- Testbench: tb/chips/ttl_74x232/tb_ttl_74x232.sv
- README: rtl/chips/ttl_74x232/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x233 - 80-bit FIFO memory (16x5), asynchronous
- Status: [x]
- Module: ttl_74x233
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS233B
- RTL: rtl/chips/ttl_74x233/ttl_74x233.sv
- Testbench: tb/chips/ttl_74x233/tb_ttl_74x233.sv
- README: rtl/chips/ttl_74x233/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x234 - 256-bit FIFO memory (64x4), asynchronous
- Status: [x]
- Module: ttl_74x234
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74ALS234
- RTL: rtl/chips/ttl_74x234/ttl_74x234.sv
- Testbench: tb/chips/ttl_74x234/tb_ttl_74x234.sv
- README: rtl/chips/ttl_74x234/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x235 - 320-bit FIFO memory (64x5), asynchronous
- Status: [x]
- Module: ttl_74x235
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS235
- RTL: rtl/chips/ttl_74x235/ttl_74x235.sv
- Testbench: tb/chips/ttl_74x235/tb_ttl_74x235.sv
- README: rtl/chips/ttl_74x235/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x236 - 256-bit FIFO memory (64x4), asynchronous
- Status: [x]
- Module: ttl_74x236
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74ALS236
- RTL: rtl/chips/ttl_74x236/ttl_74x236.sv
- Testbench: tb/chips/ttl_74x236/tb_ttl_74x236.sv
- README: rtl/chips/ttl_74x236/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x237 - 3-to-8 line decoder/demultiplexer, address latch, active high outputs
- Status: [x]
- Module: ttl_74x237
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC237
- RTL: rtl/chips/ttl_74x237/ttl_74x237.sv
- Testbench: tb/chips/ttl_74x237/tb_ttl_74x237.sv
- README: rtl/chips/ttl_74x237/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x238 - 3-to-8 line decoder/demultiplexer, active high outputs
- Status: [x]
- Module: ttl_74x238
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC238
- RTL: rtl/chips/ttl_74x238/ttl_74x238.sv
- Testbench: tb/chips/ttl_74x238/tb_ttl_74x238.sv
- README: rtl/chips/ttl_74x238/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x239 - dual 2-to-4 line decoder/demultiplexer, active high outputs
- Status: [x]
- Module: ttl_74x239
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC239
- RTL: rtl/chips/ttl_74x239/ttl_74x239.sv
- Testbench: tb/chips/ttl_74x239/tb_ttl_74x239.sv
- README: rtl/chips/ttl_74x239/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x240 - octal buffer, inverting outputs
- Status: [x]
- Module: ttl_74x240
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS240
- RTL: rtl/chips/ttl_74x240/ttl_74x240.sv
- Testbench: tb/chips/ttl_74x240/tb_ttl_74x240.sv
- README: rtl/chips/ttl_74x240/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x241 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x241
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS241
- RTL: rtl/chips/ttl_74x241/ttl_74x241.sv
- Testbench: tb/chips/ttl_74x241/tb_ttl_74x241.sv
- README: rtl/chips/ttl_74x241/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x242 - quad bus transceiver, inverting outputs
- Status: [x]
- Module: ttl_74x242
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74LS242
- RTL: rtl/chips/ttl_74x242/ttl_74x242.sv
- Testbench: tb/chips/ttl_74x242/tb_ttl_74x242.sv
- README: rtl/chips/ttl_74x242/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x243 - quad bus transceiver, non-inverting outputs
- Status: [x]
- Module: ttl_74x243
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74LS243
- RTL: rtl/chips/ttl_74x243/ttl_74x243.sv
- Testbench: tb/chips/ttl_74x243/tb_ttl_74x243.sv
- README: rtl/chips/ttl_74x243/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x244 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x244
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS244
- RTL: rtl/chips/ttl_74x244/ttl_74x244.sv
- Testbench: tb/chips/ttl_74x244/tb_ttl_74x244.sv
- README: rtl/chips/ttl_74x244/README.md
- Notes:
  - Two banks of 4 buffers with separate active-low OE. Tri-state represented as muxed-zero per docs/conventions.md.

### 74x245 - octal bus transceiver, non-inverting outputs
- Status: [x]
- Module: ttl_74x245
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS245
- RTL: rtl/chips/ttl_74x245/ttl_74x245.sv
- Testbench: tb/chips/ttl_74x245/tb_ttl_74x245.sv
- README: rtl/chips/ttl_74x245/README.md
- Notes:
  - Bidirectional transceiver split into a_in/a_out/a_oe_n and b_in/b_out/b_oe_n since FPGA internal logic cannot infer tri-state. README explains how to wrap with a tri-state pad.

### 74x246 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x246
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 30 V
- Pins: 16
- Datasheet/source: SN74246
- RTL: rtl/chips/ttl_74x246/ttl_74x246.sv
- Testbench: tb/chips/ttl_74x246/tb_ttl_74x246.sv
- README: rtl/chips/ttl_74x246/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x247 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x247
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V
- Pins: 16
- Datasheet/source: SN74LS247
- RTL: rtl/chips/ttl_74x247/ttl_74x247.sv
- Testbench: tb/chips/ttl_74x247/tb_ttl_74x247.sv
- README: rtl/chips/ttl_74x247/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x248 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x248
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector, 2 kΩ pull-up
- Pins: 16
- Datasheet/source: SN74LS248
- RTL: rtl/chips/ttl_74x248/ttl_74x248.sv
- Testbench: tb/chips/ttl_74x248/tb_ttl_74x248.sv
- README: rtl/chips/ttl_74x248/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x249 - BCD to 7-segment decoder/driver
- Status: [x]
- Module: ttl_74x249
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74249
- RTL: rtl/chips/ttl_74x249/ttl_74x249.sv
- Testbench: tb/chips/ttl_74x249/tb_ttl_74x249.sv
- README: rtl/chips/ttl_74x249/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x250 - 1 of 16 data selector/multiplexer
- Status: [x]
- Module: ttl_74x250
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS250
- RTL: rtl/chips/ttl_74x250/ttl_74x250.sv
- Testbench: tb/chips/ttl_74x250/tb_ttl_74x250.sv
- README: rtl/chips/ttl_74x250/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x251 - 8-line to 1-line data selector/multiplexer, complementary outputs
- Status: [x]
- Module: ttl_74x251
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS251
- RTL: rtl/chips/ttl_74x251/ttl_74x251.sv
- Testbench: tb/chips/ttl_74x251/tb_ttl_74x251.sv
- README: rtl/chips/ttl_74x251/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x253 - dual 4-line to 1-line data selector/multiplexer
- Status: [x]
- Module: ttl_74x253
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS253
- RTL: rtl/chips/ttl_74x253/ttl_74x253.sv
- Testbench: tb/chips/ttl_74x253/tb_ttl_74x253.sv
- README: rtl/chips/ttl_74x253/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x255 - dual 2-to-4 line decoder/demultiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x255
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: 74LS255
- RTL: rtl/chips/ttl_74x255/ttl_74x255.sv
- Testbench: tb/chips/ttl_74x255/tb_ttl_74x255.sv
- README: rtl/chips/ttl_74x255/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x256 - dual 4-bit addressable latch
- Status: [x]
- Module: ttl_74x256
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74F256
- RTL: rtl/chips/ttl_74x256/ttl_74x256.sv
- Testbench: tb/chips/ttl_74x256/tb_ttl_74x256.sv
- README: rtl/chips/ttl_74x256/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x257 - quad 2-line to 1-line data selector/multiplexer, non-inverting outputs
- Status: [x]
- Module: ttl_74x257
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS257B
- RTL: rtl/chips/ttl_74x257/ttl_74x257.sv
- Testbench: tb/chips/ttl_74x257/tb_ttl_74x257.sv
- README: rtl/chips/ttl_74x257/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x258 - quad 2-line to 1-line data selector/multiplexer, inverting outputs
- Status: [x]
- Module: ttl_74x258
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS258B
- RTL: rtl/chips/ttl_74x258/ttl_74x258.sv
- Testbench: tb/chips/ttl_74x258/tb_ttl_74x258.sv
- README: rtl/chips/ttl_74x258/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x259 - 8-bit bit addressable input latch with clr
- Status: [x]
- Module: ttl_74x259
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS259B
- RTL: rtl/chips/ttl_74x259/ttl_74x259.sv
- Testbench: tb/chips/ttl_74x259/tb_ttl_74x259.sv
- README: rtl/chips/ttl_74x259/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x260 - dual 5-input NOR gate
- Status: [x]
- Module: ttl_74x260
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS260
- RTL: rtl/chips/ttl_74x260/ttl_74x260.sv
- Testbench: tb/chips/ttl_74x260/tb_ttl_74x260.sv
- README: rtl/chips/ttl_74x260/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x261 - 2-bit by 4-bit parallel binary multiplier
- Status: [x]
- Module: ttl_74x261
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS261
- RTL: rtl/chips/ttl_74x261/ttl_74x261.sv
- Testbench: tb/chips/ttl_74x261/tb_ttl_74x261.sv
- README: rtl/chips/ttl_74x261/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x262 - 5760-bit ROM (Teletext character set, 128 characters 5x9)
- Status: [x]
- Module: ttl_74x262
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S262N
- RTL: rtl/chips/ttl_74x262/ttl_74x262.sv
- Testbench: tb/chips/ttl_74x262/tb_ttl_74x262.sv
- README: rtl/chips/ttl_74x262/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x264 - look ahead carry generator
- Status: [x]
- Module: ttl_74x264
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74AS264
- RTL: rtl/chips/ttl_74x264/ttl_74x264.sv
- Testbench: tb/chips/ttl_74x264/tb_ttl_74x264.sv
- README: rtl/chips/ttl_74x264/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x265 - quad complementary output elements
- Status: [x]
- Module: ttl_74x265
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74265
- RTL: rtl/chips/ttl_74x265/ttl_74x265.sv
- Testbench: tb/chips/ttl_74x265/tb_ttl_74x265.sv
- README: rtl/chips/ttl_74x265/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x266 - quad 2-input XNOR gate
- Status: [x]
- Module: ttl_74x266
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74LS266
- RTL: rtl/chips/ttl_74x266/ttl_74x266.sv
- Testbench: tb/chips/ttl_74x266/tb_ttl_74x266.sv
- README: rtl/chips/ttl_74x266/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x268 - hex D-type latches, shared enable and output control
- Status: [x]
- Module: ttl_74x268
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S268
- RTL: rtl/chips/ttl_74x268/ttl_74x268.sv
- Testbench: tb/chips/ttl_74x268/tb_ttl_74x268.sv
- README: rtl/chips/ttl_74x268/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x269 - 8-bit bidirectional binary counter
- Status: [x]
- Module: ttl_74x269
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MC74F269
- RTL: rtl/chips/ttl_74x269/ttl_74x269.sv
- Testbench: tb/chips/ttl_74x269/tb_ttl_74x269.sv
- README: rtl/chips/ttl_74x269/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x270 - 2048-bit ROM (512x4)
- Status: [x]
- Module: ttl_74x270
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S270
- RTL: rtl/chips/ttl_74x270/ttl_74x270.sv
- Testbench: tb/chips/ttl_74x270/tb_ttl_74x270.sv
- README: rtl/chips/ttl_74x270/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x271 - 2048-bit ROM (256x8)
- Status: [x]
- Module: ttl_74x271
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74S271
- RTL: rtl/chips/ttl_74x271/ttl_74x271.sv
- Testbench: tb/chips/ttl_74x271/tb_ttl_74x271.sv
- README: rtl/chips/ttl_74x271/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x273 - 8-bit register, asynchronous clear
- Status: [x]
- Module: ttl_74x273
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS273
- RTL: rtl/chips/ttl_74x273/ttl_74x273.sv
- Testbench: tb/chips/ttl_74x273/tb_ttl_74x273.sv
- README: rtl/chips/ttl_74x273/README.md
- Notes:
  - 8 D flip-flops, common posedge clock, common async clear. No output enable.

### 74x274 - 4-bit by 4-bit binary multiplier
- Status: [x]
- Module: ttl_74x274
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S274
- RTL: rtl/chips/ttl_74x274/ttl_74x274.sv
- Testbench: tb/chips/ttl_74x274/tb_ttl_74x274.sv
- README: rtl/chips/ttl_74x274/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x275 - 7-bit slice Wallace tree
- Status: [x]
- Module: ttl_74x275
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S275
- RTL: rtl/chips/ttl_74x275/ttl_74x275.sv
- Testbench: tb/chips/ttl_74x275/tb_ttl_74x275.sv
- README: rtl/chips/ttl_74x275/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x276 - quad J-NotK edge-triggered flip-flops, separate clocks, shared preset and clear
- Status: [x]
- Module: ttl_74x276
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74276
- RTL: rtl/chips/ttl_74x276/ttl_74x276.sv
- Testbench: tb/chips/ttl_74x276/tb_ttl_74x276.sv
- README: rtl/chips/ttl_74x276/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x278 - 4-bit cascadeable priority registers, latched data inputs
- Status: [x]
- Module: ttl_74x278
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74278
- RTL: rtl/chips/ttl_74x278/ttl_74x278.sv
- Testbench: tb/chips/ttl_74x278/tb_ttl_74x278.sv
- README: rtl/chips/ttl_74x278/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x279 - quad set-reset latch
- Status: [x]
- Module: ttl_74x279
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS279A
- RTL: rtl/chips/ttl_74x279/ttl_74x279.sv
- Testbench: tb/chips/ttl_74x279/tb_ttl_74x279.sv
- README: rtl/chips/ttl_74x279/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x280 - 9-bit odd/even parity bit generator/checker
- Status: [x]
- Module: ttl_74x280
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS280
- RTL: rtl/chips/ttl_74x280/ttl_74x280.sv
- Testbench: tb/chips/ttl_74x280/tb_ttl_74x280.sv
- README: rtl/chips/ttl_74x280/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x281 - 4-bit parallel binary accumulator
- Status: [x]
- Module: ttl_74x281
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74S281
- RTL: rtl/chips/ttl_74x281/ttl_74x281.sv
- Testbench: tb/chips/ttl_74x281/tb_ttl_74x281.sv
- README: rtl/chips/ttl_74x281/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x282 - look-ahead carry generator, selectable carry inputs
- Status: [x]
- Module: ttl_74x282
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74AS282
- RTL: rtl/chips/ttl_74x282/ttl_74x282.sv
- Testbench: tb/chips/ttl_74x282/tb_ttl_74x282.sv
- README: rtl/chips/ttl_74x282/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x283 - 4-bit binary full adder (has carry in function)
- Status: [x]
- Module: ttl_74x283
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS283
- RTL: rtl/chips/ttl_74x283/ttl_74x283.sv
- Testbench: tb/chips/ttl_74x283/tb_ttl_74x283.sv
- README: rtl/chips/ttl_74x283/README.md
- Notes:
  - Same adder function as 74x83; differs only in DIP pin assignment.

### 74x284 - 4-bit by 4-bit parallel binary multiplier (high order 4 bits of product)
- Status: [x]
- Module: ttl_74x284
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74284
- RTL: rtl/chips/ttl_74x284/ttl_74x284.sv
- Testbench: tb/chips/ttl_74x284/tb_ttl_74x284.sv
- README: rtl/chips/ttl_74x284/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x285 - 4-bit by 4-bit parallel binary multiplier (low order 4 bits of product)
- Status: [x]
- Module: ttl_74x285
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74285
- RTL: rtl/chips/ttl_74x285/ttl_74x285.sv
- Testbench: tb/chips/ttl_74x285/tb_ttl_74x285.sv
- README: rtl/chips/ttl_74x285/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x286 - 9-bit parity generator/checker, bus driver parity I/O port
- Status: [x]
- Module: ttl_74x286
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74AS286
- RTL: rtl/chips/ttl_74x286/ttl_74x286.sv
- Testbench: tb/chips/ttl_74x286/tb_ttl_74x286.sv
- README: rtl/chips/ttl_74x286/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x287 - 1024-bit PROM (256x4)
- Status: [x]
- Module: ttl_74x287
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S287
- RTL: rtl/chips/ttl_74x287/ttl_74x287.sv
- Testbench: tb/chips/ttl_74x287/tb_ttl_74x287.sv
- README: rtl/chips/ttl_74x287/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x288 - 256-bit PROM (32x8)
- Status: [x]
- Module: ttl_74x288
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S288
- RTL: rtl/chips/ttl_74x288/ttl_74x288.sv
- Testbench: tb/chips/ttl_74x288/tb_ttl_74x288.sv
- README: rtl/chips/ttl_74x288/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x289 - 64-bit RAM (16x4), 4 data inputs, 4 inverted data outputs
- Status: [x]
- Module: ttl_74x289
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S289
- RTL: rtl/chips/ttl_74x289/ttl_74x289.sv
- Testbench: tb/chips/ttl_74x289/tb_ttl_74x289.sv
- README: rtl/chips/ttl_74x289/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x290 - decade counter (separate divide-by-2 and divide-by-5 sections)
- Status: [x]
- Module: ttl_74x290
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS290
- RTL: rtl/chips/ttl_74x290/ttl_74x290.sv
- Testbench: tb/chips/ttl_74x290/tb_ttl_74x290.sv
- README: rtl/chips/ttl_74x290/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x292 - programmable frequency divider/digital timer
- Status: [x]
- Module: ttl_74x292
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS292
- RTL: rtl/chips/ttl_74x292/ttl_74x292.sv
- Testbench: tb/chips/ttl_74x292/tb_ttl_74x292.sv
- README: rtl/chips/ttl_74x292/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x293 - 4-bit binary counter (separate divide-by-2 and divide-by-8 sections)
- Status: [x]
- Module: ttl_74x293
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS293
- RTL: rtl/chips/ttl_74x293/ttl_74x293.sv
- Testbench: tb/chips/ttl_74x293/tb_ttl_74x293.sv
- README: rtl/chips/ttl_74x293/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x294 - programmable frequency divider/digital timer
- Status: [x]
- Module: ttl_74x294
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS294
- RTL: rtl/chips/ttl_74x294/ttl_74x294.sv
- Testbench: tb/chips/ttl_74x294/tb_ttl_74x294.sv
- README: rtl/chips/ttl_74x294/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x295 - 4-bit bidirectional shift register
- Status: [x]
- Module: ttl_74x295
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74LS295B
- RTL: rtl/chips/ttl_74x295/ttl_74x295.sv
- Testbench: tb/chips/ttl_74x295/tb_ttl_74x295.sv
- README: rtl/chips/ttl_74x295/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x297 - digital phase-locked loop filter
- Status: [x]
- Module: ttl_74x297
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS297
- RTL: rtl/chips/ttl_74x297/ttl_74x297.sv
- Testbench: tb/chips/ttl_74x297/tb_ttl_74x297.sv
- README: rtl/chips/ttl_74x297/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x298 - quad 2-input multiplexer, storage
- Status: [x]
- Module: ttl_74x298
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74298
- RTL: rtl/chips/ttl_74x298/ttl_74x298.sv
- Testbench: tb/chips/ttl_74x298/tb_ttl_74x298.sv
- README: rtl/chips/ttl_74x298/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x299 - 8-bit bidirectional universal shift/storage register
- Status: [x]
- Module: ttl_74x299
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS299
- RTL: rtl/chips/ttl_74x299/ttl_74x299.sv
- Testbench: tb/chips/ttl_74x299/tb_ttl_74x299.sv
- README: rtl/chips/ttl_74x299/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x300 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x300
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS300A
- RTL: rtl/chips/ttl_74x300/ttl_74x300.sv
- Testbench: tb/chips/ttl_74x300/tb_ttl_74x300.sv
- README: rtl/chips/ttl_74x300/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x301 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x301
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S301
- RTL: rtl/chips/ttl_74x301/ttl_74x301.sv
- Testbench: tb/chips/ttl_74x301/tb_ttl_74x301.sv
- README: rtl/chips/ttl_74x301/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x302 - 256-bit RAM (256x1)
- Status: [x]
- Module: ttl_74x302
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS302
- RTL: rtl/chips/ttl_74x302/ttl_74x302.sv
- Testbench: tb/chips/ttl_74x302/tb_ttl_74x302.sv
- README: rtl/chips/ttl_74x302/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x303 - octal divide-by-2 clock driver, 2 outputs inverted
- Status: [x]
- Module: ttl_74x303
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74AS303
- RTL: rtl/chips/ttl_74x303/ttl_74x303.sv
- Testbench: tb/chips/ttl_74x303/tb_ttl_74x303.sv
- README: rtl/chips/ttl_74x303/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x304 - octal divide-by-2 clock driver
- Status: [x]
- Module: ttl_74x304
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74AS304
- RTL: rtl/chips/ttl_74x304/ttl_74x304.sv
- Testbench: tb/chips/ttl_74x304/tb_ttl_74x304.sv
- README: rtl/chips/ttl_74x304/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x305 - octal divide-by-2 clock driver, 4 outputs inverted
- Status: [x]
- Module: ttl_74x305
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74AS305
- RTL: rtl/chips/ttl_74x305/ttl_74x305.sv
- Testbench: tb/chips/ttl_74x305/tb_ttl_74x305.sv
- README: rtl/chips/ttl_74x305/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x306 - 8-bit LV-TTL to GTL+ bus transceiver
- Status: [x]
- Module: ttl_74x306
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (24)
- Datasheet/source: SN74GTLPH306
- RTL: rtl/chips/ttl_74x306/ttl_74x306.sv
- Testbench: tb/chips/ttl_74x306/tb_ttl_74x306.sv
- README: rtl/chips/ttl_74x306/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x309 - 1024-bit RAM (1024x1)
- Status: [x]
- Module: ttl_74x309
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S309
- RTL: rtl/chips/ttl_74x309/ttl_74x309.sv
- Testbench: tb/chips/ttl_74x309/tb_ttl_74x309.sv
- README: rtl/chips/ttl_74x309/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x310 - octal buffer, inverting
- Status: [x]
- Module: ttl_74x310
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS310
- RTL: rtl/chips/ttl_74x310/ttl_74x310.sv
- Testbench: tb/chips/ttl_74x310/tb_ttl_74x310.sv
- README: rtl/chips/ttl_74x310/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x311 - 144-bit RAM (16x9) with output latch
- Status: [x]
- Module: ttl_74x311
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74F311
- RTL: rtl/chips/ttl_74x311/ttl_74x311.sv
- Testbench: tb/chips/ttl_74x311/tb_ttl_74x311.sv
- README: rtl/chips/ttl_74x311/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x312 - 144-bit RAM (16x9)
- Status: [x]
- Module: ttl_74x312
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74F312
- RTL: rtl/chips/ttl_74x312/ttl_74x312.sv
- Testbench: tb/chips/ttl_74x312/tb_ttl_74x312.sv
- README: rtl/chips/ttl_74x312/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x313 - 192-bit RAM (16x12)
- Status: [x]
- Module: ttl_74x313
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74F313
- RTL: rtl/chips/ttl_74x313/ttl_74x313.sv
- Testbench: tb/chips/ttl_74x313/tb_ttl_74x313.sv
- README: rtl/chips/ttl_74x313/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x314 - 1024-bit RAM (1024x1)
- Status: [x]
- Module: ttl_74x314
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS314
- RTL: rtl/chips/ttl_74x314/ttl_74x314.sv
- Testbench: tb/chips/ttl_74x314/tb_ttl_74x314.sv
- README: rtl/chips/ttl_74x314/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x315 - 1024-bit RAM (1024x1) with power-down mode
- Status: [x]
- Module: ttl_74x315
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS315
- RTL: rtl/chips/ttl_74x315/ttl_74x315.sv
- Testbench: tb/chips/ttl_74x315/tb_ttl_74x315.sv
- README: rtl/chips/ttl_74x315/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x316 - 256-bit RAM (64x4), common I/O
- Status: [x]
- Module: ttl_74x316
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS316
- RTL: rtl/chips/ttl_74x316/ttl_74x316.sv
- Testbench: tb/chips/ttl_74x316/tb_ttl_74x316.sv
- README: rtl/chips/ttl_74x316/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x317 - 256-bit RAM (64x4)
- Status: [x]
- Module: ttl_74x317
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS317
- RTL: rtl/chips/ttl_74x317/ttl_74x317.sv
- Testbench: tb/chips/ttl_74x317/tb_ttl_74x317.sv
- README: rtl/chips/ttl_74x317/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x318 - 256-bit RAM (32x8)
- Status: [x]
- Module: ttl_74x318
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS318
- RTL: rtl/chips/ttl_74x318/ttl_74x318.sv
- Testbench: tb/chips/ttl_74x318/tb_ttl_74x318.sv
- README: rtl/chips/ttl_74x318/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x319 - 64-bit RAM (16x4)
- Status: [x]
- Module: ttl_74x319
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS319
- RTL: rtl/chips/ttl_74x319/ttl_74x319.sv
- Testbench: tb/chips/ttl_74x319/tb_ttl_74x319.sv
- README: rtl/chips/ttl_74x319/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x320 - crystal-controlled oscillator
- Status: [!]
- Module: ttl_74x320
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS320
- RTL: rtl/chips/ttl_74x320/ttl_74x320.sv
- Testbench: tb/chips/ttl_74x320/tb_ttl_74x320.sv
- README: rtl/chips/ttl_74x320/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x321 - crystal-controlled oscillators, F/2 and F/4 count-down outputs
- Status: [!]
- Module: ttl_74x321
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS320
- RTL: rtl/chips/ttl_74x321/ttl_74x321.sv
- Testbench: tb/chips/ttl_74x321/tb_ttl_74x321.sv
- README: rtl/chips/ttl_74x321/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x322 - 8-bit shift register, sign extend
- Status: [x]
- Module: ttl_74x322
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS322A
- RTL: rtl/chips/ttl_74x322/ttl_74x322.sv
- Testbench: tb/chips/ttl_74x322/tb_ttl_74x322.sv
- README: rtl/chips/ttl_74x322/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x323 - 8-bit bidirectional universal shift/storage register, synchronous clear
- Status: [x]
- Module: ttl_74x323
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS323
- RTL: rtl/chips/ttl_74x323/ttl_74x323.sv
- Testbench: tb/chips/ttl_74x323/tb_ttl_74x323.sv
- README: rtl/chips/ttl_74x323/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x324 - voltage-controlled oscillator (or crystal controlled), enable input, complementary outputs
- Status: [!]
- Module: ttl_74x324
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS324
- RTL: rtl/chips/ttl_74x324/ttl_74x324.sv
- Testbench: tb/chips/ttl_74x324/tb_ttl_74x324.sv
- README: rtl/chips/ttl_74x324/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x325 - dual voltage-controlled oscillator (or crystal controlled), complementary outputs
- Status: [!]
- Module: ttl_74x325
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS325
- RTL: rtl/chips/ttl_74x325/ttl_74x325.sv
- Testbench: tb/chips/ttl_74x325/tb_ttl_74x325.sv
- README: rtl/chips/ttl_74x325/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x326 - dual voltage-controlled oscillator (or crystal controlled), enable input, complementary outputs
- Status: [!]
- Module: ttl_74x326
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS326
- RTL: rtl/chips/ttl_74x326/ttl_74x326.sv
- Testbench: tb/chips/ttl_74x326/tb_ttl_74x326.sv
- README: rtl/chips/ttl_74x326/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x327 - dual voltage-controlled oscillator (or crystal controlled)
- Status: [!]
- Module: ttl_74x327
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS327
- RTL: rtl/chips/ttl_74x327/ttl_74x327.sv
- Testbench: tb/chips/ttl_74x327/tb_ttl_74x327.sv
- README: rtl/chips/ttl_74x327/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x330 - PLA (12 inputs, 50 terms, 6 outputs)
- Status: [x]
- Module: ttl_74x330
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S330
- RTL: rtl/chips/ttl_74x330/ttl_74x330.sv
- Testbench: tb/chips/ttl_74x330/tb_ttl_74x330.sv
- README: rtl/chips/ttl_74x330/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x331 - PLA (12 inputs, 50 terms, 6 outputs)
- Status: [x]
- Module: ttl_74x331
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector, 2.5 kΩ pull-up
- Pins: 20
- Datasheet/source: SN74S331
- RTL: rtl/chips/ttl_74x331/ttl_74x331.sv
- Testbench: tb/chips/ttl_74x331/tb_ttl_74x331.sv
- README: rtl/chips/ttl_74x331/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x333 - PLA (12 inputs, 32 terms, 6 outputs, 4 state registers)
- Status: [x]
- Module: ttl_74x333
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS333
- RTL: rtl/chips/ttl_74x333/ttl_74x333.sv
- Testbench: tb/chips/ttl_74x333/tb_ttl_74x333.sv
- README: rtl/chips/ttl_74x333/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x334 - PLA (12 inputs, 32 terms, 6 outputs)
- Status: [x]
- Module: ttl_74x334
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS334
- RTL: rtl/chips/ttl_74x334/ttl_74x334.sv
- Testbench: tb/chips/ttl_74x334/tb_ttl_74x334.sv
- README: rtl/chips/ttl_74x334/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x335 - PLA (12 inputs, 32 terms, 6 outputs, 4 state registers)
- Status: [x]
- Module: ttl_74x335
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74LS335
- RTL: rtl/chips/ttl_74x335/ttl_74x335.sv
- Testbench: tb/chips/ttl_74x335/tb_ttl_74x335.sv
- README: rtl/chips/ttl_74x335/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x336 - PLA (12 inputs, 32 terms, 6 outputs)
- Status: [x]
- Module: ttl_74x336
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74LS336
- RTL: rtl/chips/ttl_74x336/ttl_74x336.sv
- Testbench: tb/chips/ttl_74x336/tb_ttl_74x336.sv
- README: rtl/chips/ttl_74x336/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x337 - clock driver
- Status: [x]
- Module: ttl_74x337
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ABT337
- RTL: rtl/chips/ttl_74x337/ttl_74x337.sv
- Testbench: tb/chips/ttl_74x337/tb_ttl_74x337.sv
- README: rtl/chips/ttl_74x337/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x340 - octal buffer, inverting outputs
- Status: [x]
- Module: ttl_74x340
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S340
- RTL: rtl/chips/ttl_74x340/ttl_74x340.sv
- Testbench: tb/chips/ttl_74x340/tb_ttl_74x340.sv
- README: rtl/chips/ttl_74x340/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x341 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x341
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S341
- RTL: rtl/chips/ttl_74x341/ttl_74x341.sv
- Testbench: tb/chips/ttl_74x341/tb_ttl_74x341.sv
- README: rtl/chips/ttl_74x341/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x344 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x344
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S344
- RTL: rtl/chips/ttl_74x344/ttl_74x344.sv
- Testbench: tb/chips/ttl_74x344/tb_ttl_74x344.sv
- README: rtl/chips/ttl_74x344/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x347 - BCD to 7-segment decoders/drivers, low voltage version of 7447
- Status: [x]
- Module: ttl_74x347
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS347
- RTL: rtl/chips/ttl_74x347/ttl_74x347.sv
- Testbench: tb/chips/ttl_74x347/tb_ttl_74x347.sv
- README: rtl/chips/ttl_74x347/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x348 - 8 to 3-line priority encoder
- Status: [x]
- Module: ttl_74x348
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS348
- RTL: rtl/chips/ttl_74x348/ttl_74x348.sv
- Testbench: tb/chips/ttl_74x348/tb_ttl_74x348.sv
- README: rtl/chips/ttl_74x348/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x350 - 4-bit shifter
- Status: [x]
- Module: ttl_74x350
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S350
- RTL: rtl/chips/ttl_74x350/ttl_74x350.sv
- Testbench: tb/chips/ttl_74x350/tb_ttl_74x350.sv
- README: rtl/chips/ttl_74x350/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x351 - dual 8-line to 1-line data selectors/multiplexers, 4 common data inputs
- Status: [x]
- Module: ttl_74x351
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74351
- RTL: rtl/chips/ttl_74x351/ttl_74x351.sv
- Testbench: tb/chips/ttl_74x351/tb_ttl_74x351.sv
- README: rtl/chips/ttl_74x351/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x352 - dual 4-line to 1-line data selectors/multiplexers, inverting outputs
- Status: [x]
- Module: ttl_74x352
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS352
- RTL: rtl/chips/ttl_74x352/ttl_74x352.sv
- Testbench: tb/chips/ttl_74x352/tb_ttl_74x352.sv
- README: rtl/chips/ttl_74x352/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x353 - dual 4-line to 1-line data selectors/multiplexers, inverting outputs
- Status: [x]
- Module: ttl_74x353
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS353
- RTL: rtl/chips/ttl_74x353/ttl_74x353.sv
- Testbench: tb/chips/ttl_74x353/tb_ttl_74x353.sv
- README: rtl/chips/ttl_74x353/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x354 - 8-line to 1-line data selector/multiplexer, transparent registers
- Status: [x]
- Module: ttl_74x354
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: CD74HC354
- RTL: rtl/chips/ttl_74x354/ttl_74x354.sv
- Testbench: tb/chips/ttl_74x354/tb_ttl_74x354.sv
- README: rtl/chips/ttl_74x354/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x355 - 8-line to 1-line data selector/multiplexer, transparent registers
- Status: [x]
- Module: ttl_74x355
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS355
- RTL: rtl/chips/ttl_74x355/ttl_74x355.sv
- Testbench: tb/chips/ttl_74x355/tb_ttl_74x355.sv
- README: rtl/chips/ttl_74x355/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x356 - 8-line to 1-line data selector/multiplexer, edge-triggered registers
- Status: [x]
- Module: ttl_74x356
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: CD74HCT356
- RTL: rtl/chips/ttl_74x356/ttl_74x356.sv
- Testbench: tb/chips/ttl_74x356/tb_ttl_74x356.sv
- README: rtl/chips/ttl_74x356/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x357 - 8-line to 1-line data selector/multiplexer, edge-triggered registers
- Status: [x]
- Module: ttl_74x357
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS357
- RTL: rtl/chips/ttl_74x357/ttl_74x357.sv
- Testbench: tb/chips/ttl_74x357/tb_ttl_74x357.sv
- README: rtl/chips/ttl_74x357/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x361 - bubble memory function timing generator
- Status: [!]
- Module: ttl_74x361
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 22
- Datasheet/source: SN74LS361
- RTL: rtl/chips/ttl_74x361/ttl_74x361.sv
- Testbench: tb/chips/ttl_74x361/tb_ttl_74x361.sv
- README: rtl/chips/ttl_74x361/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x362 - four-phase clock generator/driver for Texas Instruments TMS9900
- Status: [x]
- Module: ttl_74x362
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS362
- RTL: rtl/chips/ttl_74x362/ttl_74x362.sv
- Testbench: tb/chips/ttl_74x362/tb_ttl_74x362.sv
- README: rtl/chips/ttl_74x362/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x363 - octal transparent latch
- Status: [x]
- Module: ttl_74x363
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS363
- RTL: rtl/chips/ttl_74x363/ttl_74x363.sv
- Testbench: tb/chips/ttl_74x363/tb_ttl_74x363.sv
- README: rtl/chips/ttl_74x363/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x364 - octal edge-triggered D-type register
- Status: [x]
- Module: ttl_74x364
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS364
- RTL: rtl/chips/ttl_74x364/ttl_74x364.sv
- Testbench: tb/chips/ttl_74x364/tb_ttl_74x364.sv
- README: rtl/chips/ttl_74x364/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x365 - hex buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x365
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS365A
- RTL: rtl/chips/ttl_74x365/ttl_74x365.sv
- Testbench: tb/chips/ttl_74x365/tb_ttl_74x365.sv
- README: rtl/chips/ttl_74x365/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x366 - hex buffer, inverting outputs
- Status: [x]
- Module: ttl_74x366
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS366A
- RTL: rtl/chips/ttl_74x366/ttl_74x366.sv
- Testbench: tb/chips/ttl_74x366/tb_ttl_74x366.sv
- README: rtl/chips/ttl_74x366/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x367 - hex buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x367
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS367A
- RTL: rtl/chips/ttl_74x367/ttl_74x367.sv
- Testbench: tb/chips/ttl_74x367/tb_ttl_74x367.sv
- README: rtl/chips/ttl_74x367/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x368 - hex buffer, inverting outputs
- Status: [x]
- Module: ttl_74x368
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS368A
- RTL: rtl/chips/ttl_74x368/ttl_74x368.sv
- Testbench: tb/chips/ttl_74x368/tb_ttl_74x368.sv
- README: rtl/chips/ttl_74x368/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x370 - 2048-bit ROM (512x4)
- Status: [x]
- Module: ttl_74x370
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74S370
- RTL: rtl/chips/ttl_74x370/ttl_74x370.sv
- Testbench: tb/chips/ttl_74x370/tb_ttl_74x370.sv
- README: rtl/chips/ttl_74x370/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x371 - 2048-bit ROM (256x8)
- Status: [x]
- Module: ttl_74x371
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S371
- RTL: rtl/chips/ttl_74x371/ttl_74x371.sv
- Testbench: tb/chips/ttl_74x371/tb_ttl_74x371.sv
- README: rtl/chips/ttl_74x371/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x373 - octal transparent latch
- Status: [x]
- Module: ttl_74x373
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS373
- RTL: rtl/chips/ttl_74x373/ttl_74x373.sv
- Testbench: tb/chips/ttl_74x373/tb_ttl_74x373.sv
- README: rtl/chips/ttl_74x373/README.md
- Notes:
  - One of the few chips that uses always_latch (transparent latch is the actual function). 3-state output gated by oe_n.

### 74x374 - octal register
- Status: [x]
- Module: ttl_74x374
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS374
- RTL: rtl/chips/ttl_74x374/ttl_74x374.sv
- Testbench: tb/chips/ttl_74x374/tb_ttl_74x374.sv
- README: rtl/chips/ttl_74x374/README.md
- Notes:
  - Common octal D-FF with 3-state outputs; tri-state represented as muxed-zero.

### 74x375 - quad bistable latch
- Status: [x]
- Module: ttl_74x375
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS375
- RTL: rtl/chips/ttl_74x375/ttl_74x375.sv
- Testbench: tb/chips/ttl_74x375/tb_ttl_74x375.sv
- README: rtl/chips/ttl_74x375/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x376 - quad J-NotK flip-flop, shared clock and clear
- Status: [x]
- Module: ttl_74x376
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74376
- RTL: rtl/chips/ttl_74x376/ttl_74x376.sv
- Testbench: tb/chips/ttl_74x376/tb_ttl_74x376.sv
- README: rtl/chips/ttl_74x376/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x377 - 8-bit register, clock enable
- Status: [x]
- Module: ttl_74x377
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS377
- RTL: rtl/chips/ttl_74x377/ttl_74x377.sv
- Testbench: tb/chips/ttl_74x377/tb_ttl_74x377.sv
- README: rtl/chips/ttl_74x377/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x378 - 6-bit register, clock enable
- Status: [x]
- Module: ttl_74x378
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS378
- RTL: rtl/chips/ttl_74x378/ttl_74x378.sv
- Testbench: tb/chips/ttl_74x378/tb_ttl_74x378.sv
- README: rtl/chips/ttl_74x378/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x379 - 4-bit register, clock enable and complementary outputs
- Status: [x]
- Module: ttl_74x379
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS379
- RTL: rtl/chips/ttl_74x379/ttl_74x379.sv
- Testbench: tb/chips/ttl_74x379/tb_ttl_74x379.sv
- README: rtl/chips/ttl_74x379/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x380 - 8-bit multifunction register (combines features of x374, x377, x273, x534 ICs)
- Status: [x]
- Module: ttl_74x380
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS380
- RTL: rtl/chips/ttl_74x380/ttl_74x380.sv
- Testbench: tb/chips/ttl_74x380/tb_ttl_74x380.sv
- README: rtl/chips/ttl_74x380/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x381 - 4-bit arithmetic logic unit/function generator, generate and propagate outputs
- Status: [x]
- Module: ttl_74x381
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS381A
- RTL: rtl/chips/ttl_74x381/ttl_74x381.sv
- Testbench: tb/chips/ttl_74x381/tb_ttl_74x381.sv
- README: rtl/chips/ttl_74x381/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x382 - 4-bit arithmetic logic unit/function generator, ripple carry and overflow outputs
- Status: [x]
- Module: ttl_74x382
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS382
- RTL: rtl/chips/ttl_74x382/ttl_74x382.sv
- Testbench: tb/chips/ttl_74x382/tb_ttl_74x382.sv
- README: rtl/chips/ttl_74x382/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x383 - 8-bit register
- Status: [x]
- Module: ttl_74x383
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74S383
- RTL: rtl/chips/ttl_74x383/ttl_74x383.sv
- Testbench: tb/chips/ttl_74x383/tb_ttl_74x383.sv
- README: rtl/chips/ttl_74x383/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x384 - 8-bit by 1-bit two's complement multipliers
- Status: [x]
- Module: ttl_74x384
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS384
- RTL: rtl/chips/ttl_74x384/ttl_74x384.sv
- Testbench: tb/chips/ttl_74x384/tb_ttl_74x384.sv
- README: rtl/chips/ttl_74x384/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x385 - quad serial adder/subtractor
- Status: [x]
- Module: ttl_74x385
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS385
- RTL: rtl/chips/ttl_74x385/ttl_74x385.sv
- Testbench: tb/chips/ttl_74x385/tb_ttl_74x385.sv
- README: rtl/chips/ttl_74x385/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x386 - quad 2-input XOR gate
- Status: [x]
- Module: ttl_74x386
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS386
- RTL: rtl/chips/ttl_74x386/ttl_74x386.sv
- Testbench: tb/chips/ttl_74x386/tb_ttl_74x386.sv
- README: rtl/chips/ttl_74x386/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x387 - 1024-bit PROM (256x4)
- Status: [x]
- Module: ttl_74x387
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74S387
- RTL: rtl/chips/ttl_74x387/ttl_74x387.sv
- Testbench: tb/chips/ttl_74x387/tb_ttl_74x387.sv
- README: rtl/chips/ttl_74x387/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x388 - 4-bit D-type register
- Status: [x]
- Module: ttl_74x388
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and standard
- Pins: 16
- Datasheet/source: Am74S388
- RTL: rtl/chips/ttl_74x388/ttl_74x388.sv
- Testbench: tb/chips/ttl_74x388/tb_ttl_74x388.sv
- README: rtl/chips/ttl_74x388/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x390 - dual 4-bit decade counter, asynchronous clear
- Status: [x]
- Module: ttl_74x390
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS390
- RTL: rtl/chips/ttl_74x390/ttl_74x390.sv
- Testbench: tb/chips/ttl_74x390/tb_ttl_74x390.sv
- README: rtl/chips/ttl_74x390/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x393 - dual 4-bit binary counter, asynchronous clear
- Status: [x]
- Module: ttl_74x393
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS393
- RTL: rtl/chips/ttl_74x393/ttl_74x393.sv
- Testbench: tb/chips/ttl_74x393/tb_ttl_74x393.sv
- README: rtl/chips/ttl_74x393/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x395 - 4-bit cascadable shift register
- Status: [x]
- Module: ttl_74x395
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS395A
- RTL: rtl/chips/ttl_74x395/ttl_74x395.sv
- Testbench: tb/chips/ttl_74x395/tb_ttl_74x395.sv
- README: rtl/chips/ttl_74x395/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x396 - octal storage registers, parallel access
- Status: [x]
- Module: ttl_74x396
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS396
- RTL: rtl/chips/ttl_74x396/ttl_74x396.sv
- Testbench: tb/chips/ttl_74x396/tb_ttl_74x396.sv
- README: rtl/chips/ttl_74x396/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x398 - quad 2-input multiplexers, storage and complementary outputs
- Status: [x]
- Module: ttl_74x398
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS398
- RTL: rtl/chips/ttl_74x398/ttl_74x398.sv
- Testbench: tb/chips/ttl_74x398/tb_ttl_74x398.sv
- README: rtl/chips/ttl_74x398/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x399 - quad 2-input multiplexer, storage
- Status: [x]
- Module: ttl_74x399
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS399
- RTL: rtl/chips/ttl_74x399/ttl_74x399.sv
- Testbench: tb/chips/ttl_74x399/tb_ttl_74x399.sv
- README: rtl/chips/ttl_74x399/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x401 - CRC generator/checker
- Status: [x]
- Module: ttl_74x401
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 74F401
- RTL: rtl/chips/ttl_74x401/ttl_74x401.sv
- Testbench: tb/chips/ttl_74x401/tb_ttl_74x401.sv
- README: rtl/chips/ttl_74x401/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x402 - serial data polynomial generator/checker
- Status: [x]
- Module: ttl_74x402
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74F402
- RTL: rtl/chips/ttl_74x402/ttl_74x402.sv
- Testbench: tb/chips/ttl_74x402/tb_ttl_74x402.sv
- README: rtl/chips/ttl_74x402/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x403 - 64-bit FIFO memory (16x4)
- Status: [x]
- Module: ttl_74x403
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F403
- RTL: rtl/chips/ttl_74x403/ttl_74x403.sv
- Testbench: tb/chips/ttl_74x403/tb_ttl_74x403.sv
- README: rtl/chips/ttl_74x403/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x405 - 3-to-8 line decoder (equivalent to Intel 8205)
- Status: [x]
- Module: ttl_74x405
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: UCY74S405
- RTL: rtl/chips/ttl_74x405/ttl_74x405.sv
- Testbench: tb/chips/ttl_74x405/tb_ttl_74x405.sv
- README: rtl/chips/ttl_74x405/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74406 - 3-to-8 line decoder
- Status: [x]
- Module: ttl_74406
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74406P
- RTL: rtl/chips/ttl_74406/ttl_74406.sv
- Testbench: tb/chips/ttl_74406/tb_ttl_74406.sv
- README: rtl/chips/ttl_74406/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74AVCA406 - ESD-protected voltage-translation transceiver
- Status: [x]
- Module: ttl_74avca406
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (48)
- Datasheet/source: SN74AVCA406
- RTL: rtl/chips/ttl_74avca406/ttl_74avca406.sv
- Testbench: tb/chips/ttl_74avca406/tb_ttl_74avca406.sv
- README: rtl/chips/ttl_74avca406/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x407 - data access register
- Status: [x]
- Module: ttl_74x407
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F407
- RTL: rtl/chips/ttl_74x407/ttl_74x407.sv
- Testbench: tb/chips/ttl_74x407/tb_ttl_74x407.sv
- README: rtl/chips/ttl_74x407/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74408 - 8-bit parity tree
- Status: [x]
- Module: ttl_74408
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74408
- RTL: rtl/chips/ttl_74408/ttl_74408.sv
- Testbench: tb/chips/ttl_74408/tb_ttl_74408.sv
- README: rtl/chips/ttl_74408/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74S408 - controller/driver for 16k/64k/256k dRAM
- Status: [x]
- Module: ttl_74s408
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: SN74S408
- RTL: rtl/chips/ttl_74s408/ttl_74s408.sv
- Testbench: tb/chips/ttl_74s408/tb_ttl_74s408.sv
- README: rtl/chips/ttl_74s408/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x409 - controller/driver for 16k/64k/256k dRAM
- Status: [x]
- Module: ttl_74x409
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: SN74S409
- RTL: rtl/chips/ttl_74x409/ttl_74x409.sv
- Testbench: tb/chips/ttl_74x409/tb_ttl_74x409.sv
- README: rtl/chips/ttl_74x409/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x410 - 64-bit RAM (16x4) with output register
- Status: [x]
- Module: ttl_74x410
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: 74F410
- RTL: rtl/chips/ttl_74x410/ttl_74x410.sv
- Testbench: tb/chips/ttl_74x410/tb_ttl_74x410.sv
- README: rtl/chips/ttl_74x410/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x411 - FIFO RAM controller
- Status: [x]
- Module: ttl_74x411
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: 74F411
- RTL: rtl/chips/ttl_74x411/ttl_74x411.sv
- Testbench: tb/chips/ttl_74x411/tb_ttl_74x411.sv
- README: rtl/chips/ttl_74x411/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x412 - multi-mode buffered 8-bit latches (equivalent to Intel 3212/8212)
- Status: [x]
- Module: ttl_74x412
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74S412
- RTL: rtl/chips/ttl_74x412/ttl_74x412.sv
- Testbench: tb/chips/ttl_74x412/tb_ttl_74x412.sv
- README: rtl/chips/ttl_74x412/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x413 - 256-bit FIFO memory (64x4)
- Status: [x]
- Module: ttl_74x413
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74F413
- RTL: rtl/chips/ttl_74x413/ttl_74x413.sv
- Testbench: tb/chips/ttl_74x413/tb_ttl_74x413.sv
- README: rtl/chips/ttl_74x413/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x414 - interrupt priority controller for Intel 8080 (equivalent to Intel 8214)
- Status: [x]
- Module: ttl_74x414
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: UCY74S414
- RTL: rtl/chips/ttl_74x414/ttl_74x414.sv
- Testbench: tb/chips/ttl_74x414/tb_ttl_74x414.sv
- README: rtl/chips/ttl_74x414/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74416 - modulo 10 counter, preload and clear inputs
- Status: [x]
- Module: ttl_74416
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: author=Don Lancaster |title=TTL Cookbook |publisher=SAMS |date=1974 |isbn=0-672-2 1035-5 |url=https://www.tinaja.com/ebooks/TTLCB1.pdf|archive-url=https://web.archive.org/web/20190407130333/https://www.tinaja.com/ebooks/TTLCB1.pdf |archive-date=7 April 2019 }}</ref>
- RTL: rtl/chips/ttl_74416/ttl_74416.sv
- Testbench: tb/chips/ttl_74416/tb_ttl_74416.sv
- README: rtl/chips/ttl_74416/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74S416 - 4-bit bidirectional bus transceiver, non-inverting (equivalent to Intel 8216)
- Status: [x]
- Module: ttl_74s416
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: UCY74S416
- RTL: rtl/chips/ttl_74s416/ttl_74s416.sv
- Testbench: tb/chips/ttl_74s416/tb_ttl_74s416.sv
- README: rtl/chips/ttl_74s416/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x417 - modulo 2 and modulo 5 counters, shared preload and clear inputs
- Status: [x]
- Module: ttl_74x417
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74417
- RTL: rtl/chips/ttl_74x417/ttl_74x417.sv
- Testbench: tb/chips/ttl_74x417/tb_ttl_74x417.sv
- README: rtl/chips/ttl_74x417/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74418 - modulo 16 counter, preload and clear inputs
- Status: [x]
- Module: ttl_74418
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 51}}
- RTL: rtl/chips/ttl_74418/ttl_74418.sv
- Testbench: tb/chips/ttl_74418/tb_ttl_74418.sv
- README: rtl/chips/ttl_74418/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74F418 - 32-bit error detection and correction circuit
- Status: [x]
- Module: ttl_74f418
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: 74F418
- RTL: rtl/chips/ttl_74f418/ttl_74f418.sv
- Testbench: tb/chips/ttl_74f418/tb_ttl_74f418.sv
- README: rtl/chips/ttl_74f418/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74419 - dual modulo 4 counters, shared preload and clear inputs
- Status: [x]
- Module: ttl_74419
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74419
- RTL: rtl/chips/ttl_74419/ttl_74419.sv
- Testbench: tb/chips/ttl_74419/tb_ttl_74419.sv
- README: rtl/chips/ttl_74419/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74S419 - FIFO RAM controller
- Status: [x]
- Module: ttl_74s419
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: 74S419
- RTL: rtl/chips/ttl_74s419/ttl_74s419.sv
- Testbench: tb/chips/ttl_74s419/tb_ttl_74s419.sv
- README: rtl/chips/ttl_74s419/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x420 - 32-bit check bit / syndrome bit generator
- Status: [x]
- Module: ttl_74x420
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: 74F420
- RTL: rtl/chips/ttl_74x420/ttl_74x420.sv
- Testbench: tb/chips/ttl_74x420/tb_ttl_74x420.sv
- README: rtl/chips/ttl_74x420/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x422 - retriggerable monostable multivibrators, two inputs
- Status: [!]
- Module: ttl_74x422
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS422
- RTL: rtl/chips/ttl_74x422/ttl_74x422.sv
- Testbench: tb/chips/ttl_74x422/tb_ttl_74x422.sv
- README: rtl/chips/ttl_74x422/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x423 - dual retriggerable monostable multivibrator
- Status: [!]
- Module: ttl_74x423
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS423
- RTL: rtl/chips/ttl_74x423/ttl_74x423.sv
- Testbench: tb/chips/ttl_74x423/tb_ttl_74x423.sv
- README: rtl/chips/ttl_74x423/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74424 - dual voltage-controlled oscillator
- Status: [!]
- Module: ttl_74424
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 52}}
- RTL: rtl/chips/ttl_74424/ttl_74424.sv
- Testbench: tb/chips/ttl_74424/tb_ttl_74424.sv
- README: rtl/chips/ttl_74424/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS424 - two-phase clock generator/driver for Intel 8080 (equivalent to Intel 8224)
- Status: [x]
- Module: ttl_74ls424
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS424
- RTL: rtl/chips/ttl_74ls424/ttl_74ls424.sv
- Testbench: tb/chips/ttl_74ls424/tb_ttl_74ls424.sv
- README: rtl/chips/ttl_74ls424/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x425 - quad bus buffers, active low enables
- Status: [x]
- Module: ttl_74x425
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74425
- RTL: rtl/chips/ttl_74x425/ttl_74x425.sv
- Testbench: tb/chips/ttl_74x425/tb_ttl_74x425.sv
- README: rtl/chips/ttl_74x425/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x426 - quad bus buffers, active high enables
- Status: [x]
- Module: ttl_74x426
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74426
- RTL: rtl/chips/ttl_74x426/ttl_74x426.sv
- Testbench: tb/chips/ttl_74x426/tb_ttl_74x426.sv
- README: rtl/chips/ttl_74x426/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x428 - system controller for Intel 8080A (equivalent to Intel 8228)
- Status: [x]
- Module: ttl_74x428
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74S428
- RTL: rtl/chips/ttl_74x428/ttl_74x428.sv
- Testbench: tb/chips/ttl_74x428/tb_ttl_74x428.sv
- README: rtl/chips/ttl_74x428/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x429 - FIFO RAM controller
- Status: [x]
- Module: ttl_74x429
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74LS429
- RTL: rtl/chips/ttl_74x429/ttl_74x429.sv
- Testbench: tb/chips/ttl_74x429/tb_ttl_74x429.sv
- README: rtl/chips/ttl_74x429/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x430 - cyclic redundancy checker/corrector
- Status: [x]
- Module: ttl_74x430
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: 74F430
- RTL: rtl/chips/ttl_74x430/ttl_74x430.sv
- Testbench: tb/chips/ttl_74x430/tb_ttl_74x430.sv
- README: rtl/chips/ttl_74x430/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x432 - 8-bit multi-mode buffered latch
- Status: [x]
- Module: ttl_74x432
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F432
- RTL: rtl/chips/ttl_74x432/ttl_74x432.sv
- Testbench: tb/chips/ttl_74x432/tb_ttl_74x432.sv
- README: rtl/chips/ttl_74x432/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x433 - 256-bit FIFO memory (64x4)
- Status: [x]
- Module: ttl_74x433
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F433
- RTL: rtl/chips/ttl_74x433/ttl_74x433.sv
- Testbench: tb/chips/ttl_74x433/tb_ttl_74x433.sv
- README: rtl/chips/ttl_74x433/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x436 - line driver/memory driver circuits - MOS memory interface, damping output resistor
- Status: [x]
- Module: ttl_74x436
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S436
- RTL: rtl/chips/ttl_74x436/ttl_74x436.sv
- Testbench: tb/chips/ttl_74x436/tb_ttl_74x436.sv
- README: rtl/chips/ttl_74x436/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x437 - line driver/memory driver circuits - MOS memory interface
- Status: [x]
- Module: ttl_74x437
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S437
- RTL: rtl/chips/ttl_74x437/ttl_74x437.sv
- Testbench: tb/chips/ttl_74x437/tb_ttl_74x437.sv
- README: rtl/chips/ttl_74x437/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x438 - system controller for Intel 8080A (equivalent to Intel 8238)
- Status: [x]
- Module: ttl_74x438
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74S438
- RTL: rtl/chips/ttl_74x438/ttl_74x438.sv
- Testbench: tb/chips/ttl_74x438/tb_ttl_74x438.sv
- README: rtl/chips/ttl_74x438/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x440 - quad tridirectional bus transceiver, non-inverting outputs
- Status: [x]
- Module: ttl_74x440
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS440
- RTL: rtl/chips/ttl_74x440/ttl_74x440.sv
- Testbench: tb/chips/ttl_74x440/tb_ttl_74x440.sv
- README: rtl/chips/ttl_74x440/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x441 - quad tridirectional bus transceiver, inverting outputs
- Status: [x]
- Module: ttl_74x441
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS441
- RTL: rtl/chips/ttl_74x441/ttl_74x441.sv
- Testbench: tb/chips/ttl_74x441/tb_ttl_74x441.sv
- README: rtl/chips/ttl_74x441/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x442 - quad tridirectional bus transceiver, non-inverting outputs
- Status: [x]
- Module: ttl_74x442
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS442
- RTL: rtl/chips/ttl_74x442/ttl_74x442.sv
- Testbench: tb/chips/ttl_74x442/tb_ttl_74x442.sv
- README: rtl/chips/ttl_74x442/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x443 - quad tridirectional bus transceiver, inverting outputs
- Status: [x]
- Module: ttl_74x443
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS443
- RTL: rtl/chips/ttl_74x443/ttl_74x443.sv
- Testbench: tb/chips/ttl_74x443/tb_ttl_74x443.sv
- README: rtl/chips/ttl_74x443/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x444 - quad tridirectional bus transceiver, inverting and non-inverting outputs
- Status: [x]
- Module: ttl_74x444
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS444
- RTL: rtl/chips/ttl_74x444/ttl_74x444.sv
- Testbench: tb/chips/ttl_74x444/tb_ttl_74x444.sv
- README: rtl/chips/ttl_74x444/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x445 - BCD to decimal decoders/drivers
- Status: [x]
- Module: ttl_74x445
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: driver 80 mA
- Pins: 16
- Datasheet/source: SN74LS445
- RTL: rtl/chips/ttl_74x445/ttl_74x445.sv
- Testbench: tb/chips/ttl_74x445/tb_ttl_74x445.sv
- README: rtl/chips/ttl_74x445/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x446 - quad bus transceivers, direction controls, inverting outputs
- Status: [x]
- Module: ttl_74x446
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS446
- RTL: rtl/chips/ttl_74x446/ttl_74x446.sv
- Testbench: tb/chips/ttl_74x446/tb_ttl_74x446.sv
- README: rtl/chips/ttl_74x446/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x447 - BCD to 7-segment decoders/drivers, low voltage version of 74247
- Status: [x]
- Module: ttl_74x447
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS447
- RTL: rtl/chips/ttl_74x447/ttl_74x447.sv
- Testbench: tb/chips/ttl_74x447/tb_ttl_74x447.sv
- README: rtl/chips/ttl_74x447/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x448 - quad tridirectional bus transceiver, inverting and non-inverting outputs
- Status: [x]
- Module: ttl_74x448
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS448
- RTL: rtl/chips/ttl_74x448/ttl_74x448.sv
- Testbench: tb/chips/ttl_74x448/tb_ttl_74x448.sv
- README: rtl/chips/ttl_74x448/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x449 - quad bus transceivers, direction controls, non-inverting outputs
- Status: [x]
- Module: ttl_74x449
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS449
- RTL: rtl/chips/ttl_74x449/ttl_74x449.sv
- Testbench: tb/chips/ttl_74x449/tb_ttl_74x449.sv
- README: rtl/chips/ttl_74x449/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74450 - counter, latch, 7-segment decoder
- Status: [x]
- Module: ttl_74450
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: MC74450
- RTL: rtl/chips/ttl_74450/ttl_74450.sv
- Testbench: tb/chips/ttl_74450/tb_ttl_74450.sv
- README: rtl/chips/ttl_74450/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74S450 - 8192-bit PROM (1024x8) with power-down
- Status: [x]
- Module: ttl_74s450
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74S450
- RTL: rtl/chips/ttl_74s450/ttl_74s450.sv
- Testbench: tb/chips/ttl_74s450/tb_ttl_74s450.sv
- README: rtl/chips/ttl_74s450/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS450 - 16-to-1 multiplexer, complementary outputs
- Status: [x]
- Module: ttl_74ls450
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS450
- RTL: rtl/chips/ttl_74ls450/ttl_74ls450.sv
- Testbench: tb/chips/ttl_74ls450/tb_ttl_74ls450.sv
- README: rtl/chips/ttl_74ls450/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74S451 - 8192-bit PROM (1024x8) with power-down
- Status: [x]
- Module: ttl_74s451
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74S451
- RTL: rtl/chips/ttl_74s451/ttl_74s451.sv
- Testbench: tb/chips/ttl_74s451/tb_ttl_74s451.sv
- README: rtl/chips/ttl_74s451/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS451 - dual 8-to-1 multiplexer
- Status: [x]
- Module: ttl_74ls451
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS451
- RTL: rtl/chips/ttl_74ls451/ttl_74ls451.sv
- Testbench: tb/chips/ttl_74ls451/tb_ttl_74ls451.sv
- README: rtl/chips/ttl_74ls451/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x452 - dual decade counter, synchronous
- Status: [x]
- Module: ttl_74x452
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74452
- RTL: rtl/chips/ttl_74x452/ttl_74x452.sv
- Testbench: tb/chips/ttl_74x452/tb_ttl_74x452.sv
- README: rtl/chips/ttl_74x452/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74453 - dual binary counter, synchronous
- Status: [x]
- Module: ttl_74453
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74453
- RTL: rtl/chips/ttl_74453/ttl_74453.sv
- Testbench: tb/chips/ttl_74453/tb_ttl_74453.sv
- README: rtl/chips/ttl_74453/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS453 - quad 4-to-1 multiplexer
- Status: [x]
- Module: ttl_74ls453
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS453
- RTL: rtl/chips/ttl_74ls453/ttl_74ls453.sv
- Testbench: tb/chips/ttl_74ls453/tb_ttl_74ls453.sv
- README: rtl/chips/ttl_74ls453/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x454 - dual decade up/down counter, synchronous, preset input
- Status: [x]
- Module: ttl_74x454
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MC74454
- RTL: rtl/chips/ttl_74x454/ttl_74x454.sv
- Testbench: tb/chips/ttl_74x454/tb_ttl_74x454.sv
- README: rtl/chips/ttl_74x454/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74455 - dual binary up/down counter, synchronous, preset input
- Status: [x]
- Module: ttl_74455
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MC74455
- RTL: rtl/chips/ttl_74455/ttl_74455.sv
- Testbench: tb/chips/ttl_74455/tb_ttl_74455.sv
- README: rtl/chips/ttl_74455/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74F455 - octal buffer / line driver with parity, inverting
- Status: [x]
- Module: ttl_74f455
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F455
- RTL: rtl/chips/ttl_74f455/ttl_74f455.sv
- Testbench: tb/chips/ttl_74f455/tb_ttl_74f455.sv
- README: rtl/chips/ttl_74f455/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74456 - 4-bit NBCD full adder
- Status: [x]
- Module: ttl_74456
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MC74456
- RTL: rtl/chips/ttl_74456/ttl_74456.sv
- Testbench: tb/chips/ttl_74456/tb_ttl_74456.sv
- README: rtl/chips/ttl_74456/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74F456 - octal buffer / line driver with parity, non-inverting
- Status: [x]
- Module: ttl_74f456
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F456
- RTL: rtl/chips/ttl_74f456/ttl_74f456.sv
- Testbench: tb/chips/ttl_74f456/tb_ttl_74f456.sv
- README: rtl/chips/ttl_74f456/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x458 - nines complement / zero element
- Status: [x]
- Module: ttl_74x458
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74458
- RTL: rtl/chips/ttl_74x458/ttl_74x458.sv
- Testbench: tb/chips/ttl_74x458/tb_ttl_74x458.sv
- README: rtl/chips/ttl_74x458/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74460 - 4-bit bus transfer switch
- Status: [x]
- Module: ttl_74460
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: MC74460
- RTL: rtl/chips/ttl_74460/ttl_74460.sv
- Testbench: tb/chips/ttl_74460/tb_ttl_74460.sv
- README: rtl/chips/ttl_74460/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS460 - 10-bit comparator
- Status: [x]
- Module: ttl_74ls460
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS460
- RTL: rtl/chips/ttl_74ls460/ttl_74ls460.sv
- Testbench: tb/chips/ttl_74ls460/tb_ttl_74ls460.sv
- README: rtl/chips/ttl_74ls460/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x461 - 8-bit presettable binary counter
- Status: [x]
- Module: ttl_74x461
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS461
- RTL: rtl/chips/ttl_74x461/ttl_74x461.sv
- Testbench: tb/chips/ttl_74x461/tb_ttl_74x461.sv
- README: rtl/chips/ttl_74x461/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x462 - fiber-optic data-link transmitter
- Status: [!]
- Module: ttl_74x462
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 100 mA and standard
- Pins: 20
- Datasheet/source: SN74LS462
- RTL: rtl/chips/ttl_74x462/ttl_74x462.sv
- Testbench: tb/chips/ttl_74x462/tb_ttl_74x462.sv
- README: rtl/chips/ttl_74x462/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x463 - fiber-optic data-link receiver
- Status: [!]
- Module: ttl_74x463
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS463
- RTL: rtl/chips/ttl_74x463/ttl_74x463.sv
- Testbench: tb/chips/ttl_74x463/tb_ttl_74x463.sv
- README: rtl/chips/ttl_74x463/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x465 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x465
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS465
- RTL: rtl/chips/ttl_74x465/ttl_74x465.sv
- Testbench: tb/chips/ttl_74x465/tb_ttl_74x465.sv
- README: rtl/chips/ttl_74x465/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x466 - octal buffers, inverting outputs
- Status: [x]
- Module: ttl_74x466
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS466
- RTL: rtl/chips/ttl_74x466/ttl_74x466.sv
- Testbench: tb/chips/ttl_74x466/tb_ttl_74x466.sv
- README: rtl/chips/ttl_74x466/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x467 - octal buffers, non-inverting outputs
- Status: [x]
- Module: ttl_74x467
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS467
- RTL: rtl/chips/ttl_74x467/ttl_74x467.sv
- Testbench: tb/chips/ttl_74x467/tb_ttl_74x467.sv
- README: rtl/chips/ttl_74x467/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x468 - octal buffers, inverting outputs
- Status: [x]
- Module: ttl_74x468
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS468
- RTL: rtl/chips/ttl_74x468/ttl_74x468.sv
- Testbench: tb/chips/ttl_74x468/tb_ttl_74x468.sv
- README: rtl/chips/ttl_74x468/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x469 - 8-bit synchronous up/down counter, parallel load and hold capability
- Status: [x]
- Module: ttl_74x469
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS469
- RTL: rtl/chips/ttl_74x469/ttl_74x469.sv
- Testbench: tb/chips/ttl_74x469/tb_ttl_74x469.sv
- README: rtl/chips/ttl_74x469/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x470 - 2048-bit PROM (256x8)
- Status: [x]
- Module: ttl_74x470
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74S470
- RTL: rtl/chips/ttl_74x470/ttl_74x470.sv
- Testbench: tb/chips/ttl_74x470/tb_ttl_74x470.sv
- README: rtl/chips/ttl_74x470/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x471 - 2048-bit PROM (256x8)
- Status: [x]
- Module: ttl_74x471
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S471
- RTL: rtl/chips/ttl_74x471/ttl_74x471.sv
- Testbench: tb/chips/ttl_74x471/tb_ttl_74x471.sv
- README: rtl/chips/ttl_74x471/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x472 - 4096-bit PROM (512x8)
- Status: [x]
- Module: ttl_74x472
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S472
- RTL: rtl/chips/ttl_74x472/ttl_74x472.sv
- Testbench: tb/chips/ttl_74x472/tb_ttl_74x472.sv
- README: rtl/chips/ttl_74x472/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x473 - 4096-bit PROM (512x8)
- Status: [x]
- Module: ttl_74x473
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74S473
- RTL: rtl/chips/ttl_74x473/ttl_74x473.sv
- Testbench: tb/chips/ttl_74x473/tb_ttl_74x473.sv
- README: rtl/chips/ttl_74x473/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x474 - 4096-bit PROM (512x8)
- Status: [x]
- Module: ttl_74x474
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74S474
- RTL: rtl/chips/ttl_74x474/ttl_74x474.sv
- Testbench: tb/chips/ttl_74x474/tb_ttl_74x474.sv
- README: rtl/chips/ttl_74x474/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x475 - 4096-bit PROM (512x8)
- Status: [x]
- Module: ttl_74x475
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74S475
- RTL: rtl/chips/ttl_74x475/ttl_74x475.sv
- Testbench: tb/chips/ttl_74x475/tb_ttl_74x475.sv
- README: rtl/chips/ttl_74x475/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x476 - 4096-bit PROM (1024x4)
- Status: [x]
- Module: ttl_74x476
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: SN74S476
- RTL: rtl/chips/ttl_74x476/ttl_74x476.sv
- Testbench: tb/chips/ttl_74x476/tb_ttl_74x476.sv
- README: rtl/chips/ttl_74x476/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x477 - 4096-bit PROM (1024x4)
- Status: [x]
- Module: ttl_74x477
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 18
- Datasheet/source: SN74S477
- RTL: rtl/chips/ttl_74x477/ttl_74x477.sv
- Testbench: tb/chips/ttl_74x477/tb_ttl_74x477.sv
- README: rtl/chips/ttl_74x477/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x478 - 8192-bit PROM (1024x8)
- Status: [x]
- Module: ttl_74x478
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74S478
- RTL: rtl/chips/ttl_74x478/ttl_74x478.sv
- Testbench: tb/chips/ttl_74x478/tb_ttl_74x478.sv
- README: rtl/chips/ttl_74x478/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x479 - 8192-bit PROM (1024x8)
- Status: [x]
- Module: ttl_74x479
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74S479
- RTL: rtl/chips/ttl_74x479/ttl_74x479.sv
- Testbench: tb/chips/ttl_74x479/tb_ttl_74x479.sv
- README: rtl/chips/ttl_74x479/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x480 - single burst error recovery circuit
- Status: [x]
- Module: ttl_74x480
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74S480
- RTL: rtl/chips/ttl_74x480/ttl_74x480.sv
- Testbench: tb/chips/ttl_74x480/tb_ttl_74x480.sv
- README: rtl/chips/ttl_74x480/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x481 - 4-bit slice cascadable processor elements
- Status: [x]
- Module: ttl_74x481
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (48)
- Datasheet/source: SN74S481
- RTL: rtl/chips/ttl_74x481/ttl_74x481.sv
- Testbench: tb/chips/ttl_74x481/tb_ttl_74x481.sv
- README: rtl/chips/ttl_74x481/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x482 - 4-bit slice expandable control elements
- Status: [x]
- Module: ttl_74x482
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74S482
- RTL: rtl/chips/ttl_74x482/ttl_74x482.sv
- Testbench: tb/chips/ttl_74x482/tb_ttl_74x482.sv
- README: rtl/chips/ttl_74x482/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x484 - BCD-to-binary converter
- Status: [x]
- Module: ttl_74x484
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S484A
- RTL: rtl/chips/ttl_74x484/ttl_74x484.sv
- Testbench: tb/chips/ttl_74x484/tb_ttl_74x484.sv
- README: rtl/chips/ttl_74x484/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x485 - binary-to-BCD converter
- Status: [x]
- Module: ttl_74x485
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S485A
- RTL: rtl/chips/ttl_74x485/ttl_74x485.sv
- Testbench: tb/chips/ttl_74x485/tb_ttl_74x485.sv
- README: rtl/chips/ttl_74x485/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x488 - IEEE-488 bus interface
- Status: [x]
- Module: ttl_74x488
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74ACT488
- RTL: rtl/chips/ttl_74x488/ttl_74x488.sv
- Testbench: tb/chips/ttl_74x488/tb_ttl_74x488.sv
- README: rtl/chips/ttl_74x488/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x490 - dual decade counter
- Status: [x]
- Module: ttl_74x490
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74490
- RTL: rtl/chips/ttl_74x490/ttl_74x490.sv
- Testbench: tb/chips/ttl_74x490/tb_ttl_74x490.sv
- README: rtl/chips/ttl_74x490/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x491 - 10-bit binary up/down counter, limited preset
- Status: [x]
- Module: ttl_74x491
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS491
- RTL: rtl/chips/ttl_74x491/ttl_74x491.sv
- Testbench: tb/chips/ttl_74x491/tb_ttl_74x491.sv
- README: rtl/chips/ttl_74x491/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x498 - 8-bit bidirectional shift register, parallel inputs
- Status: [x]
- Module: ttl_74x498
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS498
- RTL: rtl/chips/ttl_74x498/ttl_74x498.sv
- Testbench: tb/chips/ttl_74x498/tb_ttl_74x498.sv
- README: rtl/chips/ttl_74x498/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x500 - 6-bit flash analog-to-digital converter (ADC)
- Status: [!]
- Module: ttl_74x500
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 24
- Datasheet/source: 74F500
- RTL: rtl/chips/ttl_74x500/ttl_74x500.sv
- Testbench: tb/chips/ttl_74x500/tb_ttl_74x500.sv
- README: rtl/chips/ttl_74x500/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x502 - 8-bit successive approximation register
- Status: [x]
- Module: ttl_74x502
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74LS502
- RTL: rtl/chips/ttl_74x502/ttl_74x502.sv
- Testbench: tb/chips/ttl_74x502/tb_ttl_74x502.sv
- README: rtl/chips/ttl_74x502/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x503 - 8-bit successive approximation register with expansion control
- Status: [x]
- Module: ttl_74x503
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74LS503
- RTL: rtl/chips/ttl_74x503/ttl_74x503.sv
- Testbench: tb/chips/ttl_74x503/tb_ttl_74x503.sv
- README: rtl/chips/ttl_74x503/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x504 - 12-bit successive approximation register with expansion control
- Status: [x]
- Module: ttl_74x504
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74LS504
- RTL: rtl/chips/ttl_74x504/ttl_74x504.sv
- Testbench: tb/chips/ttl_74x504/tb_ttl_74x504.sv
- README: rtl/chips/ttl_74x504/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x505 - 8-bit successive approximation ADC
- Status: [!]
- Module: ttl_74x505
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F505
- RTL: rtl/chips/ttl_74x505/ttl_74x505.sv
- Testbench: tb/chips/ttl_74x505/tb_ttl_74x505.sv
- README: rtl/chips/ttl_74x505/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x508 - 8-bit multiplier/divider
- Status: [x]
- Module: ttl_74x508
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74S508
- RTL: rtl/chips/ttl_74x508/ttl_74x508.sv
- Testbench: tb/chips/ttl_74x508/tb_ttl_74x508.sv
- README: rtl/chips/ttl_74x508/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x515 - programmable mapping decoder (2-to-4 line decoder with 9 programmable enable inputs)
- Status: [x]
- Module: ttl_74x515
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: title=HCMOS-Taschenbuch |trans-title=HCMOS Pocket Reference|language=de |publisher=mitp-Verlag |place=Bonn |date=2003 |isbn=3-8266-1314-7}}</ref>
- RTL: rtl/chips/ttl_74x515/ttl_74x515.sv
- Testbench: tb/chips/ttl_74x515/tb_ttl_74x515.sv
- README: rtl/chips/ttl_74x515/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x516 - 16-bit multiplier/divider
- Status: [x]
- Module: ttl_74x516
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74S516
- RTL: rtl/chips/ttl_74x516/ttl_74x516.sv
- Testbench: tb/chips/ttl_74x516/tb_ttl_74x516.sv
- README: rtl/chips/ttl_74x516/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x518 - 8-bit comparator
- Status: [x]
- Module: ttl_74x518
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS518
- RTL: rtl/chips/ttl_74x518/ttl_74x518.sv
- Testbench: tb/chips/ttl_74x518/tb_ttl_74x518.sv
- README: rtl/chips/ttl_74x518/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x519 - 8-bit comparator
- Status: [x]
- Module: ttl_74x519
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS519
- RTL: rtl/chips/ttl_74x519/ttl_74x519.sv
- Testbench: tb/chips/ttl_74x519/tb_ttl_74x519.sv
- README: rtl/chips/ttl_74x519/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x520 - 8-bit comparator, inverting output
- Status: [x]
- Module: ttl_74x520
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS520
- RTL: rtl/chips/ttl_74x520/ttl_74x520.sv
- Testbench: tb/chips/ttl_74x520/tb_ttl_74x520.sv
- README: rtl/chips/ttl_74x520/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x521 - 8-bit comparator, inverting output
- Status: [x]
- Module: ttl_74x521
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS521
- RTL: rtl/chips/ttl_74x521/ttl_74x521.sv
- Testbench: tb/chips/ttl_74x521/tb_ttl_74x521.sv
- README: rtl/chips/ttl_74x521/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x522 - 8-bit comparator, inverting output
- Status: [x]
- Module: ttl_74x522
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS522
- RTL: rtl/chips/ttl_74x522/ttl_74x522.sv
- Testbench: tb/chips/ttl_74x522/tb_ttl_74x522.sv
- README: rtl/chips/ttl_74x522/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x524 - 8-bit registered comparator
- Status: [x]
- Module: ttl_74x524
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74F524
- RTL: rtl/chips/ttl_74x524/ttl_74x524.sv
- Testbench: tb/chips/ttl_74x524/tb_ttl_74x524.sv
- README: rtl/chips/ttl_74x524/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x525 - 16-bit programmable counter
- Status: [x]
- Module: ttl_74x525
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: 74F525
- RTL: rtl/chips/ttl_74x525/ttl_74x525.sv
- Testbench: tb/chips/ttl_74x525/tb_ttl_74x525.sv
- README: rtl/chips/ttl_74x525/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x526 - fuse programmable identity comparator, 16-bit
- Status: [x]
- Module: ttl_74x526
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS526
- RTL: rtl/chips/ttl_74x526/ttl_74x526.sv
- Testbench: tb/chips/ttl_74x526/tb_ttl_74x526.sv
- README: rtl/chips/ttl_74x526/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x527 - fuse programmable identity comparator, 8-bit + 4-bit conventional Identity comparator
- Status: [x]
- Module: ttl_74x527
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS527
- RTL: rtl/chips/ttl_74x527/ttl_74x527.sv
- Testbench: tb/chips/ttl_74x527/tb_ttl_74x527.sv
- README: rtl/chips/ttl_74x527/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x528 - fuse programmable Identity comparator, 12-bit
- Status: [x]
- Module: ttl_74x528
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74ALS528
- RTL: rtl/chips/ttl_74x528/ttl_74x528.sv
- Testbench: tb/chips/ttl_74x528/tb_ttl_74x528.sv
- README: rtl/chips/ttl_74x528/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x531 - octal transparent latch
- Status: [x]
- Module: ttl_74x531
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S531
- RTL: rtl/chips/ttl_74x531/ttl_74x531.sv
- Testbench: tb/chips/ttl_74x531/tb_ttl_74x531.sv
- README: rtl/chips/ttl_74x531/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x532 - octal register
- Status: [x]
- Module: ttl_74x532
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S532
- RTL: rtl/chips/ttl_74x532/ttl_74x532.sv
- Testbench: tb/chips/ttl_74x532/tb_ttl_74x532.sv
- README: rtl/chips/ttl_74x532/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x533 - octal D-type transparent latch, inverting outputs
- Status: [x]
- Module: ttl_74x533
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS533A
- RTL: rtl/chips/ttl_74x533/ttl_74x533.sv
- Testbench: tb/chips/ttl_74x533/tb_ttl_74x533.sv
- README: rtl/chips/ttl_74x533/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x534 - octal D-type edge-triggered flip-flop, inverting outputs, shared clock and output enable
- Status: [x]
- Module: ttl_74x534
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS534A
- RTL: rtl/chips/ttl_74x534/ttl_74x534.sv
- Testbench: tb/chips/ttl_74x534/tb_ttl_74x534.sv
- README: rtl/chips/ttl_74x534/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x535 - octal transparent latch, inverting outputs
- Status: [x]
- Module: ttl_74x535
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S535
- RTL: rtl/chips/ttl_74x535/ttl_74x535.sv
- Testbench: tb/chips/ttl_74x535/tb_ttl_74x535.sv
- README: rtl/chips/ttl_74x535/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x536 - octal register, inverting outputs
- Status: [x]
- Module: ttl_74x536
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S536
- RTL: rtl/chips/ttl_74x536/ttl_74x536.sv
- Testbench: tb/chips/ttl_74x536/tb_ttl_74x536.sv
- README: rtl/chips/ttl_74x536/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x537 - BCD to decimal decoder
- Status: [x]
- Module: ttl_74x537
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MC74F537
- RTL: rtl/chips/ttl_74x537/ttl_74x537.sv
- Testbench: tb/chips/ttl_74x537/tb_ttl_74x537.sv
- README: rtl/chips/ttl_74x537/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x538 - 3-to-8 line decoder/demultiplexer
- Status: [x]
- Module: ttl_74x538
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS538
- RTL: rtl/chips/ttl_74x538/ttl_74x538.sv
- Testbench: tb/chips/ttl_74x538/tb_ttl_74x538.sv
- README: rtl/chips/ttl_74x538/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x539 - dual 2-to-4 line decoder/demultiplexer
- Status: [x]
- Module: ttl_74x539
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS539
- RTL: rtl/chips/ttl_74x539/ttl_74x539.sv
- Testbench: tb/chips/ttl_74x539/tb_ttl_74x539.sv
- README: rtl/chips/ttl_74x539/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x540 - octal buffer, inverting outputs
- Status: [x]
- Module: ttl_74x540
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS540
- RTL: rtl/chips/ttl_74x540/ttl_74x540.sv
- Testbench: tb/chips/ttl_74x540/tb_ttl_74x540.sv
- README: rtl/chips/ttl_74x540/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x541 - octal buffer, non-inverting outputs
- Status: [x]
- Module: ttl_74x541
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS541
- RTL: rtl/chips/ttl_74x541/ttl_74x541.sv
- Testbench: tb/chips/ttl_74x541/tb_ttl_74x541.sv
- README: rtl/chips/ttl_74x541/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x543 - octal registered transceiver, non-inverting
- Status: [x]
- Module: ttl_74x543
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74F543
- RTL: rtl/chips/ttl_74x543/ttl_74x543.sv
- Testbench: tb/chips/ttl_74x543/tb_ttl_74x543.sv
- README: rtl/chips/ttl_74x543/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x544 - octal registered transceiver, inverting
- Status: [x]
- Module: ttl_74x544
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: MC74F544
- RTL: rtl/chips/ttl_74x544/ttl_74x544.sv
- Testbench: tb/chips/ttl_74x544/tb_ttl_74x544.sv
- README: rtl/chips/ttl_74x544/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x545 - octal bidirectional transceiver, non-inverting
- Status: [x]
- Module: ttl_74x545
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F545
- RTL: rtl/chips/ttl_74x545/ttl_74x545.sv
- Testbench: tb/chips/ttl_74x545/tb_ttl_74x545.sv
- README: rtl/chips/ttl_74x545/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x546 - 8-bit bidirectional registered transceiver, non-inverting
- Status: [x]
- Module: ttl_74x546
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS546
- RTL: rtl/chips/ttl_74x546/ttl_74x546.sv
- Testbench: tb/chips/ttl_74x546/tb_ttl_74x546.sv
- README: rtl/chips/ttl_74x546/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS547 - 8-bit bidirectional latched transceiver, non-inverting
- Status: [x]
- Module: ttl_74ls547
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS547
- RTL: rtl/chips/ttl_74ls547/ttl_74ls547.sv
- Testbench: tb/chips/ttl_74ls547/tb_ttl_74ls547.sv
- README: rtl/chips/ttl_74ls547/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74F547 - 3-to-8 line decoder/demultiplexer with address latches and acknowledge output
- Status: [x]
- Module: ttl_74f547
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74F547
- RTL: rtl/chips/ttl_74f547/ttl_74f547.sv
- Testbench: tb/chips/ttl_74f547/tb_ttl_74f547.sv
- README: rtl/chips/ttl_74f547/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74LS548 - 8-bit two-stage pipelined register
- Status: [x]
- Module: ttl_74ls548
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS548
- RTL: rtl/chips/ttl_74ls548/ttl_74ls548.sv
- Testbench: tb/chips/ttl_74ls548/tb_ttl_74ls548.sv
- README: rtl/chips/ttl_74ls548/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74F548 - 3-to-8 line decoder/demultiplexer with acknowledge output
- Status: [x]
- Module: ttl_74f548
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74F548
- RTL: rtl/chips/ttl_74f548/ttl_74f548.sv
- Testbench: tb/chips/ttl_74f548/tb_ttl_74f548.sv
- README: rtl/chips/ttl_74f548/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x549 - 8-bit two-stage pipelined latch
- Status: [x]
- Module: ttl_74x549
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS549
- RTL: rtl/chips/ttl_74x549/ttl_74x549.sv
- Testbench: tb/chips/ttl_74x549/tb_ttl_74x549.sv
- README: rtl/chips/ttl_74x549/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x550 - octal registered transceiver with status flags, non-inverting
- Status: [x]
- Module: ttl_74x550
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74F550
- RTL: rtl/chips/ttl_74x550/ttl_74x550.sv
- Testbench: tb/chips/ttl_74x550/tb_ttl_74x550.sv
- README: rtl/chips/ttl_74x550/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x551 - octal registered transceiver with status flags, inverting
- Status: [x]
- Module: ttl_74x551
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74F551
- RTL: rtl/chips/ttl_74x551/ttl_74x551.sv
- Testbench: tb/chips/ttl_74x551/tb_ttl_74x551.sv
- README: rtl/chips/ttl_74x551/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x552 - octal registered transceiver with parity and flags
- Status: [x]
- Module: ttl_74x552
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74F552
- RTL: rtl/chips/ttl_74x552/ttl_74x552.sv
- Testbench: tb/chips/ttl_74x552/tb_ttl_74x552.sv
- README: rtl/chips/ttl_74x552/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x556 - 16x16-bit multiplier slice
- Status: [x]
- Module: ttl_74x556
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (84)
- Datasheet/source: 74S556
- RTL: rtl/chips/ttl_74x556/ttl_74x556.sv
- Testbench: tb/chips/ttl_74x556/tb_ttl_74x556.sv
- README: rtl/chips/ttl_74x556/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x557 - 8-bit by 8-bit multiplier
- Status: [x]
- Module: ttl_74x557
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74S557
- RTL: rtl/chips/ttl_74x557/ttl_74x557.sv
- Testbench: tb/chips/ttl_74x557/tb_ttl_74x557.sv
- README: rtl/chips/ttl_74x557/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x558 - 8-bit by 8-bit multiplier
- Status: [x]
- Module: ttl_74x558
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74S558
- RTL: rtl/chips/ttl_74x558/ttl_74x558.sv
- Testbench: tb/chips/ttl_74x558/tb_ttl_74x558.sv
- README: rtl/chips/ttl_74x558/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x559 - 8-bit expandable two's complement multiplier/divider
- Status: [x]
- Module: ttl_74x559
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F559
- RTL: rtl/chips/ttl_74x559/ttl_74x559.sv
- Testbench: tb/chips/ttl_74x559/tb_ttl_74x559.sv
- README: rtl/chips/ttl_74x559/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x560 - 4-bit decade counter
- Status: [x]
- Module: ttl_74x560
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS560A
- RTL: rtl/chips/ttl_74x560/ttl_74x560.sv
- Testbench: tb/chips/ttl_74x560/tb_ttl_74x560.sv
- README: rtl/chips/ttl_74x560/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x561 - synchronous 4-bit binary counter
- Status: [x]
- Module: ttl_74x561
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS561A
- RTL: rtl/chips/ttl_74x561/ttl_74x561.sv
- Testbench: tb/chips/ttl_74x561/tb_ttl_74x561.sv
- README: rtl/chips/ttl_74x561/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x563 - octal D-type transparent latch, inverting outputs
- Status: [x]
- Module: ttl_74x563
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS563B
- RTL: rtl/chips/ttl_74x563/ttl_74x563.sv
- Testbench: tb/chips/ttl_74x563/tb_ttl_74x563.sv
- README: rtl/chips/ttl_74x563/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x564 - octal D-type edge-triggered flip-flop, inverting outputs, shared clock and output enable
- Status: [x]
- Module: ttl_74x564
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS564B
- RTL: rtl/chips/ttl_74x564/ttl_74x564.sv
- Testbench: tb/chips/ttl_74x564/tb_ttl_74x564.sv
- README: rtl/chips/ttl_74x564/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x566 - 8-bit bidirectional registered transceiver, inverting
- Status: [x]
- Module: ttl_74x566
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS566
- RTL: rtl/chips/ttl_74x566/ttl_74x566.sv
- Testbench: tb/chips/ttl_74x566/tb_ttl_74x566.sv
- README: rtl/chips/ttl_74x566/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x567 - 8-bit bidirectional latched transceiver, inverting
- Status: [x]
- Module: ttl_74x567
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS567
- RTL: rtl/chips/ttl_74x567/ttl_74x567.sv
- Testbench: tb/chips/ttl_74x567/tb_ttl_74x567.sv
- README: rtl/chips/ttl_74x567/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x568 - decade up/down counter
- Status: [x]
- Module: ttl_74x568
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS568A
- RTL: rtl/chips/ttl_74x568/ttl_74x568.sv
- Testbench: tb/chips/ttl_74x568/tb_ttl_74x568.sv
- README: rtl/chips/ttl_74x568/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x569 - binary up/down counter
- Status: [x]
- Module: ttl_74x569
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS569A
- RTL: rtl/chips/ttl_74x569/ttl_74x569.sv
- Testbench: tb/chips/ttl_74x569/tb_ttl_74x569.sv
- README: rtl/chips/ttl_74x569/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x570 - 2048-bit PROM (512x4)
- Status: [x]
- Module: ttl_74x570
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: DM74S570
- RTL: rtl/chips/ttl_74x570/ttl_74x570.sv
- Testbench: tb/chips/ttl_74x570/tb_ttl_74x570.sv
- README: rtl/chips/ttl_74x570/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x571 - 2048-bit PROM (512x4)
- Status: [x]
- Module: ttl_74x571
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: DM74S571
- RTL: rtl/chips/ttl_74x571/ttl_74x571.sv
- Testbench: tb/chips/ttl_74x571/tb_ttl_74x571.sv
- README: rtl/chips/ttl_74x571/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x572 - 4096-bit PROM (1024x4)
- Status: [x]
- Module: ttl_74x572
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 18
- Datasheet/source: DM74S572
- RTL: rtl/chips/ttl_74x572/ttl_74x572.sv
- Testbench: tb/chips/ttl_74x572/tb_ttl_74x572.sv
- README: rtl/chips/ttl_74x572/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x573 - octal D-type transparent latch
- Status: [x]
- Module: ttl_74x573
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS573C
- RTL: rtl/chips/ttl_74x573/ttl_74x573.sv
- Testbench: tb/chips/ttl_74x573/tb_ttl_74x573.sv
- README: rtl/chips/ttl_74x573/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x574 - octal D-type edge-triggered flip-flop
- Status: [x]
- Module: ttl_74x574
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS574B
- RTL: rtl/chips/ttl_74x574/ttl_74x574.sv
- Testbench: tb/chips/ttl_74x574/tb_ttl_74x574.sv
- README: rtl/chips/ttl_74x574/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x575 - octal D-type edge-triggered flip-flop, synchronous clear
- Status: [x]
- Module: ttl_74x575
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS575A
- RTL: rtl/chips/ttl_74x575/ttl_74x575.sv
- Testbench: tb/chips/ttl_74x575/tb_ttl_74x575.sv
- README: rtl/chips/ttl_74x575/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x576 - octal D-type edge-triggered flip-flop, inverting outputs
- Status: [x]
- Module: ttl_74x576
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS576B
- RTL: rtl/chips/ttl_74x576/ttl_74x576.sv
- Testbench: tb/chips/ttl_74x576/tb_ttl_74x576.sv
- README: rtl/chips/ttl_74x576/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x577 - octal D-type edge-triggered flip-flop, synchronous clear, inverting outputs
- Status: [x]
- Module: ttl_74x577
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS577A
- RTL: rtl/chips/ttl_74x577/ttl_74x577.sv
- Testbench: tb/chips/ttl_74x577/tb_ttl_74x577.sv
- README: rtl/chips/ttl_74x577/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x579 - 8-bit bidirectional binary counter
- Status: [x]
- Module: ttl_74x579
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MC74F579
- RTL: rtl/chips/ttl_74x579/ttl_74x579.sv
- Testbench: tb/chips/ttl_74x579/tb_ttl_74x579.sv
- README: rtl/chips/ttl_74x579/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x580 - octal D-type transparent latch, inverting outputs
- Status: [x]
- Module: ttl_74x580
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS580B
- RTL: rtl/chips/ttl_74x580/ttl_74x580.sv
- Testbench: tb/chips/ttl_74x580/tb_ttl_74x580.sv
- README: rtl/chips/ttl_74x580/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x582 - 4-bit BCD arithmetic logic unit
- Status: [x]
- Module: ttl_74x582
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F582
- RTL: rtl/chips/ttl_74x582/ttl_74x582.sv
- Testbench: tb/chips/ttl_74x582/tb_ttl_74x582.sv
- README: rtl/chips/ttl_74x582/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x583 - 4-bit BCD adder
- Status: [x]
- Module: ttl_74x583
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74F583
- RTL: rtl/chips/ttl_74x583/ttl_74x583.sv
- Testbench: tb/chips/ttl_74x583/tb_ttl_74x583.sv
- README: rtl/chips/ttl_74x583/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x588 - octal bidirectional transceiver with IEEE-488 termination resistors
- Status: [x]
- Module: ttl_74x588
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F588
- RTL: rtl/chips/ttl_74x588/ttl_74x588.sv
- Testbench: tb/chips/ttl_74x588/tb_ttl_74x588.sv
- README: rtl/chips/ttl_74x588/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x589 - 8-bit shift register, input latch
- Status: [x]
- Module: ttl_74x589
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS589
- RTL: rtl/chips/ttl_74x589/ttl_74x589.sv
- Testbench: tb/chips/ttl_74x589/tb_ttl_74x589.sv
- README: rtl/chips/ttl_74x589/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x590 - 8-bit binary counter, output registers
- Status: [x]
- Module: ttl_74x590
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS590
- RTL: rtl/chips/ttl_74x590/ttl_74x590.sv
- Testbench: tb/chips/ttl_74x590/tb_ttl_74x590.sv
- README: rtl/chips/ttl_74x590/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x591 - 8-bit binary counter, output registers
- Status: [x]
- Module: ttl_74x591
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS591
- RTL: rtl/chips/ttl_74x591/ttl_74x591.sv
- Testbench: tb/chips/ttl_74x591/tb_ttl_74x591.sv
- README: rtl/chips/ttl_74x591/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x592 - 8-bit binary counter, input registers
- Status: [x]
- Module: ttl_74x592
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS592
- RTL: rtl/chips/ttl_74x592/ttl_74x592.sv
- Testbench: tb/chips/ttl_74x592/tb_ttl_74x592.sv
- README: rtl/chips/ttl_74x592/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x593 - 8-bit binary counter, input registers
- Status: [x]
- Module: ttl_74x593
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS593
- RTL: rtl/chips/ttl_74x593/ttl_74x593.sv
- Testbench: tb/chips/ttl_74x593/tb_ttl_74x593.sv
- README: rtl/chips/ttl_74x593/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x594 - 8-bit shift registers, serial-in, parallel-out, output latches
- Status: [x]
- Module: ttl_74x594
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: buffered
- Pins: 16
- Datasheet/source: SN74LS594
- RTL: rtl/chips/ttl_74x594/ttl_74x594.sv
- Testbench: tb/chips/ttl_74x594/tb_ttl_74x594.sv
- README: rtl/chips/ttl_74x594/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x595 - 8-bit shift registers, serial-in, parallel-out, output latches, output enable
- Status: [x]
- Module: ttl_74x595
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS595
- RTL: rtl/chips/ttl_74x595/ttl_74x595.sv
- Testbench: tb/chips/ttl_74x595/tb_ttl_74x595.sv
- README: rtl/chips/ttl_74x595/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x596 - 8-bit shift registers, serial-in, parallel-out, output latches, output enable
- Status: [x]
- Module: ttl_74x596
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS596
- RTL: rtl/chips/ttl_74x596/ttl_74x596.sv
- Testbench: tb/chips/ttl_74x596/tb_ttl_74x596.sv
- README: rtl/chips/ttl_74x596/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x597 - 8-bit shift registers, parallel-in, serial-out, input latches
- Status: [x]
- Module: ttl_74x597
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS597
- RTL: rtl/chips/ttl_74x597/ttl_74x597.sv
- Testbench: tb/chips/ttl_74x597/tb_ttl_74x597.sv
- README: rtl/chips/ttl_74x597/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x598 - 8-bit shift register, selectable parallel-in/out input latches
- Status: [x]
- Module: ttl_74x598
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS598
- RTL: rtl/chips/ttl_74x598/ttl_74x598.sv
- Testbench: tb/chips/ttl_74x598/tb_ttl_74x598.sv
- README: rtl/chips/ttl_74x598/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x599 - 8-bit shift registers, serial-in, parallel-out, output latches
- Status: [x]
- Module: ttl_74x599
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 16
- Datasheet/source: SN74LS599
- RTL: rtl/chips/ttl_74x599/ttl_74x599.sv
- Testbench: tb/chips/ttl_74x599/tb_ttl_74x599.sv
- README: rtl/chips/ttl_74x599/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x600 - dynamic memory refresh controller, transparent and burst modes, for 4K or 16K dRAM
- Status: [x]
- Module: ttl_74x600
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS600A
- RTL: rtl/chips/ttl_74x600/ttl_74x600.sv
- Testbench: tb/chips/ttl_74x600/tb_ttl_74x600.sv
- README: rtl/chips/ttl_74x600/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x601 - dynamic memory refresh controller, transparent and burst modes, for 64K dRAM
- Status: [x]
- Module: ttl_74x601
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS601A
- RTL: rtl/chips/ttl_74x601/ttl_74x601.sv
- Testbench: tb/chips/ttl_74x601/tb_ttl_74x601.sv
- README: rtl/chips/ttl_74x601/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x602 - dynamic memory refresh controller, cycle steal and burst modes, for 4K or 16K dRAM
- Status: [x]
- Module: ttl_74x602
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS602A
- RTL: rtl/chips/ttl_74x602/ttl_74x602.sv
- Testbench: tb/chips/ttl_74x602/tb_ttl_74x602.sv
- README: rtl/chips/ttl_74x602/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x603 - dynamic memory refresh controller, cycle steal and burst modes, for 64K dRAM
- Status: [x]
- Module: ttl_74x603
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS603A
- RTL: rtl/chips/ttl_74x603/ttl_74x603.sv
- Testbench: tb/chips/ttl_74x603/tb_ttl_74x603.sv
- README: rtl/chips/ttl_74x603/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x604 - octal 2-input multiplexer, latch, high-speed
- Status: [x]
- Module: ttl_74x604
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74LS604
- RTL: rtl/chips/ttl_74x604/ttl_74x604.sv
- Testbench: tb/chips/ttl_74x604/tb_ttl_74x604.sv
- README: rtl/chips/ttl_74x604/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x605 - octal 2-input multiplexer, latch, high-speed
- Status: [x]
- Module: ttl_74x605
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 28
- Datasheet/source: SN74LS605
- RTL: rtl/chips/ttl_74x605/ttl_74x605.sv
- Testbench: tb/chips/ttl_74x605/tb_ttl_74x605.sv
- README: rtl/chips/ttl_74x605/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x606 - octal 2-input multiplexer, latch, glitch-free
- Status: [x]
- Module: ttl_74x606
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74LS606
- RTL: rtl/chips/ttl_74x606/ttl_74x606.sv
- Testbench: tb/chips/ttl_74x606/tb_ttl_74x606.sv
- README: rtl/chips/ttl_74x606/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x607 - octal 2-input multiplexer, latch, glitch-free
- Status: [x]
- Module: ttl_74x607
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 28
- Datasheet/source: SN74LS607
- RTL: rtl/chips/ttl_74x607/ttl_74x607.sv
- Testbench: tb/chips/ttl_74x607/tb_ttl_74x607.sv
- README: rtl/chips/ttl_74x607/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x608 - memory cycle controller
- Status: [x]
- Module: ttl_74x608
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS608
- RTL: rtl/chips/ttl_74x608/ttl_74x608.sv
- Testbench: tb/chips/ttl_74x608/tb_ttl_74x608.sv
- README: rtl/chips/ttl_74x608/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x610 - memory mapper, latched
- Status: [x]
- Module: ttl_74x610
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74LS610
- RTL: rtl/chips/ttl_74x610/ttl_74x610.sv
- Testbench: tb/chips/ttl_74x610/tb_ttl_74x610.sv
- README: rtl/chips/ttl_74x610/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x611 - memory mapper, latched
- Status: [x]
- Module: ttl_74x611
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 40
- Datasheet/source: SN74LS611
- RTL: rtl/chips/ttl_74x611/ttl_74x611.sv
- Testbench: tb/chips/ttl_74x611/tb_ttl_74x611.sv
- README: rtl/chips/ttl_74x611/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x612 - memory mapper
- Status: [x]
- Module: ttl_74x612
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74LS612
- RTL: rtl/chips/ttl_74x612/ttl_74x612.sv
- Testbench: tb/chips/ttl_74x612/tb_ttl_74x612.sv
- README: rtl/chips/ttl_74x612/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x613 - memory mapper
- Status: [x]
- Module: ttl_74x613
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 40
- Datasheet/source: SN74LS613
- RTL: rtl/chips/ttl_74x613/ttl_74x613.sv
- Testbench: tb/chips/ttl_74x613/tb_ttl_74x613.sv
- README: rtl/chips/ttl_74x613/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x614 - octal bus transceiver and register, inverting
- Status: [x]
- Module: ttl_74x614
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74ALS614
- RTL: rtl/chips/ttl_74x614/ttl_74x614.sv
- Testbench: tb/chips/ttl_74x614/tb_ttl_74x614.sv
- README: rtl/chips/ttl_74x614/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x615 - octal bus transceiver and register, non-inverting
- Status: [x]
- Module: ttl_74x615
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74ALS615
- RTL: rtl/chips/ttl_74x615/ttl_74x615.sv
- Testbench: tb/chips/ttl_74x615/tb_ttl_74x615.sv
- README: rtl/chips/ttl_74x615/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x616 - 16-bit parallel error detection and correction
- Status: [x]
- Module: ttl_74x616
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74ALS616
- RTL: rtl/chips/ttl_74x616/ttl_74x616.sv
- Testbench: tb/chips/ttl_74x616/tb_ttl_74x616.sv
- README: rtl/chips/ttl_74x616/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x617 - 16-bit parallel error detection and correction
- Status: [x]
- Module: ttl_74x617
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 40
- Datasheet/source: SN74ALS617
- RTL: rtl/chips/ttl_74x617/ttl_74x617.sv
- Testbench: tb/chips/ttl_74x617/tb_ttl_74x617.sv
- README: rtl/chips/ttl_74x617/README.md
- Notes:
  - Tests pass; Verilator + Yosys clean.

### 74x620 - octal bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x620
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS620
- RTL: rtl/chips/ttl_74x620/ttl_74x620.sv
- Testbench: tb/chips/ttl_74x620/tb_ttl_74x620.sv
- README: rtl/chips/ttl_74x620/README.md
- Notes:
  - (none)

### 74x621 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x621
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS621
- RTL: rtl/chips/ttl_74x621/ttl_74x621.sv
- Testbench: tb/chips/ttl_74x621/tb_ttl_74x621.sv
- README: rtl/chips/ttl_74x621/README.md
- Notes:
  - (none)

### 74x622 - octal bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x622
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS622
- RTL: rtl/chips/ttl_74x622/ttl_74x622.sv
- Testbench: tb/chips/ttl_74x622/tb_ttl_74x622.sv
- README: rtl/chips/ttl_74x622/README.md
- Notes:
  - (none)

### 74x623 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x623
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS623
- RTL: rtl/chips/ttl_74x623/ttl_74x623.sv
- Testbench: tb/chips/ttl_74x623/tb_ttl_74x623.sv
- README: rtl/chips/ttl_74x623/README.md
- Notes:
  - (none)

### 74x624 - voltage-controlled oscillator, enable control, range control, two-phase outputs
- Status: [ ]
- Module: ttl_74x624
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS624
- RTL: rtl/chips/ttl_74x624/ttl_74x624.sv
- Testbench: tb/chips/ttl_74x624/tb_ttl_74x624.sv
- README: rtl/chips/ttl_74x624/README.md
- Notes:
  - (none)

### 74x625 - dual voltage-controlled oscillator, two-phase outputs
- Status: [ ]
- Module: ttl_74x625
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS625
- RTL: rtl/chips/ttl_74x625/ttl_74x625.sv
- Testbench: tb/chips/ttl_74x625/tb_ttl_74x625.sv
- README: rtl/chips/ttl_74x625/README.md
- Notes:
  - (none)

### 74x626 - dual voltage-controlled oscillator, enable control, two-phase outputs
- Status: [ ]
- Module: ttl_74x626
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS626
- RTL: rtl/chips/ttl_74x626/ttl_74x626.sv
- Testbench: tb/chips/ttl_74x626/tb_ttl_74x626.sv
- README: rtl/chips/ttl_74x626/README.md
- Notes:
  - (none)

### 74x627 - dual voltage-controlled oscillator
- Status: [ ]
- Module: ttl_74x627
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS627
- RTL: rtl/chips/ttl_74x627/ttl_74x627.sv
- Testbench: tb/chips/ttl_74x627/tb_ttl_74x627.sv
- README: rtl/chips/ttl_74x627/README.md
- Notes:
  - (none)

### 74x628 - voltage-controlled oscillator, enable control, range control, external temperature compensation, two-phase outputs
- Status: [ ]
- Module: ttl_74x628
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 14
- Datasheet/source: SN74LS628
- RTL: rtl/chips/ttl_74x628/ttl_74x628.sv
- Testbench: tb/chips/ttl_74x628/tb_ttl_74x628.sv
- README: rtl/chips/ttl_74x628/README.md
- Notes:
  - (none)

### 74x629 - dual voltage-controlled oscillator, enable control, range control
- Status: [ ]
- Module: ttl_74x629
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: analog
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS629
- RTL: rtl/chips/ttl_74x629/ttl_74x629.sv
- Testbench: tb/chips/ttl_74x629/tb_ttl_74x629.sv
- README: rtl/chips/ttl_74x629/README.md
- Notes:
  - (none)

### 74x630 - 16-bit error detection and correction (EDAC)
- Status: [ ]
- Module: ttl_74x630
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74LS630
- RTL: rtl/chips/ttl_74x630/ttl_74x630.sv
- Testbench: tb/chips/ttl_74x630/tb_ttl_74x630.sv
- README: rtl/chips/ttl_74x630/README.md
- Notes:
  - (none)

### 74x631 - 16-bit error detection and correction
- Status: [ ]
- Module: ttl_74x631
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 28
- Datasheet/source: SN74LS631
- RTL: rtl/chips/ttl_74x631/ttl_74x631.sv
- Testbench: tb/chips/ttl_74x631/tb_ttl_74x631.sv
- README: rtl/chips/ttl_74x631/README.md
- Notes:
  - (none)

### 74x632 - 32-bit parallel error detection and correction, byte-write
- Status: [ ]
- Module: ttl_74x632
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 52
- Datasheet/source: SN74ALS632
- RTL: rtl/chips/ttl_74x632/ttl_74x632.sv
- Testbench: tb/chips/ttl_74x632/tb_ttl_74x632.sv
- README: rtl/chips/ttl_74x632/README.md
- Notes:
  - (none)

### 74x633 - 32-bit parallel error detection and correction, byte-write
- Status: [ ]
- Module: ttl_74x633
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 52
- Datasheet/source: SN74ALS633
- RTL: rtl/chips/ttl_74x633/ttl_74x633.sv
- Testbench: tb/chips/ttl_74x633/tb_ttl_74x633.sv
- README: rtl/chips/ttl_74x633/README.md
- Notes:
  - (none)

### 74x634 - 32-bit parallel error detection and correction
- Status: [ ]
- Module: ttl_74x634
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: SN74ALS634
- RTL: rtl/chips/ttl_74x634/ttl_74x634.sv
- Testbench: tb/chips/ttl_74x634/tb_ttl_74x634.sv
- README: rtl/chips/ttl_74x634/README.md
- Notes:
  - (none)

### 74x635 - 32-bit parallel error detection and correction
- Status: [ ]
- Module: ttl_74x635
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 48
- Datasheet/source: SN74ALS635
- RTL: rtl/chips/ttl_74x635/ttl_74x635.sv
- Testbench: tb/chips/ttl_74x635/tb_ttl_74x635.sv
- README: rtl/chips/ttl_74x635/README.md
- Notes:
  - (none)

### 74x636 - 8-bit parallel error detection and correction
- Status: [ ]
- Module: ttl_74x636
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS636
- RTL: rtl/chips/ttl_74x636/ttl_74x636.sv
- Testbench: tb/chips/ttl_74x636/tb_ttl_74x636.sv
- README: rtl/chips/ttl_74x636/README.md
- Notes:
  - (none)

### 74x637 - 8-bit parallel error detection and correction
- Status: [ ]
- Module: ttl_74x637
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS637
- RTL: rtl/chips/ttl_74x637/ttl_74x637.sv
- Testbench: tb/chips/ttl_74x637/tb_ttl_74x637.sv
- README: rtl/chips/ttl_74x637/README.md
- Notes:
  - (none)

### 74x638 - octal bus transceiver, inverting outputs
- Status: [ ]
- Module: ttl_74x638
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 20
- Datasheet/source: SN74LS638
- RTL: rtl/chips/ttl_74x638/ttl_74x638.sv
- Testbench: tb/chips/ttl_74x638/tb_ttl_74x638.sv
- README: rtl/chips/ttl_74x638/README.md
- Notes:
  - (none)

### 74x639 - octal bus transceiver, non-inverting outputs
- Status: [ ]
- Module: ttl_74x639
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 20
- Datasheet/source: SN74LS639
- RTL: rtl/chips/ttl_74x639/ttl_74x639.sv
- Testbench: tb/chips/ttl_74x639/tb_ttl_74x639.sv
- README: rtl/chips/ttl_74x639/README.md
- Notes:
  - (none)

### 74x640 - octal bus transceiver, inverting outputs
- Status: [ ]
- Module: ttl_74x640
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS640
- RTL: rtl/chips/ttl_74x640/ttl_74x640.sv
- Testbench: tb/chips/ttl_74x640/tb_ttl_74x640.sv
- README: rtl/chips/ttl_74x640/README.md
- Notes:
  - (none)

### 74x641 - octal bus transceiver, non-inverting outputs
- Status: [ ]
- Module: ttl_74x641
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS641
- RTL: rtl/chips/ttl_74x641/ttl_74x641.sv
- Testbench: tb/chips/ttl_74x641/tb_ttl_74x641.sv
- README: rtl/chips/ttl_74x641/README.md
- Notes:
  - (none)

### 74x642 - octal bus transceiver, inverting outputs
- Status: [ ]
- Module: ttl_74x642
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS642
- RTL: rtl/chips/ttl_74x642/ttl_74x642.sv
- Testbench: tb/chips/ttl_74x642/tb_ttl_74x642.sv
- README: rtl/chips/ttl_74x642/README.md
- Notes:
  - (none)

### 74x643 - octal bus transceiver, mix of inverting and non-inverting outputs
- Status: [ ]
- Module: ttl_74x643
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS643
- RTL: rtl/chips/ttl_74x643/ttl_74x643.sv
- Testbench: tb/chips/ttl_74x643/tb_ttl_74x643.sv
- README: rtl/chips/ttl_74x643/README.md
- Notes:
  - (none)

### 74x644 - octal bus transceiver, mix of inverting and non-inverting outputs
- Status: [ ]
- Module: ttl_74x644
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS644
- RTL: rtl/chips/ttl_74x644/ttl_74x644.sv
- Testbench: tb/chips/ttl_74x644/tb_ttl_74x644.sv
- README: rtl/chips/ttl_74x644/README.md
- Notes:
  - (none)

### 74x645 - octal bus transceiver, non-inverting outputs
- Status: [ ]
- Module: ttl_74x645
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS645
- RTL: rtl/chips/ttl_74x645/ttl_74x645.sv
- Testbench: tb/chips/ttl_74x645/tb_ttl_74x645.sv
- README: rtl/chips/ttl_74x645/README.md
- Notes:
  - (none)

### 74x646 - octal bus transceiver/latch/multiplexer, non-inverting outputs
- Status: [ ]
- Module: ttl_74x646
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS646A
- RTL: rtl/chips/ttl_74x646/ttl_74x646.sv
- Testbench: tb/chips/ttl_74x646/tb_ttl_74x646.sv
- README: rtl/chips/ttl_74x646/README.md
- Notes:
  - (none)

### 74x647 - octal bus transceiver/latch/multiplexer, non-inverting outputs
- Status: [ ]
- Module: ttl_74x647
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74LS647
- RTL: rtl/chips/ttl_74x647/ttl_74x647.sv
- Testbench: tb/chips/ttl_74x647/tb_ttl_74x647.sv
- README: rtl/chips/ttl_74x647/README.md
- Notes:
  - (none)

### 74x648 - octal bus transceiver/latch/multiplexer, inverting outputs
- Status: [ ]
- Module: ttl_74x648
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS648A
- RTL: rtl/chips/ttl_74x648/ttl_74x648.sv
- Testbench: tb/chips/ttl_74x648/tb_ttl_74x648.sv
- README: rtl/chips/ttl_74x648/README.md
- Notes:
  - (none)

### 74x649 - octal bus transceiver/latch/multiplexer, inverting outputs
- Status: [ ]
- Module: ttl_74x649
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74LS649
- RTL: rtl/chips/ttl_74x649/ttl_74x649.sv
- Testbench: tb/chips/ttl_74x649/tb_ttl_74x649.sv
- README: rtl/chips/ttl_74x649/README.md
- Notes:
  - (none)

### 74x651 - octal bus transceiver/register, inverting outputs
- Status: [ ]
- Module: ttl_74x651
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS651A
- RTL: rtl/chips/ttl_74x651/ttl_74x651.sv
- Testbench: tb/chips/ttl_74x651/tb_ttl_74x651.sv
- README: rtl/chips/ttl_74x651/README.md
- Notes:
  - (none)

### 74x652 - octal bus transceiver/register, non-inverting outputs
- Status: [ ]
- Module: ttl_74x652
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS652A
- RTL: rtl/chips/ttl_74x652/ttl_74x652.sv
- Testbench: tb/chips/ttl_74x652/tb_ttl_74x652.sv
- README: rtl/chips/ttl_74x652/README.md
- Notes:
  - (none)

### 74x653 - octal bus transceiver/register, inverting outputs
- Status: [ ]
- Module: ttl_74x653
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 24
- Datasheet/source: SN74ALS653
- RTL: rtl/chips/ttl_74x653/ttl_74x653.sv
- Testbench: tb/chips/ttl_74x653/tb_ttl_74x653.sv
- README: rtl/chips/ttl_74x653/README.md
- Notes:
  - (none)

### 74x654 - octal bus transceiver/register, non-inverting outputs
- Status: [ ]
- Module: ttl_74x654
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 24
- Datasheet/source: SN74ALS654
- RTL: rtl/chips/ttl_74x654/ttl_74x654.sv
- Testbench: tb/chips/ttl_74x654/tb_ttl_74x654.sv
- README: rtl/chips/ttl_74x654/README.md
- Notes:
  - (none)

### 74x655 - octal buffer / line driver with parity, inverting
- Status: [ ]
- Module: ttl_74x655
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F655
- RTL: rtl/chips/ttl_74x655/ttl_74x655.sv
- Testbench: tb/chips/ttl_74x655/tb_ttl_74x655.sv
- README: rtl/chips/ttl_74x655/README.md
- Notes:
  - (none)

### 74x656 - octal buffer / line driver with parity, non-inverting
- Status: [ ]
- Module: ttl_74x656
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F656
- RTL: rtl/chips/ttl_74x656/ttl_74x656.sv
- Testbench: tb/chips/ttl_74x656/tb_ttl_74x656.sv
- README: rtl/chips/ttl_74x656/README.md
- Notes:
  - (none)

### 74x657 - octal bidirectional transceiver with 8-bit parity generator/checker
- Status: [ ]
- Module: ttl_74x657
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74F657
- RTL: rtl/chips/ttl_74x657/ttl_74x657.sv
- Testbench: tb/chips/ttl_74x657/tb_ttl_74x657.sv
- README: rtl/chips/ttl_74x657/README.md
- Notes:
  - (none)

### 74x658 - octal bus transceiver, parity, inverting
- Status: [ ]
- Module: ttl_74x658
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74HC658
- RTL: rtl/chips/ttl_74x658/ttl_74x658.sv
- Testbench: tb/chips/ttl_74x658/tb_ttl_74x658.sv
- README: rtl/chips/ttl_74x658/README.md
- Notes:
  - (none)

### 74x659 - octal bus transceiver, parity, non-inverting
- Status: [ ]
- Module: ttl_74x659
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74HC659
- RTL: rtl/chips/ttl_74x659/ttl_74x659.sv
- Testbench: tb/chips/ttl_74x659/tb_ttl_74x659.sv
- README: rtl/chips/ttl_74x659/README.md
- Notes:
  - (none)

### 74x664 - octal bus transceiver, parity, inverting
- Status: [ ]
- Module: ttl_74x664
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74HC664
- RTL: rtl/chips/ttl_74x664/ttl_74x664.sv
- Testbench: tb/chips/ttl_74x664/tb_ttl_74x664.sv
- README: rtl/chips/ttl_74x664/README.md
- Notes:
  - (none)

### 74x665 - octal bus transceiver, parity, non-inverting
- Status: [ ]
- Module: ttl_74x665
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74HC665
- RTL: rtl/chips/ttl_74x665/ttl_74x665.sv
- Testbench: tb/chips/ttl_74x665/tb_ttl_74x665.sv
- README: rtl/chips/ttl_74x665/README.md
- Notes:
  - (none)

### 74x666 - 8-bit D-type transparent read-back latch, non-inverting
- Status: [ ]
- Module: ttl_74x666
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS666
- RTL: rtl/chips/ttl_74x666/ttl_74x666.sv
- Testbench: tb/chips/ttl_74x666/tb_ttl_74x666.sv
- README: rtl/chips/ttl_74x666/README.md
- Notes:
  - (none)

### 74x667 - 8-bit D-type transparent read-back latch, inverting
- Status: [ ]
- Module: ttl_74x667
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS667
- RTL: rtl/chips/ttl_74x667/ttl_74x667.sv
- Testbench: tb/chips/ttl_74x667/tb_ttl_74x667.sv
- README: rtl/chips/ttl_74x667/README.md
- Notes:
  - (none)

### 74x668 - synchronous 4-bit decade up/down counter
- Status: [ ]
- Module: ttl_74x668
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS668
- RTL: rtl/chips/ttl_74x668/ttl_74x668.sv
- Testbench: tb/chips/ttl_74x668/tb_ttl_74x668.sv
- README: rtl/chips/ttl_74x668/README.md
- Notes:
  - (none)

### 74x669 - synchronous 4-bit binary up/down counter
- Status: [ ]
- Module: ttl_74x669
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS669
- RTL: rtl/chips/ttl_74x669/ttl_74x669.sv
- Testbench: tb/chips/ttl_74x669/tb_ttl_74x669.sv
- README: rtl/chips/ttl_74x669/README.md
- Notes:
  - (none)

### 74x670 - 16-bit register file (4x4)
- Status: [ ]
- Module: ttl_74x670
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS670
- RTL: rtl/chips/ttl_74x670/ttl_74x670.sv
- Testbench: tb/chips/ttl_74x670/tb_ttl_74x670.sv
- README: rtl/chips/ttl_74x670/README.md
- Notes:
  - (none)

### 74x671 - 4-bit bidirectional shift register/latch/multiplexer, direct clear
- Status: [ ]
- Module: ttl_74x671
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS671
- RTL: rtl/chips/ttl_74x671/ttl_74x671.sv
- Testbench: tb/chips/ttl_74x671/tb_ttl_74x671.sv
- README: rtl/chips/ttl_74x671/README.md
- Notes:
  - (none)

### 74x672 - 4-bit bidirectional shift register/latch/multiplexer, synchronous clear
- Status: [ ]
- Module: ttl_74x672
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS672
- RTL: rtl/chips/ttl_74x672/ttl_74x672.sv
- Testbench: tb/chips/ttl_74x672/tb_ttl_74x672.sv
- README: rtl/chips/ttl_74x672/README.md
- Notes:
  - (none)

### 74x673 - 16-bit serial-in, serial/parallel-out shift register, output storage registers
- Status: [ ]
- Module: ttl_74x673
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS673
- RTL: rtl/chips/ttl_74x673/ttl_74x673.sv
- Testbench: tb/chips/ttl_74x673/tb_ttl_74x673.sv
- README: rtl/chips/ttl_74x673/README.md
- Notes:
  - (none)

### 74x674 - 16-bit parallel-in, serial-out shift register
- Status: [ ]
- Module: ttl_74x674
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LS674
- RTL: rtl/chips/ttl_74x674/ttl_74x674.sv
- Testbench: tb/chips/ttl_74x674/tb_ttl_74x674.sv
- README: rtl/chips/ttl_74x674/README.md
- Notes:
  - (none)

### 74x675 - 16-bit serial-in, serial/parallel-out shift register
- Status: [ ]
- Module: ttl_74x675
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F675A
- RTL: rtl/chips/ttl_74x675/ttl_74x675.sv
- Testbench: tb/chips/ttl_74x675/tb_ttl_74x675.sv
- README: rtl/chips/ttl_74x675/README.md
- Notes:
  - (none)

### 74x676 - 16-bit serial/parallel-in, serial-out shift register
- Status: [ ]
- Module: ttl_74x676
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F676
- RTL: rtl/chips/ttl_74x676/ttl_74x676.sv
- Testbench: tb/chips/ttl_74x676/tb_ttl_74x676.sv
- README: rtl/chips/ttl_74x676/README.md
- Notes:
  - (none)

### 74x677 - 16-bit address comparator, enable
- Status: [ ]
- Module: ttl_74x677
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ALS677
- RTL: rtl/chips/ttl_74x677/ttl_74x677.sv
- Testbench: tb/chips/ttl_74x677/tb_ttl_74x677.sv
- README: rtl/chips/ttl_74x677/README.md
- Notes:
  - (none)

### 74x678 - 16-bit address comparator, latch
- Status: [ ]
- Module: ttl_74x678
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ALS678
- RTL: rtl/chips/ttl_74x678/ttl_74x678.sv
- Testbench: tb/chips/ttl_74x678/tb_ttl_74x678.sv
- README: rtl/chips/ttl_74x678/README.md
- Notes:
  - (none)

### 74x679 - 12-bit address comparator, latch
- Status: [ ]
- Module: ttl_74x679
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS679
- RTL: rtl/chips/ttl_74x679/ttl_74x679.sv
- Testbench: tb/chips/ttl_74x679/tb_ttl_74x679.sv
- README: rtl/chips/ttl_74x679/README.md
- Notes:
  - (none)

### 74x680 - 12-bit address comparator, enable
- Status: [ ]
- Module: ttl_74x680
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS680
- RTL: rtl/chips/ttl_74x680/ttl_74x680.sv
- Testbench: tb/chips/ttl_74x680/tb_ttl_74x680.sv
- README: rtl/chips/ttl_74x680/README.md
- Notes:
  - (none)

### 74x681 - 4-bit parallel binary accumulator
- Status: [ ]
- Module: ttl_74x681
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS681
- RTL: rtl/chips/ttl_74x681/ttl_74x681.sv
- Testbench: tb/chips/ttl_74x681/tb_ttl_74x681.sv
- README: rtl/chips/ttl_74x681/README.md
- Notes:
  - (none)

### 74x682 - 8-bit magnitude comparator, P>Q output
- Status: [ ]
- Module: ttl_74x682
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS682
- RTL: rtl/chips/ttl_74x682/ttl_74x682.sv
- Testbench: tb/chips/ttl_74x682/tb_ttl_74x682.sv
- README: rtl/chips/ttl_74x682/README.md
- Notes:
  - (none)

### 74x683 - 8-bit magnitude comparator, P>Q output
- Status: [ ]
- Module: ttl_74x683
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS683
- RTL: rtl/chips/ttl_74x683/ttl_74x683.sv
- Testbench: tb/chips/ttl_74x683/tb_ttl_74x683.sv
- README: rtl/chips/ttl_74x683/README.md
- Notes:
  - (none)

### 74x684 - 8-bit magnitude comparator, P>Q output
- Status: [ ]
- Module: ttl_74x684
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS684
- RTL: rtl/chips/ttl_74x684/ttl_74x684.sv
- Testbench: tb/chips/ttl_74x684/tb_ttl_74x684.sv
- README: rtl/chips/ttl_74x684/README.md
- Notes:
  - (none)

### 74x685 - 8-bit magnitude comparator, P>Q output
- Status: [ ]
- Module: ttl_74x685
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS685
- RTL: rtl/chips/ttl_74x685/ttl_74x685.sv
- Testbench: tb/chips/ttl_74x685/tb_ttl_74x685.sv
- README: rtl/chips/ttl_74x685/README.md
- Notes:
  - (none)

### 74x686 - 8-bit magnitude comparator, P>Q output, enable
- Status: [ ]
- Module: ttl_74x686
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74LS686
- RTL: rtl/chips/ttl_74x686/ttl_74x686.sv
- Testbench: tb/chips/ttl_74x686/tb_ttl_74x686.sv
- README: rtl/chips/ttl_74x686/README.md
- Notes:
  - (none)

### 74x687 - 8-bit magnitude comparator, P>Q output, enable
- Status: [ ]
- Module: ttl_74x687
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74LS687
- RTL: rtl/chips/ttl_74x687/ttl_74x687.sv
- Testbench: tb/chips/ttl_74x687/tb_ttl_74x687.sv
- README: rtl/chips/ttl_74x687/README.md
- Notes:
  - (none)

### 74x688 - 8-bit magnitude comparator, enable
- Status: [ ]
- Module: ttl_74x688
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS688
- RTL: rtl/chips/ttl_74x688/ttl_74x688.sv
- Testbench: tb/chips/ttl_74x688/tb_ttl_74x688.sv
- README: rtl/chips/ttl_74x688/README.md
- Notes:
  - (none)

### 74x689 - 8-bit magnitude comparator, enable
- Status: [ ]
- Module: ttl_74x689
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74LS689
- RTL: rtl/chips/ttl_74x689/ttl_74x689.sv
- Testbench: tb/chips/ttl_74x689/tb_ttl_74x689.sv
- README: rtl/chips/ttl_74x689/README.md
- Notes:
  - (none)

### 74x690 - 4-bit decimal counter/latch/multiplexer, asynchronous clear
- Status: [ ]
- Module: ttl_74x690
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS690
- RTL: rtl/chips/ttl_74x690/ttl_74x690.sv
- Testbench: tb/chips/ttl_74x690/tb_ttl_74x690.sv
- README: rtl/chips/ttl_74x690/README.md
- Notes:
  - (none)

### 74x691 - 4-bit binary counter/latch/multiplexer, asynchronous clear
- Status: [ ]
- Module: ttl_74x691
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS691
- RTL: rtl/chips/ttl_74x691/ttl_74x691.sv
- Testbench: tb/chips/ttl_74x691/tb_ttl_74x691.sv
- README: rtl/chips/ttl_74x691/README.md
- Notes:
  - (none)

### 74x692 - 4-bit decimal counter/latch/multiplexer, synchronous clear
- Status: [ ]
- Module: ttl_74x692
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS692
- RTL: rtl/chips/ttl_74x692/ttl_74x692.sv
- Testbench: tb/chips/ttl_74x692/tb_ttl_74x692.sv
- README: rtl/chips/ttl_74x692/README.md
- Notes:
  - (none)

### 74x693 - 4-bit binary counter/latch/multiplexer, synchronous clear
- Status: [ ]
- Module: ttl_74x693
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS693
- RTL: rtl/chips/ttl_74x693/ttl_74x693.sv
- Testbench: tb/chips/ttl_74x693/tb_ttl_74x693.sv
- README: rtl/chips/ttl_74x693/README.md
- Notes:
  - (none)

### 74x694 - 4-bit decimal counter/latch/multiplexer, synchronous and asynchronous clears
- Status: [ ]
- Module: ttl_74x694
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS694
- RTL: rtl/chips/ttl_74x694/ttl_74x694.sv
- Testbench: tb/chips/ttl_74x694/tb_ttl_74x694.sv
- README: rtl/chips/ttl_74x694/README.md
- Notes:
  - (none)

### 74x695 - 4-bit binary counter/latch/multiplexer, synchronous and asynchronous clears
- Status: [ ]
- Module: ttl_74x695
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS695
- RTL: rtl/chips/ttl_74x695/ttl_74x695.sv
- Testbench: tb/chips/ttl_74x695/tb_ttl_74x695.sv
- README: rtl/chips/ttl_74x695/README.md
- Notes:
  - (none)

### 74x696 - 4-bit decimal counter/register/multiplexer, asynchronous clear
- Status: [ ]
- Module: ttl_74x696
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS696
- RTL: rtl/chips/ttl_74x696/ttl_74x696.sv
- Testbench: tb/chips/ttl_74x696/tb_ttl_74x696.sv
- README: rtl/chips/ttl_74x696/README.md
- Notes:
  - (none)

### 74x697 - 4-bit binary counter/register/multiplexer, asynchronous clear
- Status: [ ]
- Module: ttl_74x697
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS697
- RTL: rtl/chips/ttl_74x697/ttl_74x697.sv
- Testbench: tb/chips/ttl_74x697/tb_ttl_74x697.sv
- README: rtl/chips/ttl_74x697/README.md
- Notes:
  - (none)

### 74x698 - 4-bit decimal counter/register/multiplexer, synchronous clear
- Status: [ ]
- Module: ttl_74x698
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS698
- RTL: rtl/chips/ttl_74x698/ttl_74x698.sv
- Testbench: tb/chips/ttl_74x698/tb_ttl_74x698.sv
- README: rtl/chips/ttl_74x698/README.md
- Notes:
  - (none)

### 74x699 - 4-bit binary counter/register/multiplexer, synchronous clear
- Status: [ ]
- Module: ttl_74x699
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS699
- RTL: rtl/chips/ttl_74x699/ttl_74x699.sv
- Testbench: tb/chips/ttl_74x699/tb_ttl_74x699.sv
- README: rtl/chips/ttl_74x699/README.md
- Notes:
  - (none)

### 74x700 - octal dRAM driver, inverting
- Status: [ ]
- Module: ttl_74x700
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S700
- RTL: rtl/chips/ttl_74x700/ttl_74x700.sv
- Testbench: tb/chips/ttl_74x700/tb_ttl_74x700.sv
- README: rtl/chips/ttl_74x700/README.md
- Notes:
  - (none)

### 74x701 - 8-bit register/counter/comparator
- Status: [ ]
- Module: ttl_74x701
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F701
- RTL: rtl/chips/ttl_74x701/ttl_74x701.sv
- Testbench: tb/chips/ttl_74x701/tb_ttl_74x701.sv
- README: rtl/chips/ttl_74x701/README.md
- Notes:
  - (none)

### 74x702 - 8-bit registered read-back transceiver
- Status: [ ]
- Module: ttl_74x702
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F702
- RTL: rtl/chips/ttl_74x702/ttl_74x702.sv
- Testbench: tb/chips/ttl_74x702/tb_ttl_74x702.sv
- README: rtl/chips/ttl_74x702/README.md
- Notes:
  - (none)

### 74x705 - arithmetic logic unit for digital signal processing applications
- Status: [ ]
- Module: ttl_74x705
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (84)
- Datasheet/source: 74ACT705
- RTL: rtl/chips/ttl_74x705/ttl_74x705.sv
- Testbench: tb/chips/ttl_74x705/tb_ttl_74x705.sv
- README: rtl/chips/ttl_74x705/README.md
- Notes:
  - (none)

### 74x707 - 8-bit TTL-ECL shift register
- Status: [ ]
- Module: ttl_74x707
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74F707
- RTL: rtl/chips/ttl_74x707/ttl_74x707.sv
- Testbench: tb/chips/ttl_74x707/tb_ttl_74x707.sv
- README: rtl/chips/ttl_74x707/README.md
- Notes:
  - (none)

### 74x708 - 576-bit FIFO memory (64x9)
- Status: [ ]
- Module: ttl_74x708
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74ACT708
- RTL: rtl/chips/ttl_74x708/ttl_74x708.sv
- Testbench: tb/chips/ttl_74x708/tb_ttl_74x708.sv
- README: rtl/chips/ttl_74x708/README.md
- Notes:
  - (none)

### 74x710 - 8-bit single-supply TTL-ECL shift register
- Status: [ ]
- Module: ttl_74x710
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74F710
- RTL: rtl/chips/ttl_74x710/ttl_74x710.sv
- Testbench: tb/chips/ttl_74x710/tb_ttl_74x710.sv
- README: rtl/chips/ttl_74x710/README.md
- Notes:
  - (none)

### 74x711 - quint 2-to-1 multiplexers
- Status: [ ]
- Module: ttl_74x711
- Aliases: none
- Source section: Larger footprints
- Units: 5
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F711
- RTL: rtl/chips/ttl_74x711/ttl_74x711.sv
- Testbench: tb/chips/ttl_74x711/tb_ttl_74x711.sv
- README: rtl/chips/ttl_74x711/README.md
- Notes:
  - (none)

### 74x712 - quint 3-to-1 multiplexers
- Status: [ ]
- Module: ttl_74x712
- Aliases: none
- Source section: Larger footprints
- Units: 5
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F712
- RTL: rtl/chips/ttl_74x712/ttl_74x712.sv
- Testbench: tb/chips/ttl_74x712/tb_ttl_74x712.sv
- README: rtl/chips/ttl_74x712/README.md
- Notes:
  - (none)

### 74x715 - programmable video sync generator
- Status: [ ]
- Module: ttl_74x715
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74ACT715
- RTL: rtl/chips/ttl_74x715/ttl_74x715.sv
- Testbench: tb/chips/ttl_74x715/tb_ttl_74x715.sv
- README: rtl/chips/ttl_74x715/README.md
- Notes:
  - (none)

### 74x716 - programmable decade counter
- Status: [ ]
- Module: ttl_74x716
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS716
- RTL: rtl/chips/ttl_74x716/ttl_74x716.sv
- Testbench: tb/chips/ttl_74x716/tb_ttl_74x716.sv
- README: rtl/chips/ttl_74x716/README.md
- Notes:
  - (none)

### 74x718 - programmable binary counter
- Status: [ ]
- Module: ttl_74x718
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS718
- RTL: rtl/chips/ttl_74x718/ttl_74x718.sv
- Testbench: tb/chips/ttl_74x718/tb_ttl_74x718.sv
- README: rtl/chips/ttl_74x718/README.md
- Notes:
  - (none)

### 74x723 - 576-bit FIFO memory (64x9)
- Status: [ ]
- Module: ttl_74x723
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74ACT723
- RTL: rtl/chips/ttl_74x723/ttl_74x723.sv
- Testbench: tb/chips/ttl_74x723/tb_ttl_74x723.sv
- README: rtl/chips/ttl_74x723/README.md
- Notes:
  - (none)

### 74x724 - voltage-controlled multivibrator
- Status: [ ]
- Module: ttl_74x724
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 8
- Datasheet/source: SN74LS724
- RTL: rtl/chips/ttl_74x724/ttl_74x724.sv
- Testbench: tb/chips/ttl_74x724/tb_ttl_74x724.sv
- README: rtl/chips/ttl_74x724/README.md
- Notes:
  - (none)

### 74x725 - 4608-bit FIFO memory (512x9)
- Status: [ ]
- Module: ttl_74x725
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74ACT725
- RTL: rtl/chips/ttl_74x725/ttl_74x725.sv
- Testbench: tb/chips/ttl_74x725/tb_ttl_74x725.sv
- README: rtl/chips/ttl_74x725/README.md
- Notes:
  - (none)

### 74x730 - octal dRAM driver, inverting
- Status: [ ]
- Module: ttl_74x730
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S730
- RTL: rtl/chips/ttl_74x730/ttl_74x730.sv
- Testbench: tb/chips/ttl_74x730/tb_ttl_74x730.sv
- README: rtl/chips/ttl_74x730/README.md
- Notes:
  - (none)

### 74x731 - octal dRAM driver, non-inverting
- Status: [ ]
- Module: ttl_74x731
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S731
- RTL: rtl/chips/ttl_74x731/ttl_74x731.sv
- Testbench: tb/chips/ttl_74x731/tb_ttl_74x731.sv
- README: rtl/chips/ttl_74x731/README.md
- Notes:
  - (none)

### 74x732 - 4-bit 3-bus multiplexer, inverting
- Status: [ ]
- Module: ttl_74x732
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F732
- RTL: rtl/chips/ttl_74x732/ttl_74x732.sv
- Testbench: tb/chips/ttl_74x732/tb_ttl_74x732.sv
- README: rtl/chips/ttl_74x732/README.md
- Notes:
  - (none)

### 74x733 - 4-bit 3-bus multiplexer, non-inverting
- Status: [ ]
- Module: ttl_74x733
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: 74F733
- RTL: rtl/chips/ttl_74x733/ttl_74x733.sv
- Testbench: tb/chips/ttl_74x733/tb_ttl_74x733.sv
- README: rtl/chips/ttl_74x733/README.md
- Notes:
  - (none)

### 74x734 - octal dRAM driver, non-inverting
- Status: [ ]
- Module: ttl_74x734
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S734
- RTL: rtl/chips/ttl_74x734/ttl_74x734.sv
- Testbench: tb/chips/ttl_74x734/tb_ttl_74x734.sv
- README: rtl/chips/ttl_74x734/README.md
- Notes:
  - (none)

### 74x740 - dual 4-bit line driver, inverting
- Status: [ ]
- Module: ttl_74x740
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S740
- RTL: rtl/chips/ttl_74x740/ttl_74x740.sv
- Testbench: tb/chips/ttl_74x740/tb_ttl_74x740.sv
- README: rtl/chips/ttl_74x740/README.md
- Notes:
  - (none)

### 74x741 - dual 4-bit line driver, non-inverting, complementary enable inputs
- Status: [ ]
- Module: ttl_74x741
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S741
- RTL: rtl/chips/ttl_74x741/ttl_74x741.sv
- Testbench: tb/chips/ttl_74x741/tb_ttl_74x741.sv
- README: rtl/chips/ttl_74x741/README.md
- Notes:
  - (none)

### 74x742 - octal line driver, inverting
- Status: [ ]
- Module: ttl_74x742
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: title=TTL-Taschenbuch, Teil 3 |trans-title=TTL Pocket Reference, Part 3 |language=de |publisher=mitp-Verlag |place=Bonn |date=2002 |isbn=3-8266-0802-X}}</ref>
- RTL: rtl/chips/ttl_74x742/ttl_74x742.sv
- Testbench: tb/chips/ttl_74x742/tb_ttl_74x742.sv
- README: rtl/chips/ttl_74x742/README.md
- Notes:
  - (none)

### 74x743 - octal line driver, non-inverting
- Status: [ ]
- Module: ttl_74x743
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: at=3-124}}
- RTL: rtl/chips/ttl_74x743/ttl_74x743.sv
- Testbench: tb/chips/ttl_74x743/tb_ttl_74x743.sv
- README: rtl/chips/ttl_74x743/README.md
- Notes:
  - (none)

### 74x744 - dual 4-bit line driver, non-inverting
- Status: [ ]
- Module: ttl_74x744
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74S744
- RTL: rtl/chips/ttl_74x744/ttl_74x744.sv
- Testbench: tb/chips/ttl_74x744/tb_ttl_74x744.sv
- README: rtl/chips/ttl_74x744/README.md
- Notes:
  - (none)

### 74x746 - octal buffer / line driver, inverting
- Status: [ ]
- Module: ttl_74x746
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS746
- RTL: rtl/chips/ttl_74x746/ttl_74x746.sv
- Testbench: tb/chips/ttl_74x746/tb_ttl_74x746.sv
- README: rtl/chips/ttl_74x746/README.md
- Notes:
  - (none)

### 74x747 - octal buffer / line driver, non-inverting
- Status: [ ]
- Module: ttl_74x747
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 20 kΩ pull-up
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS747
- RTL: rtl/chips/ttl_74x747/ttl_74x747.sv
- Testbench: tb/chips/ttl_74x747/tb_ttl_74x747.sv
- README: rtl/chips/ttl_74x747/README.md
- Notes:
  - (none)

### 74x748 - 8 to 3-line priority encoder (glitch-less)
- Status: [ ]
- Module: ttl_74x748
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74LS748
- RTL: rtl/chips/ttl_74x748/ttl_74x748.sv
- Testbench: tb/chips/ttl_74x748/tb_ttl_74x748.sv
- README: rtl/chips/ttl_74x748/README.md
- Notes:
  - (none)

### 74x756 - octal buffer/line driver, inverting outputs
- Status: [ ]
- Module: ttl_74x756
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74AS756
- RTL: rtl/chips/ttl_74x756/ttl_74x756.sv
- Testbench: tb/chips/ttl_74x756/tb_ttl_74x756.sv
- README: rtl/chips/ttl_74x756/README.md
- Notes:
  - (none)

### 74x757 - octal buffer/line driver, non-inverting outputs, complementary enable inputs
- Status: [ ]
- Module: ttl_74x757
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74AS757
- RTL: rtl/chips/ttl_74x757/ttl_74x757.sv
- Testbench: tb/chips/ttl_74x757/tb_ttl_74x757.sv
- README: rtl/chips/ttl_74x757/README.md
- Notes:
  - (none)

### 74x758 - quadruple bus transceivers, inverting outputs
- Status: [ ]
- Module: ttl_74x758
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74AS758
- RTL: rtl/chips/ttl_74x758/ttl_74x758.sv
- Testbench: tb/chips/ttl_74x758/tb_ttl_74x758.sv
- README: rtl/chips/ttl_74x758/README.md
- Notes:
  - (none)

### 74x759 - quadruple bus transceivers, non-inverting outputs
- Status: [ ]
- Module: ttl_74x759
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74AS759
- RTL: rtl/chips/ttl_74x759/ttl_74x759.sv
- Testbench: tb/chips/ttl_74x759/tb_ttl_74x759.sv
- README: rtl/chips/ttl_74x759/README.md
- Notes:
  - (none)

### 74x760 - octal buffer/line driver, non-inverting outputs
- Status: [ ]
- Module: ttl_74x760
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS760
- RTL: rtl/chips/ttl_74x760/ttl_74x760.sv
- Testbench: tb/chips/ttl_74x760/tb_ttl_74x760.sv
- README: rtl/chips/ttl_74x760/README.md
- Notes:
  - (none)

### 74x762 - octal buffer/line driver, inverting and non-inverting outputs
- Status: [ ]
- Module: ttl_74x762
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS762
- RTL: rtl/chips/ttl_74x762/ttl_74x762.sv
- Testbench: tb/chips/ttl_74x762/tb_ttl_74x762.sv
- README: rtl/chips/ttl_74x762/README.md
- Notes:
  - (none)

### 74x763 - octal buffer/line driver, inverting outputs, complementary enable inputs
- Status: [ ]
- Module: ttl_74x763
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS763
- RTL: rtl/chips/ttl_74x763/ttl_74x763.sv
- Testbench: tb/chips/ttl_74x763/tb_ttl_74x763.sv
- README: rtl/chips/ttl_74x763/README.md
- Notes:
  - (none)

### 74x764 - dual-port dRAM controller
- Status: [ ]
- Module: ttl_74x764
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: 74F764
- RTL: rtl/chips/ttl_74x764/ttl_74x764.sv
- Testbench: tb/chips/ttl_74x764/tb_ttl_74x764.sv
- README: rtl/chips/ttl_74x764/README.md
- Notes:
  - (none)

### 74x765 - dual-port dRAM controller with address latch
- Status: [ ]
- Module: ttl_74x765
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: 74F765
- RTL: rtl/chips/ttl_74x765/ttl_74x765.sv
- Testbench: tb/chips/ttl_74x765/tb_ttl_74x765.sv
- README: rtl/chips/ttl_74x765/README.md
- Notes:
  - (none)

### 74x776 - 8-bit latched transceiver for FutureBus
- Status: [ ]
- Module: ttl_74x776
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 28
- Datasheet/source: SN74F776
- RTL: rtl/chips/ttl_74x776/ttl_74x776.sv
- Testbench: tb/chips/ttl_74x776/tb_ttl_74x776.sv
- README: rtl/chips/ttl_74x776/README.md
- Notes:
  - (none)

### 74x777 - triple latched transceiver
- Status: [ ]
- Module: ttl_74x777
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: three-state and open-collector
- Pins: 20
- Datasheet/source: 74F777
- RTL: rtl/chips/ttl_74x777/ttl_74x777.sv
- Testbench: tb/chips/ttl_74x777/tb_ttl_74x777.sv
- README: rtl/chips/ttl_74x777/README.md
- Notes:
  - (none)

### 74x779 - 8-bit bidirectional binary counter
- Status: [ ]
- Module: ttl_74x779
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: MC74F779
- RTL: rtl/chips/ttl_74x779/ttl_74x779.sv
- Testbench: tb/chips/ttl_74x779/tb_ttl_74x779.sv
- README: rtl/chips/ttl_74x779/README.md
- Notes:
  - (none)

### 74x783 - synchronous address multiplexer for display systems
- Status: [ ]
- Module: ttl_74x783
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: SN74LS783
- RTL: rtl/chips/ttl_74x783/ttl_74x783.sv
- Testbench: tb/chips/ttl_74x783/tb_ttl_74x783.sv
- README: rtl/chips/ttl_74x783/README.md
- Notes:
  - (none)

### 74x784 - 8-bit serial/parallel multiplier with adder/subtractor
- Status: [ ]
- Module: ttl_74x784
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74F784
- RTL: rtl/chips/ttl_74x784/ttl_74x784.sv
- Testbench: tb/chips/ttl_74x784/tb_ttl_74x784.sv
- README: rtl/chips/ttl_74x784/README.md
- Notes:
  - (none)

### 74x785 - synchronous address multiplexer for display systems with 256-column refresh
- Status: [ ]
- Module: ttl_74x785
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: SN74LS785
- RTL: rtl/chips/ttl_74x785/ttl_74x785.sv
- Testbench: tb/chips/ttl_74x785/tb_ttl_74x785.sv
- README: rtl/chips/ttl_74x785/README.md
- Notes:
  - (none)

### 74x786 - 4-input asynchronous bus arbiter
- Status: [ ]
- Module: ttl_74x786
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74F786
- RTL: rtl/chips/ttl_74x786/ttl_74x786.sv
- Testbench: tb/chips/ttl_74x786/tb_ttl_74x786.sv
- README: rtl/chips/ttl_74x786/README.md
- Notes:
  - (none)

### 74x790 - error detection and correction (EDAC)
- Status: [ ]
- Module: ttl_74x790
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: SN74ALS790
- RTL: rtl/chips/ttl_74x790/ttl_74x790.sv
- Testbench: tb/chips/ttl_74x790/tb_ttl_74x790.sv
- README: rtl/chips/ttl_74x790/README.md
- Notes:
  - (none)

### 74x793 - 8-bit latch, readback
- Status: [ ]
- Module: ttl_74x793
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS793
- RTL: rtl/chips/ttl_74x793/ttl_74x793.sv
- Testbench: tb/chips/ttl_74x793/tb_ttl_74x793.sv
- README: rtl/chips/ttl_74x793/README.md
- Notes:
  - (none)

### 74x794 - 8-bit register, readback
- Status: [ ]
- Module: ttl_74x794
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74LS794
- RTL: rtl/chips/ttl_74x794/ttl_74x794.sv
- Testbench: tb/chips/ttl_74x794/tb_ttl_74x794.sv
- README: rtl/chips/ttl_74x794/README.md
- Notes:
  - (none)

### 74x795 - octal buffer, non-inverting, shared enable
- Status: [ ]
- Module: ttl_74x795
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS795
- RTL: rtl/chips/ttl_74x795/ttl_74x795.sv
- Testbench: tb/chips/ttl_74x795/tb_ttl_74x795.sv
- README: rtl/chips/ttl_74x795/README.md
- Notes:
  - (none)

### 74x796 - octal buffer, inverting, shared enable
- Status: [ ]
- Module: ttl_74x796
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS796
- RTL: rtl/chips/ttl_74x796/ttl_74x796.sv
- Testbench: tb/chips/ttl_74x796/tb_ttl_74x796.sv
- README: rtl/chips/ttl_74x796/README.md
- Notes:
  - (none)

### 74x797 - octal buffer, non-inverting, enable for 4 buffers each
- Status: [ ]
- Module: ttl_74x797
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS797
- RTL: rtl/chips/ttl_74x797/ttl_74x797.sv
- Testbench: tb/chips/ttl_74x797/tb_ttl_74x797.sv
- README: rtl/chips/ttl_74x797/README.md
- Notes:
  - (none)

### 74x798 - octal buffer, inverting, enable for 4 buffers each
- Status: [ ]
- Module: ttl_74x798
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LS798
- RTL: rtl/chips/ttl_74x798/ttl_74x798.sv
- Testbench: tb/chips/ttl_74x798/tb_ttl_74x798.sv
- README: rtl/chips/ttl_74x798/README.md
- Notes:
  - (none)

### 74x800 - triple 4-input AND/NAND drivers
- Status: [ ]
- Module: ttl_74x800
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74AS800
- RTL: rtl/chips/ttl_74x800/ttl_74x800.sv
- Testbench: tb/chips/ttl_74x800/tb_ttl_74x800.sv
- README: rtl/chips/ttl_74x800/README.md
- Notes:
  - (none)

### 74x802 - triple 4-input OR/NOR drivers
- Status: [ ]
- Module: ttl_74x802
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74AS802
- RTL: rtl/chips/ttl_74x802/ttl_74x802.sv
- Testbench: tb/chips/ttl_74x802/tb_ttl_74x802.sv
- README: rtl/chips/ttl_74x802/README.md
- Notes:
  - (none)

### 74x803 - quad D flip flops with matched propagation delays
- Status: [ ]
- Module: ttl_74x803
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74F803
- RTL: rtl/chips/ttl_74x803/ttl_74x803.sv
- Testbench: tb/chips/ttl_74x803/tb_ttl_74x803.sv
- README: rtl/chips/ttl_74x803/README.md
- Notes:
  - (none)

### 74x804 - hex 2-input NAND drivers
- Status: [ ]
- Module: ttl_74x804
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74ALS804A
- RTL: rtl/chips/ttl_74x804/ttl_74x804.sv
- Testbench: tb/chips/ttl_74x804/tb_ttl_74x804.sv
- README: rtl/chips/ttl_74x804/README.md
- Notes:
  - (none)

### 74x805 - hex 2-input NOR drivers
- Status: [ ]
- Module: ttl_74x805
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74ALS805A
- RTL: rtl/chips/ttl_74x805/ttl_74x805.sv
- Testbench: tb/chips/ttl_74x805/tb_ttl_74x805.sv
- README: rtl/chips/ttl_74x805/README.md
- Notes:
  - (none)

### 74x807 - 1-to-10 clock driver
- Status: [ ]
- Module: ttl_74x807
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: IDT74FCT807
- RTL: rtl/chips/ttl_74x807/ttl_74x807.sv
- Testbench: tb/chips/ttl_74x807/tb_ttl_74x807.sv
- README: rtl/chips/ttl_74x807/README.md
- Notes:
  - (none)

### 74x808 - hex 2-input AND drivers
- Status: [ ]
- Module: ttl_74x808
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74AS808B
- RTL: rtl/chips/ttl_74x808/ttl_74x808.sv
- Testbench: tb/chips/ttl_74x808/tb_ttl_74x808.sv
- README: rtl/chips/ttl_74x808/README.md
- Notes:
  - (none)

### 74x810 - quad 2-input XNOR gates
- Status: [ ]
- Module: ttl_74x810
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74ALS810
- RTL: rtl/chips/ttl_74x810/ttl_74x810.sv
- Testbench: tb/chips/ttl_74x810/tb_ttl_74x810.sv
- README: rtl/chips/ttl_74x810/README.md
- Notes:
  - (none)

### 74x811 - quad 2-input XNOR gates
- Status: [ ]
- Module: ttl_74x811
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: DM74ALS811
- RTL: rtl/chips/ttl_74x811/ttl_74x811.sv
- Testbench: tb/chips/ttl_74x811/tb_ttl_74x811.sv
- README: rtl/chips/ttl_74x811/README.md
- Notes:
  - (none)

### 74x817 - GTL+ to LV-TTL 1-to-6 fanout / LV-TTL to GTL+ 1-to-2 fanout driver
- Status: [ ]
- Module: ttl_74x817
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (24)
- Datasheet/source: SN74GTLP817
- RTL: rtl/chips/ttl_74x817/ttl_74x817.sv
- Testbench: tb/chips/ttl_74x817/tb_ttl_74x817.sv
- README: rtl/chips/ttl_74x817/README.md
- Notes:
  - (none)

### 74x818 - 8-bit diagnostic register
- Status: [ ]
- Module: ttl_74x818
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74ACT818
- RTL: rtl/chips/ttl_74x818/ttl_74x818.sv
- Testbench: tb/chips/ttl_74x818/tb_ttl_74x818.sv
- README: rtl/chips/ttl_74x818/README.md
- Notes:
  - (none)

### 74x819 - 8-bit diagnostic / pipeline register
- Status: [ ]
- Module: ttl_74x819
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS819
- RTL: rtl/chips/ttl_74x819/ttl_74x819.sv
- Testbench: tb/chips/ttl_74x819/tb_ttl_74x819.sv
- README: rtl/chips/ttl_74x819/README.md
- Notes:
  - (none)

### 74x821 - 10-bit bus interface flip-flop
- Status: [ ]
- Module: ttl_74x821
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS821A
- RTL: rtl/chips/ttl_74x821/ttl_74x821.sv
- Testbench: tb/chips/ttl_74x821/tb_ttl_74x821.sv
- README: rtl/chips/ttl_74x821/README.md
- Notes:
  - (none)

### 74x822 - 10-bit bus interface flip-flop, inverting inputs
- Status: [ ]
- Module: ttl_74x822
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS822
- RTL: rtl/chips/ttl_74x822/ttl_74x822.sv
- Testbench: tb/chips/ttl_74x822/tb_ttl_74x822.sv
- README: rtl/chips/ttl_74x822/README.md
- Notes:
  - (none)

### 74x823 - 9-bit D-type flip-flops, clear and clock enable inputs
- Status: [ ]
- Module: ttl_74x823
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS823A
- RTL: rtl/chips/ttl_74x823/ttl_74x823.sv
- Testbench: tb/chips/ttl_74x823/tb_ttl_74x823.sv
- README: rtl/chips/ttl_74x823/README.md
- Notes:
  - (none)

### 74x824 - 9-bit D-type flip-flops, clear and clock enable inputs, inverting inputs
- Status: [ ]
- Module: ttl_74x824
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS824
- RTL: rtl/chips/ttl_74x824/ttl_74x824.sv
- Testbench: tb/chips/ttl_74x824/tb_ttl_74x824.sv
- README: rtl/chips/ttl_74x824/README.md
- Notes:
  - (none)

### 74x825 - 8-bit D-type flip-flop, clear and clock enable inputs
- Status: [ ]
- Module: ttl_74x825
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS825A
- RTL: rtl/chips/ttl_74x825/ttl_74x825.sv
- Testbench: tb/chips/ttl_74x825/tb_ttl_74x825.sv
- README: rtl/chips/ttl_74x825/README.md
- Notes:
  - (none)

### 74x826 - 8-bit D-type flip-flop, clear and clock enable inputs, inverting inputs
- Status: [ ]
- Module: ttl_74x826
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS826
- RTL: rtl/chips/ttl_74x826/ttl_74x826.sv
- Testbench: tb/chips/ttl_74x826/tb_ttl_74x826.sv
- README: rtl/chips/ttl_74x826/README.md
- Notes:
  - (none)

### 74x827 - 10-bit buffer, non-inverting
- Status: [ ]
- Module: ttl_74x827
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: MC74F827
- RTL: rtl/chips/ttl_74x827/ttl_74x827.sv
- Testbench: tb/chips/ttl_74x827/tb_ttl_74x827.sv
- README: rtl/chips/ttl_74x827/README.md
- Notes:
  - (none)

### 74x828 - 10-bit buffer, inverting
- Status: [ ]
- Module: ttl_74x828
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: MC74F828
- RTL: rtl/chips/ttl_74x828/ttl_74x828.sv
- Testbench: tb/chips/ttl_74x828/tb_ttl_74x828.sv
- README: rtl/chips/ttl_74x828/README.md
- Notes:
  - (none)

### 74x832 - hex 2-input OR drivers
- Status: [ ]
- Module: ttl_74x832
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: SN74ALS832A
- RTL: rtl/chips/ttl_74x832/ttl_74x832.sv
- Testbench: tb/chips/ttl_74x832/tb_ttl_74x832.sv
- README: rtl/chips/ttl_74x832/README.md
- Notes:
  - (none)

### 74x833 - 8-bit to 9-bit bus transceiver with parity register, non-inverting
- Status: [ ]
- Module: ttl_74x833
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT833
- RTL: rtl/chips/ttl_74x833/ttl_74x833.sv
- Testbench: tb/chips/ttl_74x833/tb_ttl_74x833.sv
- README: rtl/chips/ttl_74x833/README.md
- Notes:
  - (none)

### 74x834 - 8-bit to 9-bit bus transceiver with parity register, inverting
- Status: [ ]
- Module: ttl_74x834
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: IDT74FCT834
- RTL: rtl/chips/ttl_74x834/ttl_74x834.sv
- Testbench: tb/chips/ttl_74x834/tb_ttl_74x834.sv
- README: rtl/chips/ttl_74x834/README.md
- Notes:
  - (none)

### 74x835 - 8-bit shift register with 2:1 input multiplexers, one input latched, serial output
- Status: [ ]
- Module: ttl_74x835
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F835
- RTL: rtl/chips/ttl_74x835/ttl_74x835.sv
- Testbench: tb/chips/ttl_74x835/tb_ttl_74x835.sv
- README: rtl/chips/ttl_74x835/README.md
- Notes:
  - (none)

### 74x839 - field-programmable logic array 14x32x6
- Status: [ ]
- Module: ttl_74x839
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74PL839
- RTL: rtl/chips/ttl_74x839/ttl_74x839.sv
- Testbench: tb/chips/ttl_74x839/tb_ttl_74x839.sv
- README: rtl/chips/ttl_74x839/README.md
- Notes:
  - (none)

### 74x840 - field-programmable logic array 14x32x6
- Status: [ ]
- Module: ttl_74x840
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74PL840
- RTL: rtl/chips/ttl_74x840/ttl_74x840.sv
- Testbench: tb/chips/ttl_74x840/tb_ttl_74x840.sv
- README: rtl/chips/ttl_74x840/README.md
- Notes:
  - (none)

### 74x841 - 10-bit D-type flip-flop
- Status: [ ]
- Module: ttl_74x841
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS841
- RTL: rtl/chips/ttl_74x841/ttl_74x841.sv
- Testbench: tb/chips/ttl_74x841/tb_ttl_74x841.sv
- README: rtl/chips/ttl_74x841/README.md
- Notes:
  - (none)

### 74x842 - 10-bit D-type flip-flop, inverting inputs
- Status: [ ]
- Module: ttl_74x842
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS842
- RTL: rtl/chips/ttl_74x842/ttl_74x842.sv
- Testbench: tb/chips/ttl_74x842/tb_ttl_74x842.sv
- README: rtl/chips/ttl_74x842/README.md
- Notes:
  - (none)

### 74x843 - 9-bit D flip-flops, clear and set inputs
- Status: [ ]
- Module: ttl_74x843
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS843
- RTL: rtl/chips/ttl_74x843/ttl_74x843.sv
- Testbench: tb/chips/ttl_74x843/tb_ttl_74x843.sv
- README: rtl/chips/ttl_74x843/README.md
- Notes:
  - (none)

### 74x844 - 9-bit D flip-flops, clear and set inputs, inverting inputs
- Status: [ ]
- Module: ttl_74x844
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS844
- RTL: rtl/chips/ttl_74x844/ttl_74x844.sv
- Testbench: tb/chips/ttl_74x844/tb_ttl_74x844.sv
- README: rtl/chips/ttl_74x844/README.md
- Notes:
  - (none)

### 74x845 - 8-bit D flip-flops, clear and set inputs
- Status: [ ]
- Module: ttl_74x845
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS845
- RTL: rtl/chips/ttl_74x845/ttl_74x845.sv
- Testbench: tb/chips/ttl_74x845/tb_ttl_74x845.sv
- README: rtl/chips/ttl_74x845/README.md
- Notes:
  - (none)

### 74x846 - 8-bit D flip-flops, clear and set inputs, inverting inputs
- Status: [ ]
- Module: ttl_74x846
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS846
- RTL: rtl/chips/ttl_74x846/ttl_74x846.sv
- Testbench: tb/chips/ttl_74x846/tb_ttl_74x846.sv
- README: rtl/chips/ttl_74x846/README.md
- Notes:
  - (none)

### 74x848 - 8 to 3-line priority encoder (glitch-less)
- Status: [ ]
- Module: ttl_74x848
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: SN74LS848
- RTL: rtl/chips/ttl_74x848/ttl_74x848.sv
- Testbench: tb/chips/ttl_74x848/tb_ttl_74x848.sv
- README: rtl/chips/ttl_74x848/README.md
- Notes:
  - (none)

### 74x850 - 1 of 16 data selector/multiplexer, clocked select
- Status: [ ]
- Module: ttl_74x850
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74AS850
- RTL: rtl/chips/ttl_74x850/ttl_74x850.sv
- Testbench: tb/chips/ttl_74x850/tb_ttl_74x850.sv
- README: rtl/chips/ttl_74x850/README.md
- Notes:
  - (none)

### 74x851 - 1 of 16 data selector/multiplexer
- Status: [ ]
- Module: ttl_74x851
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74AS851
- RTL: rtl/chips/ttl_74x851/ttl_74x851.sv
- Testbench: tb/chips/ttl_74x851/tb_ttl_74x851.sv
- README: rtl/chips/ttl_74x851/README.md
- Notes:
  - (none)

### 74x852 - 8-bit universal transceiver port controller
- Status: [ ]
- Module: ttl_74x852
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS852
- RTL: rtl/chips/ttl_74x852/ttl_74x852.sv
- Testbench: tb/chips/ttl_74x852/tb_ttl_74x852.sv
- README: rtl/chips/ttl_74x852/README.md
- Notes:
  - (none)

### 74x853 - 8-bit to 9-bit bus transceiver with parity latch, non-inverting
- Status: [ ]
- Module: ttl_74x853
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT853
- RTL: rtl/chips/ttl_74x853/ttl_74x853.sv
- Testbench: tb/chips/ttl_74x853/tb_ttl_74x853.sv
- README: rtl/chips/ttl_74x853/README.md
- Notes:
  - (none)

### 74x854 - 8-bit to 9-bit bus transceiver with parity latch, inverting
- Status: [ ]
- Module: ttl_74x854
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: IDT74FCT854
- RTL: rtl/chips/ttl_74x854/ttl_74x854.sv
- Testbench: tb/chips/ttl_74x854/tb_ttl_74x854.sv
- README: rtl/chips/ttl_74x854/README.md
- Notes:
  - (none)

### 74x856 - 8-bit universal transceiver port controller
- Status: [ ]
- Module: ttl_74x856
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS856
- RTL: rtl/chips/ttl_74x856/ttl_74x856.sv
- Testbench: tb/chips/ttl_74x856/tb_ttl_74x856.sv
- README: rtl/chips/ttl_74x856/README.md
- Notes:
  - (none)

### 74x857 - hex 2-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74x857
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS857
- RTL: rtl/chips/ttl_74x857/ttl_74x857.sv
- Testbench: tb/chips/ttl_74x857/tb_ttl_74x857.sv
- README: rtl/chips/ttl_74x857/README.md
- Notes:
  - (none)

### 74x861 - 10-bit bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x861
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT861
- RTL: rtl/chips/ttl_74x861/ttl_74x861.sv
- Testbench: tb/chips/ttl_74x861/tb_ttl_74x861.sv
- README: rtl/chips/ttl_74x861/README.md
- Notes:
  - (none)

### 74x862 - 10-bit bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x862
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT862
- RTL: rtl/chips/ttl_74x862/ttl_74x862.sv
- Testbench: tb/chips/ttl_74x862/tb_ttl_74x862.sv
- README: rtl/chips/ttl_74x862/README.md
- Notes:
  - (none)

### 74x863 - 9-bit bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x863
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT863
- RTL: rtl/chips/ttl_74x863/ttl_74x863.sv
- Testbench: tb/chips/ttl_74x863/tb_ttl_74x863.sv
- README: rtl/chips/ttl_74x863/README.md
- Notes:
  - (none)

### 74x864 - 9-bit bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x864
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F864
- RTL: rtl/chips/ttl_74x864/ttl_74x864.sv
- Testbench: tb/chips/ttl_74x864/tb_ttl_74x864.sv
- README: rtl/chips/ttl_74x864/README.md
- Notes:
  - (none)

### 74x866 - 8-bit magnitude comparator with latches
- Status: [ ]
- Module: ttl_74x866
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS866
- RTL: rtl/chips/ttl_74x866/ttl_74x866.sv
- Testbench: tb/chips/ttl_74x866/tb_ttl_74x866.sv
- README: rtl/chips/ttl_74x866/README.md
- Notes:
  - (none)

### 74x867 - synchronous 8-bit up/down counter, asynchronous clear
- Status: [ ]
- Module: ttl_74x867
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ALS867A
- RTL: rtl/chips/ttl_74x867/ttl_74x867.sv
- Testbench: tb/chips/ttl_74x867/tb_ttl_74x867.sv
- README: rtl/chips/ttl_74x867/README.md
- Notes:
  - (none)

### 74x869 - synchronous 8-bit up/down counter, synchronous clear
- Status: [ ]
- Module: ttl_74x869
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ALS869
- RTL: rtl/chips/ttl_74x869/ttl_74x869.sv
- Testbench: tb/chips/ttl_74x869/tb_ttl_74x869.sv
- README: rtl/chips/ttl_74x869/README.md
- Notes:
  - (none)

### 74x870 - dual 16x4 register files
- Status: [ ]
- Module: ttl_74x870
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS870
- RTL: rtl/chips/ttl_74x870/ttl_74x870.sv
- Testbench: tb/chips/ttl_74x870/tb_ttl_74x870.sv
- README: rtl/chips/ttl_74x870/README.md
- Notes:
  - (none)

### 74x871 - dual 16x4 register files
- Status: [ ]
- Module: ttl_74x871
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74AS871
- RTL: rtl/chips/ttl_74x871/ttl_74x871.sv
- Testbench: tb/chips/ttl_74x871/tb_ttl_74x871.sv
- README: rtl/chips/ttl_74x871/README.md
- Notes:
  - (none)

### 74x873 - dual 4-bit transparent latch with clear
- Status: [ ]
- Module: ttl_74x873
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS873B
- RTL: rtl/chips/ttl_74x873/ttl_74x873.sv
- Testbench: tb/chips/ttl_74x873/tb_ttl_74x873.sv
- README: rtl/chips/ttl_74x873/README.md
- Notes:
  - (none)

### 74x874 - dual 4-bit edge-triggered D flip-flops with clear
- Status: [ ]
- Module: ttl_74x874
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS874B
- RTL: rtl/chips/ttl_74x874/ttl_74x874.sv
- Testbench: tb/chips/ttl_74x874/tb_ttl_74x874.sv
- README: rtl/chips/ttl_74x874/README.md
- Notes:
  - (none)

### 74x876 - dual 4-bit edge-triggered D flip-flops with set, inverting outputs
- Status: [ ]
- Module: ttl_74x876
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS876A
- RTL: rtl/chips/ttl_74x876/ttl_74x876.sv
- Testbench: tb/chips/ttl_74x876/tb_ttl_74x876.sv
- README: rtl/chips/ttl_74x876/README.md
- Notes:
  - (none)

### 74x877 - 8-bit universal transceiver port controller
- Status: [ ]
- Module: ttl_74x877
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS877
- RTL: rtl/chips/ttl_74x877/ttl_74x877.sv
- Testbench: tb/chips/ttl_74x877/tb_ttl_74x877.sv
- README: rtl/chips/ttl_74x877/README.md
- Notes:
  - (none)

### 74x878 - dual 4-bit D-type flip-flop, synchronous clear, non-inverting outputs
- Status: [ ]
- Module: ttl_74x878
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS878
- RTL: rtl/chips/ttl_74x878/ttl_74x878.sv
- Testbench: tb/chips/ttl_74x878/tb_ttl_74x878.sv
- README: rtl/chips/ttl_74x878/README.md
- Notes:
  - (none)

### 74x879 - dual 4-bit D-type flip-flop, synchronous clear, inverting outputs
- Status: [ ]
- Module: ttl_74x879
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS879
- RTL: rtl/chips/ttl_74x879/ttl_74x879.sv
- Testbench: tb/chips/ttl_74x879/tb_ttl_74x879.sv
- README: rtl/chips/ttl_74x879/README.md
- Notes:
  - (none)

### 74x880 - dual 4-bit transparent latch with clear, inverting outputs
- Status: [ ]
- Module: ttl_74x880
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS880
- RTL: rtl/chips/ttl_74x880/ttl_74x880.sv
- Testbench: tb/chips/ttl_74x880/tb_ttl_74x880.sv
- README: rtl/chips/ttl_74x880/README.md
- Notes:
  - (none)

### 74x881 - 4-bit arithmetic logic unit
- Status: [ ]
- Module: ttl_74x881
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS881A
- RTL: rtl/chips/ttl_74x881/ttl_74x881.sv
- Testbench: tb/chips/ttl_74x881/tb_ttl_74x881.sv
- README: rtl/chips/ttl_74x881/README.md
- Notes:
  - (none)

### 74x882 - 32-bit lookahead carry generator
- Status: [ ]
- Module: ttl_74x882
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS882
- RTL: rtl/chips/ttl_74x882/ttl_74x882.sv
- Testbench: tb/chips/ttl_74x882/tb_ttl_74x882.sv
- README: rtl/chips/ttl_74x882/README.md
- Notes:
  - (none)

### 74x885 - 8-bit magnitude comparator
- Status: [ ]
- Module: ttl_74x885
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS885
- RTL: rtl/chips/ttl_74x885/ttl_74x885.sv
- Testbench: tb/chips/ttl_74x885/tb_ttl_74x885.sv
- README: rtl/chips/ttl_74x885/README.md
- Notes:
  - (none)

### 74x887 - 8-bit processor element (non-cascadable version of 74x888)
- Status: [ ]
- Module: ttl_74x887
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74AS887
- RTL: rtl/chips/ttl_74x887/ttl_74x887.sv
- Testbench: tb/chips/ttl_74x887/tb_ttl_74x887.sv
- README: rtl/chips/ttl_74x887/README.md
- Notes:
  - (none)

### 74x888 - 8-bit processor slice
- Status: [ ]
- Module: ttl_74x888
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 64
- Datasheet/source: SN74AS888
- RTL: rtl/chips/ttl_74x888/ttl_74x888.sv
- Testbench: tb/chips/ttl_74x888/tb_ttl_74x888.sv
- README: rtl/chips/ttl_74x888/README.md
- Notes:
  - (none)

### 74x889 - 8-bit processor slice
- Status: [ ]
- Module: ttl_74x889
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74AS889
- RTL: rtl/chips/ttl_74x889/ttl_74x889.sv
- Testbench: tb/chips/ttl_74x889/tb_ttl_74x889.sv
- README: rtl/chips/ttl_74x889/README.md
- Notes:
  - (none)

### 74x890 - microoperation sequencer
- Status: [ ]
- Module: ttl_74x890
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 64
- Datasheet/source: SN74AS890
- RTL: rtl/chips/ttl_74x890/ttl_74x890.sv
- Testbench: tb/chips/ttl_74x890/tb_ttl_74x890.sv
- README: rtl/chips/ttl_74x890/README.md
- Notes:
  - (none)

### 74x891 - microoperation sequencer
- Status: [ ]
- Module: ttl_74x891
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74AS891
- RTL: rtl/chips/ttl_74x891/ttl_74x891.sv
- Testbench: tb/chips/ttl_74x891/tb_ttl_74x891.sv
- README: rtl/chips/ttl_74x891/README.md
- Notes:
  - (none)

### 74x895 - 8-bit memory address generator
- Status: [ ]
- Module: ttl_74x895
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74AS895
- RTL: rtl/chips/ttl_74x895/ttl_74x895.sv
- Testbench: tb/chips/ttl_74x895/tb_ttl_74x895.sv
- README: rtl/chips/ttl_74x895/README.md
- Notes:
  - (none)

### 74x897 - 16-bit parallel/serial barrel shifter
- Status: [ ]
- Module: ttl_74x897
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74AS897A
- RTL: rtl/chips/ttl_74x897/ttl_74x897.sv
- Testbench: tb/chips/ttl_74x897/tb_ttl_74x897.sv
- README: rtl/chips/ttl_74x897/README.md
- Notes:
  - (none)

### 74x899 - 9-bit latchable transceiver with parity generator / checker
- Status: [ ]
- Module: ttl_74x899
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (28)
- Datasheet/source: 74AC899
- RTL: rtl/chips/ttl_74x899/ttl_74x899.sv
- Testbench: tb/chips/ttl_74x899/tb_ttl_74x899.sv
- README: rtl/chips/ttl_74x899/README.md
- Notes:
  - (none)

### 74x900 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x900
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS900
- RTL: rtl/chips/ttl_74x900/ttl_74x900.sv
- Testbench: tb/chips/ttl_74x900/tb_ttl_74x900.sv
- README: rtl/chips/ttl_74x900/README.md
- Notes:
  - (none)

### 74x901 - hex inverting TTL buffer
- Status: [ ]
- Module: ttl_74x901
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C901
- RTL: rtl/chips/ttl_74x901/ttl_74x901.sv
- Testbench: tb/chips/ttl_74x901/tb_ttl_74x901.sv
- README: rtl/chips/ttl_74x901/README.md
- Notes:
  - (none)

### 74C902 - hex non-inverting TTL buffer
- Status: [ ]
- Module: ttl_74c902
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C902
- RTL: rtl/chips/ttl_74c902/ttl_74c902.sv
- Testbench: tb/chips/ttl_74c902/tb_ttl_74c902.sv
- README: rtl/chips/ttl_74c902/README.md
- Notes:
  - (none)

### 74ALS902 - quad 2-input NOR gate
- Status: [ ]
- Module: ttl_74als902
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS902
- RTL: rtl/chips/ttl_74als902/ttl_74als902.sv
- Testbench: tb/chips/ttl_74als902/tb_ttl_74als902.sv
- README: rtl/chips/ttl_74als902/README.md
- Notes:
  - (none)

### 74C903 - hex inverting PMOS buffer
- Status: [ ]
- Module: ttl_74c903
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C903
- RTL: rtl/chips/ttl_74c903/ttl_74c903.sv
- Testbench: tb/chips/ttl_74c903/tb_ttl_74c903.sv
- README: rtl/chips/ttl_74c903/README.md
- Notes:
  - (none)

### 74ALS903 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74als903
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector driver
- Pins: 14
- Datasheet/source: SN74ALS903
- RTL: rtl/chips/ttl_74als903/ttl_74als903.sv
- Testbench: tb/chips/ttl_74als903/tb_ttl_74als903.sv
- README: rtl/chips/ttl_74als903/README.md
- Notes:
  - (none)

### 74x904 - hex non-inverting PMOS buffer
- Status: [ ]
- Module: ttl_74x904
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C904
- RTL: rtl/chips/ttl_74x904/ttl_74x904.sv
- Testbench: tb/chips/ttl_74x904/tb_ttl_74x904.sv
- README: rtl/chips/ttl_74x904/README.md
- Notes:
  - (none)

### 74x905 - 12-bit successive approximation register
- Status: [ ]
- Module: ttl_74x905
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MM74C905
- RTL: rtl/chips/ttl_74x905/ttl_74x905.sv
- Testbench: tb/chips/ttl_74x905/tb_ttl_74x905.sv
- README: rtl/chips/ttl_74x905/README.md
- Notes:
  - (none)

### 74x906 - hex open drain n-channel buffers
- Status: [ ]
- Module: ttl_74x906
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector
- Pins: 14
- Datasheet/source: MM74C906
- RTL: rtl/chips/ttl_74x906/ttl_74x906.sv
- Testbench: tb/chips/ttl_74x906/tb_ttl_74x906.sv
- README: rtl/chips/ttl_74x906/README.md
- Notes:
  - (none)

### 74x907 - hex open drain p-channel buffers
- Status: [ ]
- Module: ttl_74x907
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C907
- RTL: rtl/chips/ttl_74x907/ttl_74x907.sv
- Testbench: tb/chips/ttl_74x907/tb_ttl_74x907.sv
- README: rtl/chips/ttl_74x907/README.md
- Notes:
  - (none)

### 74x908 - dual 2-input NAND 30 V / 250 mA relay driver
- Status: [ ]
- Module: ttl_74x908
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: MM74C908
- RTL: rtl/chips/ttl_74x908/ttl_74x908.sv
- Testbench: tb/chips/ttl_74x908/tb_ttl_74x908.sv
- README: rtl/chips/ttl_74x908/README.md
- Notes:
  - (none)

### 74x909 - quad voltage comparator
- Status: [ ]
- Module: ttl_74x909
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: analog
- Output features: open-collector
- Pins: 14
- Datasheet/source: MM74C909
- RTL: rtl/chips/ttl_74x909/ttl_74x909.sv
- Testbench: tb/chips/ttl_74x909/tb_ttl_74x909.sv
- README: rtl/chips/ttl_74x909/README.md
- Notes:
  - (none)

### 74x910 - 256-bit RAM (64x4)
- Status: [ ]
- Module: ttl_74x910
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: MM74C910
- RTL: rtl/chips/ttl_74x910/ttl_74x910.sv
- Testbench: tb/chips/ttl_74x910/tb_ttl_74x910.sv
- README: rtl/chips/ttl_74x910/README.md
- Notes:
  - (none)

### 74x911 - 4-digit expandable display controller
- Status: [ ]
- Module: ttl_74x911
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: MM74C911
- RTL: rtl/chips/ttl_74x911/ttl_74x911.sv
- Testbench: tb/chips/ttl_74x911/tb_ttl_74x911.sv
- README: rtl/chips/ttl_74x911/README.md
- Notes:
  - (none)

### 74x912 - 6-digit BCD display controller and driver
- Status: [ ]
- Module: ttl_74x912
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: MM74C912
- RTL: rtl/chips/ttl_74x912/ttl_74x912.sv
- Testbench: tb/chips/ttl_74x912/tb_ttl_74x912.sv
- README: rtl/chips/ttl_74x912/README.md
- Notes:
  - (none)

### 74x913 - 6-digit BCD display controller and driver, no decimal point
- Status: [ ]
- Module: ttl_74x913
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MM74C913
- RTL: rtl/chips/ttl_74x913/ttl_74x913.sv
- Testbench: tb/chips/ttl_74x913/tb_ttl_74x913.sv
- README: rtl/chips/ttl_74x913/README.md
- Notes:
  - (none)

### 74x914 - hex inverter gate, extended input voltage
- Status: [ ]
- Module: ttl_74x914
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: MM74C914
- RTL: rtl/chips/ttl_74x914/ttl_74x914.sv
- Testbench: tb/chips/ttl_74x914/tb_ttl_74x914.sv
- README: rtl/chips/ttl_74x914/README.md
- Notes:
  - (none)

### 74x915 - 7-segment to BCD converter
- Status: [ ]
- Module: ttl_74x915
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: MM74C915
- RTL: rtl/chips/ttl_74x915/ttl_74x915.sv
- Testbench: tb/chips/ttl_74x915/tb_ttl_74x915.sv
- README: rtl/chips/ttl_74x915/README.md
- Notes:
  - (none)

### 74x917 - 6-digit hex display controller and driver
- Status: [ ]
- Module: ttl_74x917
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: MM74C917
- RTL: rtl/chips/ttl_74x917/ttl_74x917.sv
- Testbench: tb/chips/ttl_74x917/tb_ttl_74x917.sv
- README: rtl/chips/ttl_74x917/README.md
- Notes:
  - (none)

### 74x918 - dual 2-input NAND 30 V / 250 mA relay driver
- Status: [ ]
- Module: ttl_74x918
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74C918
- RTL: rtl/chips/ttl_74x918/ttl_74x918.sv
- Testbench: tb/chips/ttl_74x918/tb_ttl_74x918.sv
- README: rtl/chips/ttl_74x918/README.md
- Notes:
  - (none)

### 74x920 - 1024-bit RAM (256x4), separate data inputs and outputs
- Status: [ ]
- Module: ttl_74x920
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 22
- Datasheet/source: MM74C920
- RTL: rtl/chips/ttl_74x920/ttl_74x920.sv
- Testbench: tb/chips/ttl_74x920/tb_ttl_74x920.sv
- README: rtl/chips/ttl_74x920/README.md
- Notes:
  - (none)

### 74x921 - 1024-bit RAM (256x4)
- Status: [ ]
- Module: ttl_74x921
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: MM74C921
- RTL: rtl/chips/ttl_74x921/ttl_74x921.sv
- Testbench: tb/chips/ttl_74x921/tb_ttl_74x921.sv
- README: rtl/chips/ttl_74x921/README.md
- Notes:
  - (none)

### 74x922 - 16-key encoder
- Status: [ ]
- Module: ttl_74x922
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: MM74C922
- RTL: rtl/chips/ttl_74x922/ttl_74x922.sv
- Testbench: tb/chips/ttl_74x922/tb_ttl_74x922.sv
- README: rtl/chips/ttl_74x922/README.md
- Notes:
  - (none)

### 74x923 - 20-key encoder
- Status: [ ]
- Module: ttl_74x923
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MM74C923
- RTL: rtl/chips/ttl_74x923/ttl_74x923.sv
- Testbench: tb/chips/ttl_74x923/tb_ttl_74x923.sv
- README: rtl/chips/ttl_74x923/README.md
- Notes:
  - (none)

### 74x925 - 4-digit counter/display driver
- Status: [ ]
- Module: ttl_74x925
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MM74C925
- RTL: rtl/chips/ttl_74x925/ttl_74x925.sv
- Testbench: tb/chips/ttl_74x925/tb_ttl_74x925.sv
- README: rtl/chips/ttl_74x925/README.md
- Notes:
  - (none)

### 74x926 - 4-digit decade counter/display driver, carry out and latch (up to 9999)
- Status: [ ]
- Module: ttl_74x926
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MM74C926
- RTL: rtl/chips/ttl_74x926/ttl_74x926.sv
- Testbench: tb/chips/ttl_74x926/tb_ttl_74x926.sv
- README: rtl/chips/ttl_74x926/README.md
- Notes:
  - (none)

### 74x927 - 4-digit timer counter/display driver (up to 9599, intended as time elapsed, i.e. 9:59.9 min)
- Status: [ ]
- Module: ttl_74x927
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MM74C927
- RTL: rtl/chips/ttl_74x927/ttl_74x927.sv
- Testbench: tb/chips/ttl_74x927/tb_ttl_74x927.sv
- README: rtl/chips/ttl_74x927/README.md
- Notes:
  - (none)

### 74x928 - 4-digit counter/display driver (up to 1999)
- Status: [ ]
- Module: ttl_74x928
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MM74C928
- RTL: rtl/chips/ttl_74x928/ttl_74x928.sv
- Testbench: tb/chips/ttl_74x928/tb_ttl_74x928.sv
- README: rtl/chips/ttl_74x928/README.md
- Notes:
  - (none)

### 74x929 - 1024-bit RAM (1024x1), single chip select
- Status: [ ]
- Module: ttl_74x929
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: MM74C929
- RTL: rtl/chips/ttl_74x929/ttl_74x929.sv
- Testbench: tb/chips/ttl_74x929/tb_ttl_74x929.sv
- README: rtl/chips/ttl_74x929/README.md
- Notes:
  - (none)

### 74x930 - 1024-bit RAM (1024x1), three chip selects
- Status: [ ]
- Module: ttl_74x930
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: MM74C930
- RTL: rtl/chips/ttl_74x930/ttl_74x930.sv
- Testbench: tb/chips/ttl_74x930/tb_ttl_74x930.sv
- README: rtl/chips/ttl_74x930/README.md
- Notes:
  - (none)

### 74x932 - phase comparator
- Status: [ ]
- Module: ttl_74x932
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: MM74C932
- RTL: rtl/chips/ttl_74x932/ttl_74x932.sv
- Testbench: tb/chips/ttl_74x932/tb_ttl_74x932.sv
- README: rtl/chips/ttl_74x932/README.md
- Notes:
  - (none)

### 74x933 - 7-bit address bus comparator
- Status: [ ]
- Module: ttl_74x933
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MM74C933
- RTL: rtl/chips/ttl_74x933/ttl_74x933.sv
- Testbench: tb/chips/ttl_74x933/tb_ttl_74x933.sv
- README: rtl/chips/ttl_74x933/README.md
- Notes:
  - (none)

### 74934 - ADC similar to ADC0829, see corresponding NSC datasheet
- Status: [ ]
- Module: ttl_74934
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 
- Datasheet/source: 
- RTL: rtl/chips/ttl_74934/ttl_74934.sv
- Testbench: tb/chips/ttl_74934/tb_ttl_74934.sv
- README: rtl/chips/ttl_74934/README.md
- Notes:
  - (none)

### 74x935 - ADC for 3.5-digit digital voltmeters, multiplexed 7-segment display outputs
- Status: [ ]
- Module: ttl_74x935
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 28
- Datasheet/source: MM74C935
- RTL: rtl/chips/ttl_74x935/ttl_74x935.sv
- Testbench: tb/chips/ttl_74x935/tb_ttl_74x935.sv
- README: rtl/chips/ttl_74x935/README.md
- Notes:
  - (none)

### 74x936 - ADC for 3.75-digit digital voltmeters, multiplexed 7-segment display outputs
- Status: [ ]
- Module: ttl_74x936
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 
- Datasheet/source: MM74C936
- RTL: rtl/chips/ttl_74x936/ttl_74x936.sv
- Testbench: tb/chips/ttl_74x936/tb_ttl_74x936.sv
- README: rtl/chips/ttl_74x936/README.md
- Notes:
  - (none)

### 74x937 - ADC for 3.5-digit digital voltmeters, multiplexed BCD outputs
- Status: [ ]
- Module: ttl_74x937
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 24
- Datasheet/source: MM74C937
- RTL: rtl/chips/ttl_74x937/ttl_74x937.sv
- Testbench: tb/chips/ttl_74x937/tb_ttl_74x937.sv
- README: rtl/chips/ttl_74x937/README.md
- Notes:
  - (none)

### 74x938 - ADC for 3.75-digit digital voltmeters, multiplexed BCD outputs
- Status: [ ]
- Module: ttl_74x938
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: 
- Pins: 24
- Datasheet/source: MM74C938
- RTL: rtl/chips/ttl_74x938/ttl_74x938.sv
- Testbench: tb/chips/ttl_74x938/tb_ttl_74x938.sv
- README: rtl/chips/ttl_74x938/README.md
- Notes:
  - (none)

### 74x940 - octal bus/line drivers/line receivers
- Status: [ ]
- Module: ttl_74x940
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: DM74S940
- RTL: rtl/chips/ttl_74x940/ttl_74x940.sv
- Testbench: tb/chips/ttl_74x940/tb_ttl_74x940.sv
- README: rtl/chips/ttl_74x940/README.md
- Notes:
  - (none)

### 74x941 - octal bus/line drivers/line receivers
- Status: [ ]
- Module: ttl_74x941
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: DM74S941
- RTL: rtl/chips/ttl_74x941/ttl_74x941.sv
- Testbench: tb/chips/ttl_74x941/tb_ttl_74x941.sv
- README: rtl/chips/ttl_74x941/README.md
- Notes:
  - (none)

### 74x942 - 300 baud Bell 103 modem (+/- 5 V supply)
- Status: [ ]
- Module: ttl_74x942
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MM74HC942
- RTL: rtl/chips/ttl_74x942/ttl_74x942.sv
- Testbench: tb/chips/ttl_74x942/tb_ttl_74x942.sv
- README: rtl/chips/ttl_74x942/README.md
- Notes:
  - (none)

### 74x943 - 300 baud Bell 103 modem (single 5 V supply)
- Status: [ ]
- Module: ttl_74x943
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MM74HC943
- RTL: rtl/chips/ttl_74x943/ttl_74x943.sv
- Testbench: tb/chips/ttl_74x943/tb_ttl_74x943.sv
- README: rtl/chips/ttl_74x943/README.md
- Notes:
  - (none)

### 74x945 - 4-digit up/down counter, decoder and LCD driver, output latch
- Status: [ ]
- Module: ttl_74x945
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: MM74C945
- RTL: rtl/chips/ttl_74x945/ttl_74x945.sv
- Testbench: tb/chips/ttl_74x945/tb_ttl_74x945.sv
- README: rtl/chips/ttl_74x945/README.md
- Notes:
  - (none)

### 74x946 - 4.5-digit counter, decoder and LCD driver, leading zero blanking
- Status: [ ]
- Module: ttl_74x946
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: MM74C946
- RTL: rtl/chips/ttl_74x946/ttl_74x946.sv
- Testbench: tb/chips/ttl_74x946/tb_ttl_74x946.sv
- README: rtl/chips/ttl_74x946/README.md
- Notes:
  - (none)

### 74x947 - 4-digit up/down counter, decoder and LCD driver, leading zero blanking
- Status: [ ]
- Module: ttl_74x947
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: MM74C947
- RTL: rtl/chips/ttl_74x947/ttl_74x947.sv
- Testbench: tb/chips/ttl_74x947/tb_ttl_74x947.sv
- README: rtl/chips/ttl_74x947/README.md
- Notes:
  - (none)

### 74x948 - 8-bit ADC with 16-channel analog multiplexer
- Status: [ ]
- Module: ttl_74x948
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: three-state
- Pins: 40
- Datasheet/source: MM74C948
- RTL: rtl/chips/ttl_74x948/ttl_74x948.sv
- Testbench: tb/chips/ttl_74x948/tb_ttl_74x948.sv
- README: rtl/chips/ttl_74x948/README.md
- Notes:
  - (none)

### 74x949 - 8-bit ADC with 8-channel analog multiplexer
- Status: [ ]
- Module: ttl_74x949
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: three-state
- Pins: 28
- Datasheet/source: MM74C949
- RTL: rtl/chips/ttl_74x949/ttl_74x949.sv
- Testbench: tb/chips/ttl_74x949/tb_ttl_74x949.sv
- README: rtl/chips/ttl_74x949/README.md
- Notes:
  - (none)

### 74x950 - 8-bit ADC with 8-channel analog multiplexer and sample and hold
- Status: [ ]
- Module: ttl_74x950
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: analog
- Output features: three-state
- Pins: 28
- Datasheet/source: MM74C950
- RTL: rtl/chips/ttl_74x950/ttl_74x950.sv
- Testbench: tb/chips/ttl_74x950/tb_ttl_74x950.sv
- README: rtl/chips/ttl_74x950/README.md
- Notes:
  - (none)

### 74x952 - dual rank 8-bit shift register, synchronous clear
- Status: [ ]
- Module: ttl_74x952
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: DM74LS952
- RTL: rtl/chips/ttl_74x952/ttl_74x952.sv
- Testbench: tb/chips/ttl_74x952/tb_ttl_74x952.sv
- README: rtl/chips/ttl_74x952/README.md
- Notes:
  - (none)

### 74C956 - 4-digit, 17-segment alpha-numeric LED display driver with memory and decoder
- Status: [ ]
- Module: ttl_74c956
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: MM74C956
- RTL: rtl/chips/ttl_74c956/ttl_74c956.sv
- Testbench: tb/chips/ttl_74c956/tb_ttl_74c956.sv
- README: rtl/chips/ttl_74c956/README.md
- Notes:
  - (none)

### 74BCT956 - octal bus transceiver and latch
- Status: [ ]
- Module: ttl_74bct956
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74BCT956
- RTL: rtl/chips/ttl_74bct956/ttl_74bct956.sv
- Testbench: tb/chips/ttl_74bct956/tb_ttl_74bct956.sv
- README: rtl/chips/ttl_74bct956/README.md
- Notes:
  - (none)

### 74x962 - dual rank 8-bit shift register, register exchange mode
- Status: [ ]
- Module: ttl_74x962
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: DM74LS962
- RTL: rtl/chips/ttl_74x962/ttl_74x962.sv
- Testbench: tb/chips/ttl_74x962/tb_ttl_74x962.sv
- README: rtl/chips/ttl_74x962/README.md
- Notes:
  - (none)

### 74x963 - dual rank 8-bit shift register, synchronous clear
- Status: [ ]
- Module: ttl_74x963
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS963
- RTL: rtl/chips/ttl_74x963/ttl_74x963.sv
- Testbench: tb/chips/ttl_74x963/tb_ttl_74x963.sv
- README: rtl/chips/ttl_74x963/README.md
- Notes:
  - (none)

### 74x964 - dual rank 8-bit shift register, synchronous and asynchronous clear
- Status: [ ]
- Module: ttl_74x964
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS964
- RTL: rtl/chips/ttl_74x964/ttl_74x964.sv
- Testbench: tb/chips/ttl_74x964/tb_ttl_74x964.sv
- README: rtl/chips/ttl_74x964/README.md
- Notes:
  - (none)

### 74x968 - controller/driver for 16k/64k/256k/1M dRAM
- Status: [ ]
- Module: ttl_74x968
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 52
- Datasheet/source: 74F968
- RTL: rtl/chips/ttl_74x968/ttl_74x968.sv
- Testbench: tb/chips/ttl_74x968/tb_ttl_74x968.sv
- README: rtl/chips/ttl_74x968/README.md
- Notes:
  - (none)

### 74x978 - octal flip-flop with serial scanner
- Status: [ ]
- Module: ttl_74x978
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74F978
- RTL: rtl/chips/ttl_74x978/ttl_74x978.sv
- Testbench: tb/chips/ttl_74x978/tb_ttl_74x978.sv
- README: rtl/chips/ttl_74x978/README.md
- Notes:
  - (none)

### 74x979 - 9-bit registered transceiver with parity generator/checker for FutureBus
- Status: [ ]
- Module: ttl_74x979
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74BCT979
- RTL: rtl/chips/ttl_74x979/ttl_74x979.sv
- Testbench: tb/chips/ttl_74x979/tb_ttl_74x979.sv
- README: rtl/chips/ttl_74x979/README.md
- Notes:
  - (none)

### 74x989 - 64-bit RAM (16x4), inverting output
- Status: [ ]
- Module: ttl_74x989
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: MM74C989
- RTL: rtl/chips/ttl_74x989/ttl_74x989.sv
- Testbench: tb/chips/ttl_74x989/tb_ttl_74x989.sv
- README: rtl/chips/ttl_74x989/README.md
- Notes:
  - (none)

### 74x990 - 8-bit D-type transparent read-back latch, non-inverting
- Status: [ ]
- Module: ttl_74x990
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS990
- RTL: rtl/chips/ttl_74x990/ttl_74x990.sv
- Testbench: tb/chips/ttl_74x990/tb_ttl_74x990.sv
- README: rtl/chips/ttl_74x990/README.md
- Notes:
  - (none)

### 74x991 - 8-bit D-type transparent read-back latch, inverting
- Status: [ ]
- Module: ttl_74x991
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS991
- RTL: rtl/chips/ttl_74x991/ttl_74x991.sv
- Testbench: tb/chips/ttl_74x991/tb_ttl_74x991.sv
- README: rtl/chips/ttl_74x991/README.md
- Notes:
  - (none)

### 74x992 - 9-bit D-type transparent read-back latch, non-inverting
- Status: [ ]
- Module: ttl_74x992
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS992
- RTL: rtl/chips/ttl_74x992/ttl_74x992.sv
- Testbench: tb/chips/ttl_74x992/tb_ttl_74x992.sv
- README: rtl/chips/ttl_74x992/README.md
- Notes:
  - (none)

### 74x993 - 9-bit D-type transparent read-back latch, inverting
- Status: [ ]
- Module: ttl_74x993
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS993
- RTL: rtl/chips/ttl_74x993/ttl_74x993.sv
- Testbench: tb/chips/ttl_74x993/tb_ttl_74x993.sv
- README: rtl/chips/ttl_74x993/README.md
- Notes:
  - (none)

### 74x994 - 10-bit D-type transparent read-back latch, non-inverting
- Status: [ ]
- Module: ttl_74x994
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS994
- RTL: rtl/chips/ttl_74x994/ttl_74x994.sv
- Testbench: tb/chips/ttl_74x994/tb_ttl_74x994.sv
- README: rtl/chips/ttl_74x994/README.md
- Notes:
  - (none)

### 74x995 - 10-bit D-type transparent read-back latch, inverting
- Status: [ ]
- Module: ttl_74x995
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS995
- RTL: rtl/chips/ttl_74x995/ttl_74x995.sv
- Testbench: tb/chips/ttl_74x995/tb_ttl_74x995.sv
- README: rtl/chips/ttl_74x995/README.md
- Notes:
  - (none)

### 74x996 - 8-bit D-type edge-triggered read-back latch
- Status: [ ]
- Module: ttl_74x996
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS996
- RTL: rtl/chips/ttl_74x996/ttl_74x996.sv
- Testbench: tb/chips/ttl_74x996/tb_ttl_74x996.sv
- README: rtl/chips/ttl_74x996/README.md
- Notes:
  - (none)

### 74x1000 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1000
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74AS1000A
- RTL: rtl/chips/ttl_74x1000/ttl_74x1000.sv
- Testbench: tb/chips/ttl_74x1000/tb_ttl_74x1000.sv
- README: rtl/chips/ttl_74x1000/README.md
- Notes:
  - (none)

### 74x1002 - quad 2-input NOR gate
- Status: [ ]
- Module: ttl_74x1002
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1002A
- RTL: rtl/chips/ttl_74x1002/ttl_74x1002.sv
- Testbench: tb/chips/ttl_74x1002/tb_ttl_74x1002.sv
- README: rtl/chips/ttl_74x1002/README.md
- Notes:
  - (none)

### 74x1003 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1003
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector driver
- Pins: 14
- Datasheet/source: SN74ALS1003A
- RTL: rtl/chips/ttl_74x1003/ttl_74x1003.sv
- Testbench: tb/chips/ttl_74x1003/tb_ttl_74x1003.sv
- README: rtl/chips/ttl_74x1003/README.md
- Notes:
  - (none)

### 74x1004 - hex inverting buffer
- Status: [ ]
- Module: ttl_74x1004
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1004
- RTL: rtl/chips/ttl_74x1004/ttl_74x1004.sv
- Testbench: tb/chips/ttl_74x1004/tb_ttl_74x1004.sv
- README: rtl/chips/ttl_74x1004/README.md
- Notes:
  - (none)

### 74x1005 - hex inverting buffer
- Status: [ ]
- Module: ttl_74x1005
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector driver
- Pins: 14
- Datasheet/source: SN74ALS1005
- RTL: rtl/chips/ttl_74x1005/ttl_74x1005.sv
- Testbench: tb/chips/ttl_74x1005/tb_ttl_74x1005.sv
- README: rtl/chips/ttl_74x1005/README.md
- Notes:
  - (none)

### 74x1008 - quad 2-input AND gate
- Status: [ ]
- Module: ttl_74x1008
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74AS1008A
- RTL: rtl/chips/ttl_74x1008/ttl_74x1008.sv
- Testbench: tb/chips/ttl_74x1008/tb_ttl_74x1008.sv
- README: rtl/chips/ttl_74x1008/README.md
- Notes:
  - (none)

### 74ALS1010 - triple 3-input NAND gate
- Status: [ ]
- Module: ttl_74als1010
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1010A
- RTL: rtl/chips/ttl_74als1010/ttl_74als1010.sv
- Testbench: tb/chips/ttl_74als1010/tb_ttl_74als1010.sv
- README: rtl/chips/ttl_74als1010/README.md
- Notes:
  - (none)

### 74AC1010 - 16x16-bit multiplier/accumulator
- Status: [ ]
- Module: ttl_74ac1010
- Aliases: 74ACT1010
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: 74AC1010
- RTL: rtl/chips/ttl_74ac1010/ttl_74ac1010.sv
- Testbench: tb/chips/ttl_74ac1010/tb_ttl_74ac1010.sv
- README: rtl/chips/ttl_74ac1010/README.md
- Notes:
  - (none)

### 74x1011 - triple 3-input AND gate
- Status: [ ]
- Module: ttl_74x1011
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1011A
- RTL: rtl/chips/ttl_74x1011/ttl_74x1011.sv
- Testbench: tb/chips/ttl_74x1011/tb_ttl_74x1011.sv
- README: rtl/chips/ttl_74x1011/README.md
- Notes:
  - (none)

### 74F1016 - 16-bit Schottky diode R-C bus termination array
- Status: [ ]
- Module: ttl_74f1016
- Aliases: none
- Source section: Larger footprints
- Units: 16
- Input features: 
- Output features: 
- Pins: (20)
- Datasheet/source: SN74F1016
- RTL: rtl/chips/ttl_74f1016/ttl_74f1016.sv
- Testbench: tb/chips/ttl_74f1016/tb_ttl_74f1016.sv
- README: rtl/chips/ttl_74f1016/README.md
- Notes:
  - (none)

### 74AC1016 - 16x16-bit multiplier
- Status: [ ]
- Module: ttl_74ac1016
- Aliases: 74ACT1016
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: 74AC1016
- RTL: rtl/chips/ttl_74ac1016/ttl_74ac1016.sv
- Testbench: tb/chips/ttl_74ac1016/tb_ttl_74ac1016.sv
- README: rtl/chips/ttl_74ac1016/README.md
- Notes:
  - (none)

### 74x1017 - 16x16-bit parallel multiplier
- Status: [ ]
- Module: ttl_74x1017
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: 74AC1017
- RTL: rtl/chips/ttl_74x1017/ttl_74x1017.sv
- Testbench: tb/chips/ttl_74x1017/tb_ttl_74x1017.sv
- README: rtl/chips/ttl_74x1017/README.md
- Notes:
  - (none)

### 74x1018 - 18-bit Schottky diode R-C bus termination array
- Status: [ ]
- Module: ttl_74x1018
- Aliases: none
- Source section: Larger footprints
- Units: 18
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74F1018
- RTL: rtl/chips/ttl_74x1018/ttl_74x1018.sv
- Testbench: tb/chips/ttl_74x1018/tb_ttl_74x1018.sv
- README: rtl/chips/ttl_74x1018/README.md
- Notes:
  - (none)

### 74x1020 - dual 4-input NAND gate
- Status: [ ]
- Module: ttl_74x1020
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1020A
- RTL: rtl/chips/ttl_74x1020/ttl_74x1020.sv
- Testbench: tb/chips/ttl_74x1020/tb_ttl_74x1020.sv
- README: rtl/chips/ttl_74x1020/README.md
- Notes:
  - (none)

### 74x1032 - quad 2-input OR gate
- Status: [ ]
- Module: ttl_74x1032
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74AS1032A
- RTL: rtl/chips/ttl_74x1032/ttl_74x1032.sv
- Testbench: tb/chips/ttl_74x1032/tb_ttl_74x1032.sv
- README: rtl/chips/ttl_74x1032/README.md
- Notes:
  - (none)

### 74x1034 - hex non-inverting buffer
- Status: [ ]
- Module: ttl_74x1034
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1034
- RTL: rtl/chips/ttl_74x1034/ttl_74x1034.sv
- Testbench: tb/chips/ttl_74x1034/tb_ttl_74x1034.sv
- README: rtl/chips/ttl_74x1034/README.md
- Notes:
  - (none)

### 74x1035 - hex non-inverting buffer
- Status: [ ]
- Module: ttl_74x1035
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: open-collector driver
- Pins: 14
- Datasheet/source: SN74ALS1035
- RTL: rtl/chips/ttl_74x1035/ttl_74x1035.sv
- Testbench: tb/chips/ttl_74x1035/tb_ttl_74x1035.sv
- README: rtl/chips/ttl_74x1035/README.md
- Notes:
  - (none)

### 74x1036 - quad 2-input NOR gate
- Status: [ ]
- Module: ttl_74x1036
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver
- Pins: 14
- Datasheet/source: SN74ALS1036
- RTL: rtl/chips/ttl_74x1036/ttl_74x1036.sv
- Testbench: tb/chips/ttl_74x1036/tb_ttl_74x1036.sv
- README: rtl/chips/ttl_74x1036/README.md
- Notes:
  - (none)

### 74x1050 - 12-bit Schottky diode bus termination array, clamp to GND
- Status: [ ]
- Module: ttl_74x1050
- Aliases: none
- Source section: Larger footprints
- Units: 12
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S1050
- RTL: rtl/chips/ttl_74x1050/ttl_74x1050.sv
- Testbench: tb/chips/ttl_74x1050/tb_ttl_74x1050.sv
- README: rtl/chips/ttl_74x1050/README.md
- Notes:
  - (none)

### 74x1051 - 12-bit Schottky diode bus termination array, clamp to GND/V
- Status: [ ]
- Module: ttl_74x1051
- Aliases: none
- Source section: Larger footprints
- Units: 12
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74S1051
- RTL: rtl/chips/ttl_74x1051/ttl_74x1051.sv
- Testbench: tb/chips/ttl_74x1051/tb_ttl_74x1051.sv
- README: rtl/chips/ttl_74x1051/README.md
- Notes:
  - (none)

### 74x1052 - 16-bit Schottky diode bus termination array, clamp to GND
- Status: [ ]
- Module: ttl_74x1052
- Aliases: none
- Source section: Larger footprints
- Units: 16
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74S1052
- RTL: rtl/chips/ttl_74x1052/ttl_74x1052.sv
- Testbench: tb/chips/ttl_74x1052/tb_ttl_74x1052.sv
- README: rtl/chips/ttl_74x1052/README.md
- Notes:
  - (none)

### 74x1053 - 16-bit Schottky diode bus termination array, clamp to GND/V
- Status: [ ]
- Module: ttl_74x1053
- Aliases: none
- Source section: Larger footprints
- Units: 16
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74S1053
- RTL: rtl/chips/ttl_74x1053/ttl_74x1053.sv
- Testbench: tb/chips/ttl_74x1053/tb_ttl_74x1053.sv
- README: rtl/chips/ttl_74x1053/README.md
- Notes:
  - (none)

### 74x1056 - 8-bit Schottky diode bus termination array, clamp to GND
- Status: [ ]
- Module: ttl_74x1056
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: 
- Pins: (16)
- Datasheet/source: SN74F1056
- RTL: rtl/chips/ttl_74x1056/ttl_74x1056.sv
- Testbench: tb/chips/ttl_74x1056/tb_ttl_74x1056.sv
- README: rtl/chips/ttl_74x1056/README.md
- Notes:
  - (none)

### 74x1071 - 10-bit bus termination array with bus-hold function
- Status: [ ]
- Module: ttl_74x1071
- Aliases: none
- Source section: Larger footprints
- Units: 10
- Input features: 
- Output features: 
- Pins: (14)
- Datasheet/source: SN74ACT1071
- RTL: rtl/chips/ttl_74x1071/ttl_74x1071.sv
- Testbench: tb/chips/ttl_74x1071/tb_ttl_74x1071.sv
- README: rtl/chips/ttl_74x1071/README.md
- Notes:
  - (none)

### 74x1073 - 16-bit bus termination array with bus-hold function
- Status: [ ]
- Module: ttl_74x1073
- Aliases: none
- Source section: Larger footprints
- Units: 16
- Input features: 
- Output features: 
- Pins: (20)
- Datasheet/source: SN74ACT1073
- RTL: rtl/chips/ttl_74x1073/ttl_74x1073.sv
- Testbench: tb/chips/ttl_74x1073/tb_ttl_74x1073.sv
- README: rtl/chips/ttl_74x1073/README.md
- Notes:
  - (none)

### 74x1074 - dual D negative edge triggered flip-flop, asynchronous preset and clear
- Status: [ ]
- Module: ttl_74x1074
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 74FR1074
- RTL: rtl/chips/ttl_74x1074/ttl_74x1074.sv
- Testbench: tb/chips/ttl_74x1074/tb_ttl_74x1074.sv
- README: rtl/chips/ttl_74x1074/README.md
- Notes:
  - (none)

### 74x1181 - 4-bit arithmetic logic unit
- Status: [ ]
- Module: ttl_74x1181
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74AS1181
- RTL: rtl/chips/ttl_74x1181/ttl_74x1181.sv
- Testbench: tb/chips/ttl_74x1181/tb_ttl_74x1181.sv
- README: rtl/chips/ttl_74x1181/README.md
- Notes:
  - (none)

### 74x1240 - octal buffer / line driver, inverting (lower-power version of 74x240)
- Status: [ ]
- Module: ttl_74x1240
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1240
- RTL: rtl/chips/ttl_74x1240/ttl_74x1240.sv
- Testbench: tb/chips/ttl_74x1240/tb_ttl_74x1240.sv
- README: rtl/chips/ttl_74x1240/README.md
- Notes:
  - (none)

### 74x1241 - octal buffer / line driver, non-inverting (lower-power version of 74x241)
- Status: [ ]
- Module: ttl_74x1241
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1241
- RTL: rtl/chips/ttl_74x1241/ttl_74x1241.sv
- Testbench: tb/chips/ttl_74x1241/tb_ttl_74x1241.sv
- README: rtl/chips/ttl_74x1241/README.md
- Notes:
  - (none)

### 74x1242 - quad bus transceiver, inverting (lower-power version of 74x242)
- Status: [ ]
- Module: ttl_74x1242
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74ALS1242
- RTL: rtl/chips/ttl_74x1242/ttl_74x1242.sv
- Testbench: tb/chips/ttl_74x1242/tb_ttl_74x1242.sv
- README: rtl/chips/ttl_74x1242/README.md
- Notes:
  - (none)

### 74x1243 - quad bus transceiver, non-inverting (lower-power version of 74x243)
- Status: [ ]
- Module: ttl_74x1243
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 14
- Datasheet/source: SN74ALS1243
- RTL: rtl/chips/ttl_74x1243/ttl_74x1243.sv
- Testbench: tb/chips/ttl_74x1243/tb_ttl_74x1243.sv
- README: rtl/chips/ttl_74x1243/README.md
- Notes:
  - (none)

### 74x1244 - octal buffer / driver, non-inverting (lower-power version of 74x244)
- Status: [ ]
- Module: ttl_74x1244
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1244
- RTL: rtl/chips/ttl_74x1244/ttl_74x1244.sv
- Testbench: tb/chips/ttl_74x1244/tb_ttl_74x1244.sv
- README: rtl/chips/ttl_74x1244/README.md
- Notes:
  - (none)

### 74x1245 - octal bus transceiver (lower-power version of 74x245)
- Status: [ ]
- Module: ttl_74x1245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1245A
- RTL: rtl/chips/ttl_74x1245/ttl_74x1245.sv
- Testbench: tb/chips/ttl_74x1245/tb_ttl_74x1245.sv
- README: rtl/chips/ttl_74x1245/README.md
- Notes:
  - (none)

### 74x1280 - 9-bit parity generator/checker with registered outputs
- Status: [ ]
- Module: ttl_74x1280
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: QS74FCT1280
- RTL: rtl/chips/ttl_74x1280/ttl_74x1280.sv
- Testbench: tb/chips/ttl_74x1280/tb_ttl_74x1280.sv
- README: rtl/chips/ttl_74x1280/README.md
- Notes:
  - (none)

### 74x1284 - parallel printer interface transceiver / buffer (IEEE 1284)
- Status: [ ]
- Module: ttl_74x1284
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74HCT1284
- RTL: rtl/chips/ttl_74x1284/ttl_74x1284.sv
- Testbench: tb/chips/ttl_74x1284/tb_ttl_74x1284.sv
- README: rtl/chips/ttl_74x1284/README.md
- Notes:
  - (none)

### 74x1394 - 2-bit GTLP transceiver with split LV-TTL port
- Status: [ ]
- Module: ttl_74x1394
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (16)
- Datasheet/source: SN74GTLP1394
- RTL: rtl/chips/ttl_74x1394/ttl_74x1394.sv
- Testbench: tb/chips/ttl_74x1394/tb_ttl_74x1394.sv
- README: rtl/chips/ttl_74x1394/README.md
- Notes:
  - (none)

### 74x1395 - Dual 1-bit GTLP transceiver with split LV-TTL port
- Status: [ ]
- Module: ttl_74x1395
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state and open-collector
- Pins: (20)
- Datasheet/source: SN74GTLP1395
- RTL: rtl/chips/ttl_74x1395/ttl_74x1395.sv
- Testbench: tb/chips/ttl_74x1395/tb_ttl_74x1395.sv
- README: rtl/chips/ttl_74x1395/README.md
- Notes:
  - (none)

### 74x1403 - 8-bit bus receiver plus 4-bit bus driver
- Status: [ ]
- Module: ttl_74x1403
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: (32)
- Datasheet/source: 74LVT1403
- RTL: rtl/chips/ttl_74x1403/ttl_74x1403.sv
- Testbench: tb/chips/ttl_74x1403/tb_ttl_74x1403.sv
- README: rtl/chips/ttl_74x1403/README.md
- Notes:
  - (none)

### 74x1404 - oscillator driver
- Status: [ ]
- Module: ttl_74x1404
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: 
- Pins: (8)
- Datasheet/source: SN74LVC1404
- RTL: rtl/chips/ttl_74x1404/ttl_74x1404.sv
- Testbench: tb/chips/ttl_74x1404/tb_ttl_74x1404.sv
- README: rtl/chips/ttl_74x1404/README.md
- Notes:
  - (none)

### 74x1604 - dual 8-bit transparent latch with output multiplexer
- Status: [ ]
- Module: ttl_74x1604
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: 74F1604
- RTL: rtl/chips/ttl_74x1604/ttl_74x1604.sv
- Testbench: tb/chips/ttl_74x1604/tb_ttl_74x1604.sv
- README: rtl/chips/ttl_74x1604/README.md
- Notes:
  - (none)

### 74x1612 - 18-bit LV-TTL-to-GTLP adjustable-edge-rate universal bus transceiver
- Status: [ ]
- Module: ttl_74x1612
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (64)
- Datasheet/source: SN74GTLPH1612
- RTL: rtl/chips/ttl_74x1612/ttl_74x1612.sv
- Testbench: tb/chips/ttl_74x1612/tb_ttl_74x1612.sv
- README: rtl/chips/ttl_74x1612/README.md
- Notes:
  - (none)

### 74ALS1616 - 16x16-bit multimode multiplier
- Status: [ ]
- Module: ttl_74als1616
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: SN74ALS1616
- RTL: rtl/chips/ttl_74als1616/ttl_74als1616.sv
- Testbench: tb/chips/ttl_74als1616/tb_ttl_74als1616.sv
- README: rtl/chips/ttl_74als1616/README.md
- Notes:
  - (none)

### 74GTLPH1616 - 17-bit LV-TTL-to-GTLP adjustable-edge-rate universal bus transceiver with buffered clock outputs
- Status: [ ]
- Module: ttl_74gtlph1616
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (64)
- Datasheet/source: SN74GTLPH1616
- RTL: rtl/chips/ttl_74gtlph1616/ttl_74gtlph1616.sv
- Testbench: tb/chips/ttl_74gtlph1616/tb_ttl_74gtlph1616.sv
- README: rtl/chips/ttl_74gtlph1616/README.md
- Notes:
  - (none)

### 74x1620 - octal bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x1620
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1620
- RTL: rtl/chips/ttl_74x1620/ttl_74x1620.sv
- Testbench: tb/chips/ttl_74x1620/tb_ttl_74x1620.sv
- README: rtl/chips/ttl_74x1620/README.md
- Notes:
  - (none)

### 74x1621 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x1621
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS1621
- RTL: rtl/chips/ttl_74x1621/ttl_74x1621.sv
- Testbench: tb/chips/ttl_74x1621/tb_ttl_74x1621.sv
- README: rtl/chips/ttl_74x1621/README.md
- Notes:
  - (none)

### 74x1622 - octal bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x1622
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS1622
- RTL: rtl/chips/ttl_74x1622/ttl_74x1622.sv
- Testbench: tb/chips/ttl_74x1622/tb_ttl_74x1622.sv
- README: rtl/chips/ttl_74x1622/README.md
- Notes:
  - (none)

### 74x1623 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x1623
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1623
- RTL: rtl/chips/ttl_74x1623/ttl_74x1623.sv
- Testbench: tb/chips/ttl_74x1623/tb_ttl_74x1623.sv
- README: rtl/chips/ttl_74x1623/README.md
- Notes:
  - (none)

### 74x1627 - 18-bit LV-TTL-to-GTLP adjustable-edge-rate bus transceiver with source synchronous clock outputs
- Status: [ ]
- Module: ttl_74x1627
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (64)
- Datasheet/source: SN74GTLPH1627
- RTL: rtl/chips/ttl_74x1627/ttl_74x1627.sv
- Testbench: tb/chips/ttl_74x1627/tb_ttl_74x1627.sv
- README: rtl/chips/ttl_74x1627/README.md
- Notes:
  - (none)

### 74x1631 - quad bus driver with complementary outputs
- Status: [ ]
- Module: ttl_74x1631
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: at=3-336}}
- RTL: rtl/chips/ttl_74x1631/ttl_74x1631.sv
- Testbench: tb/chips/ttl_74x1631/tb_ttl_74x1631.sv
- README: rtl/chips/ttl_74x1631/README.md
- Notes:
  - (none)

### 74x1638 - octal bus transceiver, inverting (lower-power version of 74x638)
- Status: [ ]
- Module: ttl_74x1638
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 20
- Datasheet/source: SN74ALS1638
- RTL: rtl/chips/ttl_74x1638/ttl_74x1638.sv
- Testbench: tb/chips/ttl_74x1638/tb_ttl_74x1638.sv
- README: rtl/chips/ttl_74x1638/README.md
- Notes:
  - (none)

### 74x1639 - octal bus transceiver, non-inverting (lower-power version of 74x639)
- Status: [ ]
- Module: ttl_74x1639
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 20
- Datasheet/source: SN74ALS1639
- RTL: rtl/chips/ttl_74x1639/ttl_74x1639.sv
- Testbench: tb/chips/ttl_74x1639/tb_ttl_74x1639.sv
- README: rtl/chips/ttl_74x1639/README.md
- Notes:
  - (none)

### 74x1640 - octal bus transceiver, inverting (lower-power version of 74x640)
- Status: [ ]
- Module: ttl_74x1640
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1640A
- RTL: rtl/chips/ttl_74x1640/ttl_74x1640.sv
- Testbench: tb/chips/ttl_74x1640/tb_ttl_74x1640.sv
- README: rtl/chips/ttl_74x1640/README.md
- Notes:
  - (none)

### 74x1641 - octal bus transceiver, non-inverting (lower-power version of 74x641)
- Status: [ ]
- Module: ttl_74x1641
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS641
- RTL: rtl/chips/ttl_74x1641/ttl_74x1641.sv
- Testbench: tb/chips/ttl_74x1641/tb_ttl_74x1641.sv
- README: rtl/chips/ttl_74x1641/README.md
- Notes:
  - (none)

### 74x1642 - octal bus transceiver, inverting (lower-power version of 74x642)
- Status: [ ]
- Module: ttl_74x1642
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS642
- RTL: rtl/chips/ttl_74x1642/ttl_74x1642.sv
- Testbench: tb/chips/ttl_74x1642/tb_ttl_74x1642.sv
- README: rtl/chips/ttl_74x1642/README.md
- Notes:
  - (none)

### 74x1643 - octal bus transceiver, inverting and non-inverting (lower-power version of 74x643)
- Status: [ ]
- Module: ttl_74x1643
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS643
- RTL: rtl/chips/ttl_74x1643/ttl_74x1643.sv
- Testbench: tb/chips/ttl_74x1643/tb_ttl_74x1643.sv
- README: rtl/chips/ttl_74x1643/README.md
- Notes:
  - (none)

### 74x1644 - octal bus transceiver, inverting and non-inverting (lower-power version of 74x644)
- Status: [ ]
- Module: ttl_74x1644
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: SN74ALS644
- RTL: rtl/chips/ttl_74x1644/ttl_74x1644.sv
- Testbench: tb/chips/ttl_74x1644/tb_ttl_74x1644.sv
- README: rtl/chips/ttl_74x1644/README.md
- Notes:
  - (none)

### 74ALS1645 - octal bus transceiver, non-inverting (lower-power version of 74x645)
- Status: [ ]
- Module: ttl_74als1645
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74ALS1645A
- RTL: rtl/chips/ttl_74als1645/ttl_74als1645.sv
- Testbench: tb/chips/ttl_74als1645/tb_ttl_74als1645.sv
- README: rtl/chips/ttl_74als1645/README.md
- Notes:
  - (none)

### 74GTLPH1645 - 16-bit LV-TTL-to-GTLP adjustable-edge-rate bus transceiver
- Status: [ ]
- Module: ttl_74gtlph1645
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (56)
- Datasheet/source: SN74GTLPH1645
- RTL: rtl/chips/ttl_74gtlph1645/ttl_74gtlph1645.sv
- Testbench: tb/chips/ttl_74gtlph1645/tb_ttl_74gtlph1645.sv
- README: rtl/chips/ttl_74gtlph1645/README.md
- Notes:
  - (none)

### 74x1650 - dual 9-bit Futurebus universal storage transceiver with split TTL I/O
- Status: [ ]
- Module: ttl_74x1650
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state and open-collector
- Pins: (100)
- Datasheet/source: SN74FB1650
- RTL: rtl/chips/ttl_74x1650/ttl_74x1650.sv
- Testbench: tb/chips/ttl_74x1650/tb_ttl_74x1650.sv
- README: rtl/chips/ttl_74x1650/README.md
- Notes:
  - (none)

### 74x1651 - 9-bit and 8-bit Futurebus universal storage transceivers with delayed buffered clock with split TTL I/O
- Status: [ ]
- Module: ttl_74x1651
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state and open-collector
- Pins: (100)
- Datasheet/source: SN74FB1651
- RTL: rtl/chips/ttl_74x1651/ttl_74x1651.sv
- Testbench: tb/chips/ttl_74x1651/tb_ttl_74x1651.sv
- README: rtl/chips/ttl_74x1651/README.md
- Notes:
  - (none)

### 74x1653 - 9-bit and 8-bit Futurebus universal storage transceivers with delayed buffered clock with split 3.3V TTL I/O
- Status: [ ]
- Module: ttl_74x1653
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state and open-collector
- Pins: (100)
- Datasheet/source: SN74FB1653
- RTL: rtl/chips/ttl_74x1653/ttl_74x1653.sv
- Testbench: tb/chips/ttl_74x1653/tb_ttl_74x1653.sv
- README: rtl/chips/ttl_74x1653/README.md
- Notes:
  - (none)

### 74x1655 - dual 8-bit GTL universal storage transceivers with live insertion
- Status: [ ]
- Module: ttl_74x1655
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state and open-collector
- Pins: (64)
- Datasheet/source: SN74GTL1655
- RTL: rtl/chips/ttl_74x1655/ttl_74x1655.sv
- Testbench: tb/chips/ttl_74x1655/tb_ttl_74x1655.sv
- README: rtl/chips/ttl_74x1655/README.md
- Notes:
  - (none)

### 74x1760 - 10-bit 4-way latched address multiplexer
- Status: [ ]
- Module: ttl_74x1760
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: 74F1760
- RTL: rtl/chips/ttl_74x1760/ttl_74x1760.sv
- Testbench: tb/chips/ttl_74x1760/tb_ttl_74x1760.sv
- README: rtl/chips/ttl_74x1760/README.md
- Notes:
  - (none)

### 74x1761 - dRAM and interrupt vector controller
- Status: [ ]
- Module: ttl_74x1761
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74F1761
- RTL: rtl/chips/ttl_74x1761/ttl_74x1761.sv
- Testbench: tb/chips/ttl_74x1761/tb_ttl_74x1761.sv
- README: rtl/chips/ttl_74x1761/README.md
- Notes:
  - (none)

### 74x1762 - dRAM address controller
- Status: [ ]
- Module: ttl_74x1762
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 40
- Datasheet/source: 74F1762
- RTL: rtl/chips/ttl_74x1762/ttl_74x1762.sv
- Testbench: tb/chips/ttl_74x1762/tb_ttl_74x1762.sv
- README: rtl/chips/ttl_74x1762/README.md
- Notes:
  - (none)

### 74x1763 - single-port dRAM controller
- Status: [ ]
- Module: ttl_74x1763
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74F1763
- RTL: rtl/chips/ttl_74x1763/ttl_74x1763.sv
- Testbench: tb/chips/ttl_74x1763/tb_ttl_74x1763.sv
- README: rtl/chips/ttl_74x1763/README.md
- Notes:
  - (none)

### 74x1764 - dual-port dRAM controller
- Status: [ ]
- Module: ttl_74x1764
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74F1764
- RTL: rtl/chips/ttl_74x1764/ttl_74x1764.sv
- Testbench: tb/chips/ttl_74x1764/tb_ttl_74x1764.sv
- README: rtl/chips/ttl_74x1764/README.md
- Notes:
  - (none)

### 74x1765 - dual-port dRAM controller with address latch
- Status: [ ]
- Module: ttl_74x1765
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74F1765
- RTL: rtl/chips/ttl_74x1765/ttl_74x1765.sv
- Testbench: tb/chips/ttl_74x1765/tb_ttl_74x1765.sv
- README: rtl/chips/ttl_74x1765/README.md
- Notes:
  - (none)

### 74x1766 - burst mode dRAM controller
- Status: [ ]
- Module: ttl_74x1766
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: 74F1766
- RTL: rtl/chips/ttl_74x1766/ttl_74x1766.sv
- Testbench: tb/chips/ttl_74x1766/tb_ttl_74x1766.sv
- README: rtl/chips/ttl_74x1766/README.md
- Notes:
  - (none)

### 74x1779 - 8-bit bidirectional binary counter
- Status: [ ]
- Module: ttl_74x1779
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: 74F1779
- RTL: rtl/chips/ttl_74x1779/ttl_74x1779.sv
- Testbench: tb/chips/ttl_74x1779/tb_ttl_74x1779.sv
- README: rtl/chips/ttl_74x1779/README.md
- Notes:
  - (none)

### 74x1801 - FM, MFM, and DM encoder / decoder, data rates up to 10 MHz
- Status: [ ]
- Module: ttl_74x1801
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74LS1801
- RTL: rtl/chips/ttl_74x1801/ttl_74x1801.sv
- Testbench: tb/chips/ttl_74x1801/tb_ttl_74x1801.sv
- README: rtl/chips/ttl_74x1801/README.md
- Notes:
  - (none)

### 74x1802 - SerDes with ECC and CRC, data rates up to 10 MHz
- Status: [ ]
- Module: ttl_74x1802
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: 74LS1802
- RTL: rtl/chips/ttl_74x1802/ttl_74x1802.sv
- Testbench: tb/chips/ttl_74x1802/tb_ttl_74x1802.sv
- README: rtl/chips/ttl_74x1802/README.md
- Notes:
  - (none)

### 74x1803 - quad clock driver
- Status: [ ]
- Module: ttl_74x1803
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MC74F1803
- RTL: rtl/chips/ttl_74x1803/ttl_74x1803.sv
- Testbench: tb/chips/ttl_74x1803/tb_ttl_74x1803.sv
- README: rtl/chips/ttl_74x1803/README.md
- Notes:
  - (none)

### 74x1804 - hex 2-input NAND
- Status: [ ]
- Module: ttl_74x1804
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: DM74AS1804
- RTL: rtl/chips/ttl_74x1804/ttl_74x1804.sv
- Testbench: tb/chips/ttl_74x1804/tb_ttl_74x1804.sv
- README: rtl/chips/ttl_74x1804/README.md
- Notes:
  - (none)

### 74x1805 - hex 2-input NOR
- Status: [ ]
- Module: ttl_74x1805
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: DM74AS1805
- RTL: rtl/chips/ttl_74x1805/ttl_74x1805.sv
- Testbench: tb/chips/ttl_74x1805/tb_ttl_74x1805.sv
- README: rtl/chips/ttl_74x1805/README.md
- Notes:
  - (none)

### 74x1808 - hex 2-input AND
- Status: [ ]
- Module: ttl_74x1808
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: DM74AS1808
- RTL: rtl/chips/ttl_74x1808/ttl_74x1808.sv
- Testbench: tb/chips/ttl_74x1808/tb_ttl_74x1808.sv
- README: rtl/chips/ttl_74x1808/README.md
- Notes:
  - (none)

### 74x1811 - FM, MFM, and DM encoder / decoder, data rates up to 20 MHz
- Status: [ ]
- Module: ttl_74x1811
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: 74LS1811
- RTL: rtl/chips/ttl_74x1811/ttl_74x1811.sv
- Testbench: tb/chips/ttl_74x1811/tb_ttl_74x1811.sv
- README: rtl/chips/ttl_74x1811/README.md
- Notes:
  - (none)

### 74x1812 - SerDes with ECC and CRC, data rates up to 30 MHz
- Status: [ ]
- Module: ttl_74x1812
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: 74LS1812
- RTL: rtl/chips/ttl_74x1812/ttl_74x1812.sv
- Testbench: tb/chips/ttl_74x1812/tb_ttl_74x1812.sv
- README: rtl/chips/ttl_74x1812/README.md
- Notes:
  - (none)

### 74x1821 - 10-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x1821
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS1821
- RTL: rtl/chips/ttl_74x1821/ttl_74x1821.sv
- Testbench: tb/chips/ttl_74x1821/tb_ttl_74x1821.sv
- README: rtl/chips/ttl_74x1821/README.md
- Notes:
  - (none)

### 74x1823 - 9-bit bus interface flip-flops with clear
- Status: [ ]
- Module: ttl_74x1823
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS1823
- RTL: rtl/chips/ttl_74x1823/ttl_74x1823.sv
- Testbench: tb/chips/ttl_74x1823/tb_ttl_74x1823.sv
- README: rtl/chips/ttl_74x1823/README.md
- Notes:
  - (none)

### 74x1832 - hex 2-input OR
- Status: [ ]
- Module: ttl_74x1832
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: DM74ALS1832
- RTL: rtl/chips/ttl_74x1832/ttl_74x1832.sv
- Testbench: tb/chips/ttl_74x1832/tb_ttl_74x1832.sv
- README: rtl/chips/ttl_74x1832/README.md
- Notes:
  - (none)

### 74x1841 - 10-bit bus interface transparent latches
- Status: [ ]
- Module: ttl_74x1841
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS1841
- RTL: rtl/chips/ttl_74x1841/ttl_74x1841.sv
- Testbench: tb/chips/ttl_74x1841/tb_ttl_74x1841.sv
- README: rtl/chips/ttl_74x1841/README.md
- Notes:
  - (none)

### 74x1843 - 9-bit bus interface transparent latches with clear
- Status: [ ]
- Module: ttl_74x1843
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74AS1843
- RTL: rtl/chips/ttl_74x1843/ttl_74x1843.sv
- Testbench: tb/chips/ttl_74x1843/tb_ttl_74x1843.sv
- README: rtl/chips/ttl_74x1843/README.md
- Notes:
  - (none)

### 74x2000 - direction discriminator with microprocessor interface
- Status: [ ]
- Module: ttl_74x2000
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74LS2000
- RTL: rtl/chips/ttl_74x2000/ttl_74x2000.sv
- Testbench: tb/chips/ttl_74x2000/tb_ttl_74x2000.sv
- README: rtl/chips/ttl_74x2000/README.md
- Notes:
  - (none)

### 74x2003 - 8-bit level translator
- Status: [ ]
- Module: ttl_74x2003
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (20)
- Datasheet/source: SN74GTL2003
- RTL: rtl/chips/ttl_74x2003/ttl_74x2003.sv
- Testbench: tb/chips/ttl_74x2003/tb_ttl_74x2003.sv
- README: rtl/chips/ttl_74x2003/README.md
- Notes:
  - (none)

### 74x2006 - 13-bit GTL to 3.3V TTL level translator
- Status: [ ]
- Module: ttl_74x2006
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: (28)
- Datasheet/source: SN74GTL2006
- RTL: rtl/chips/ttl_74x2006/ttl_74x2006.sv
- Testbench: tb/chips/ttl_74x2006/tb_ttl_74x2006.sv
- README: rtl/chips/ttl_74x2006/README.md
- Notes:
  - (none)

### 74x2007 - 12-bit GTL to 3.3V TTL level translator
- Status: [ ]
- Module: ttl_74x2007
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: (28)
- Datasheet/source: SN74GTL2007
- RTL: rtl/chips/ttl_74x2007/ttl_74x2007.sv
- Testbench: tb/chips/ttl_74x2007/tb_ttl_74x2007.sv
- README: rtl/chips/ttl_74x2007/README.md
- Notes:
  - (none)

### 74x2010 - 10-bit level translator
- Status: [ ]
- Module: ttl_74x2010
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74GTL2010
- RTL: rtl/chips/ttl_74x2010/ttl_74x2010.sv
- Testbench: tb/chips/ttl_74x2010/tb_ttl_74x2010.sv
- README: rtl/chips/ttl_74x2010/README.md
- Notes:
  - (none)

### 74x2014 - 4-bit GTL to TTL transceiver
- Status: [ ]
- Module: ttl_74x2014
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (14)
- Datasheet/source: SN74GTL2014
- RTL: rtl/chips/ttl_74x2014/ttl_74x2014.sv
- Testbench: tb/chips/ttl_74x2014/tb_ttl_74x2014.sv
- README: rtl/chips/ttl_74x2014/README.md
- Notes:
  - (none)

### 74x2031 - 9-bit Futurebus address/data transceiver
- Status: [ ]
- Module: ttl_74x2031
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74FB2031
- RTL: rtl/chips/ttl_74x2031/ttl_74x2031.sv
- Testbench: tb/chips/ttl_74x2031/tb_ttl_74x2031.sv
- README: rtl/chips/ttl_74x2031/README.md
- Notes:
  - (none)

### 74x2032 - 9-bit Futurebus competition transceiver
- Status: [ ]
- Module: ttl_74x2032
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74FB2032
- RTL: rtl/chips/ttl_74x2032/ttl_74x2032.sv
- Testbench: tb/chips/ttl_74x2032/tb_ttl_74x2032.sv
- README: rtl/chips/ttl_74x2032/README.md
- Notes:
  - (none)

### 74FB2033 - 8-bit Futurebus registered transceiver with split TTL I/O
- Status: [ ]
- Module: ttl_74fb2033
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (52)
- Datasheet/source: SN74FB2033
- RTL: rtl/chips/ttl_74fb2033/ttl_74fb2033.sv
- Testbench: tb/chips/ttl_74fb2033/tb_ttl_74fb2033.sv
- README: rtl/chips/ttl_74fb2033/README.md
- Notes:
  - (none)

### 74GTLP2033 - 8-bit GTLP registered transceiver with split LV-TTL I/O
- Status: [ ]
- Module: ttl_74gtlp2033
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74GTLP2033
- RTL: rtl/chips/ttl_74gtlp2033/ttl_74gtlp2033.sv
- Testbench: tb/chips/ttl_74gtlp2033/tb_ttl_74gtlp2033.sv
- README: rtl/chips/ttl_74gtlp2033/README.md
- Notes:
  - (none)

### 74x2034 - 8-bit GTLP adjustable-edge-rate registered transceiver with split LV-TTL I/O
- Status: [ ]
- Module: ttl_74x2034
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74GTLP2034
- RTL: rtl/chips/ttl_74x2034/ttl_74x2034.sv
- Testbench: tb/chips/ttl_74x2034/tb_ttl_74x2034.sv
- README: rtl/chips/ttl_74x2034/README.md
- Notes:
  - (none)

### 74x2040 - 8-bit Futurebus transceiver with split TTL I/O
- Status: [ ]
- Module: ttl_74x2040
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (48)
- Datasheet/source: SN74FB2040
- RTL: rtl/chips/ttl_74x2040/ttl_74x2040.sv
- Testbench: tb/chips/ttl_74x2040/tb_ttl_74x2040.sv
- README: rtl/chips/ttl_74x2040/README.md
- Notes:
  - (none)

### 74x2041 - 7-bit Futurebus transceiver with split TTL I/O
- Status: [ ]
- Module: ttl_74x2041
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (52)
- Datasheet/source: SN74FB2041
- RTL: rtl/chips/ttl_74x2041/ttl_74x2041.sv
- Testbench: tb/chips/ttl_74x2041/tb_ttl_74x2041.sv
- README: rtl/chips/ttl_74x2041/README.md
- Notes:
  - (none)

### 74x2107 - 12-bit GTL to 3.3V TTL level translator
- Status: [ ]
- Module: ttl_74x2107
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: (28)
- Datasheet/source: SN74GTL2107
- RTL: rtl/chips/ttl_74x2107/ttl_74x2107.sv
- Testbench: tb/chips/ttl_74x2107/tb_ttl_74x2107.sv
- README: rtl/chips/ttl_74x2107/README.md
- Notes:
  - (none)

### 74x2125 - quad bus buffer
- Status: [ ]
- Module: ttl_74x2125
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (14)
- Datasheet/source: TC74VCX2125
- RTL: rtl/chips/ttl_74x2125/ttl_74x2125.sv
- Testbench: tb/chips/ttl_74x2125/tb_ttl_74x2125.sv
- README: rtl/chips/ttl_74x2125/README.md
- Notes:
  - (none)

### 74x2140 - 8k x 18 cache data RAM
- Status: [ ]
- Module: ttl_74x2140
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (52)
- Datasheet/source: SN74ACT2140A
- RTL: rtl/chips/ttl_74x2140/ttl_74x2140.sv
- Testbench: tb/chips/ttl_74x2140/tb_ttl_74x2140.sv
- README: rtl/chips/ttl_74x2140/README.md
- Notes:
  - (none)

### 74x2150 - 512 x 8 cache address comparator
- Status: [ ]
- Module: ttl_74x2150
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ACT2150A
- RTL: rtl/chips/ttl_74x2150/ttl_74x2150.sv
- Testbench: tb/chips/ttl_74x2150/tb_ttl_74x2150.sv
- README: rtl/chips/ttl_74x2150/README.md
- Notes:
  - (none)

### 74ACT2151 - 1k x 11 cache address comparator
- Status: [ ]
- Module: ttl_74act2151
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT2151
- RTL: rtl/chips/ttl_74act2151/ttl_74act2151.sv
- Testbench: tb/chips/ttl_74act2151/tb_ttl_74act2151.sv
- README: rtl/chips/ttl_74act2151/README.md
- Notes:
  - (none)

### 74FCT2151 - 8-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74fct2151
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: (16)
- Datasheet/source: CD74FCT2151
- RTL: rtl/chips/ttl_74fct2151/ttl_74fct2151.sv
- Testbench: tb/chips/ttl_74fct2151/tb_ttl_74fct2151.sv
- README: rtl/chips/ttl_74fct2151/README.md
- Notes:
  - (none)

### 74x2152 - 2k x 8 cache address comparator
- Status: [ ]
- Module: ttl_74x2152
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT2152A
- RTL: rtl/chips/ttl_74x2152/ttl_74x2152.sv
- Testbench: tb/chips/ttl_74x2152/tb_ttl_74x2152.sv
- README: rtl/chips/ttl_74x2152/README.md
- Notes:
  - (none)

### 74ACT2153 - 1k x 11 cache address comparator
- Status: [ ]
- Module: ttl_74act2153
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 28
- Datasheet/source: SN74ACT2153
- RTL: rtl/chips/ttl_74act2153/ttl_74act2153.sv
- Testbench: tb/chips/ttl_74act2153/tb_ttl_74act2153.sv
- README: rtl/chips/ttl_74act2153/README.md
- Notes:
  - (none)

### 74FCT2153 - dual 4-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74fct2153
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 25 Ω series resistor
- Pins: (16)
- Datasheet/source: CD74FCT2153
- RTL: rtl/chips/ttl_74fct2153/ttl_74fct2153.sv
- Testbench: tb/chips/ttl_74fct2153/tb_ttl_74fct2153.sv
- README: rtl/chips/ttl_74fct2153/README.md
- Notes:
  - (none)

### 74x2154 - 2k x 8 cache address comparator
- Status: [ ]
- Module: ttl_74x2154
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 28
- Datasheet/source: SN74ACT2154A
- RTL: rtl/chips/ttl_74x2154/ttl_74x2154.sv
- Testbench: tb/chips/ttl_74x2154/tb_ttl_74x2154.sv
- README: rtl/chips/ttl_74x2154/README.md
- Notes:
  - (none)

### 74x2155 - 2k x 8 burst cache address comparator
- Status: [ ]
- Module: ttl_74x2155
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2155
- RTL: rtl/chips/ttl_74x2155/ttl_74x2155.sv
- Testbench: tb/chips/ttl_74x2155/tb_ttl_74x2155.sv
- README: rtl/chips/ttl_74x2155/README.md
- Notes:
  - (none)

### 74x2156 - 16k x 4 burst cache address comparator
- Status: [ ]
- Module: ttl_74x2156
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2156
- RTL: rtl/chips/ttl_74x2156/ttl_74x2156.sv
- Testbench: tb/chips/ttl_74x2156/tb_ttl_74x2156.sv
- README: rtl/chips/ttl_74x2156/README.md
- Notes:
  - (none)

### 74ACT2157 - 2k x 16 cache address comparator
- Status: [ ]
- Module: ttl_74act2157
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2157
- RTL: rtl/chips/ttl_74act2157/ttl_74act2157.sv
- Testbench: tb/chips/ttl_74act2157/tb_ttl_74act2157.sv
- README: rtl/chips/ttl_74act2157/README.md
- Notes:
  - (none)

### 74FCT2157 - quad 2-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74fct2157
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 25 Ω series resistor
- Pins: (16)
- Datasheet/source: CD74FCT2157
- RTL: rtl/chips/ttl_74fct2157/ttl_74fct2157.sv
- Testbench: tb/chips/ttl_74fct2157/tb_ttl_74fct2157.sv
- README: rtl/chips/ttl_74fct2157/README.md
- Notes:
  - (none)

### 74x2158 - 8k x 9 cache address comparator
- Status: [ ]
- Module: ttl_74x2158
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2158
- RTL: rtl/chips/ttl_74x2158/ttl_74x2158.sv
- Testbench: tb/chips/ttl_74x2158/tb_ttl_74x2158.sv
- README: rtl/chips/ttl_74x2158/README.md
- Notes:
  - (none)

### 74x2159 - 8k x 9 cache address comparator
- Status: [ ]
- Module: ttl_74x2159
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2159
- RTL: rtl/chips/ttl_74x2159/ttl_74x2159.sv
- Testbench: tb/chips/ttl_74x2159/tb_ttl_74x2159.sv
- README: rtl/chips/ttl_74x2159/README.md
- Notes:
  - (none)

### 74x2160 - 8k x 4 2-way cache address comparator
- Status: [ ]
- Module: ttl_74x2160
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (32)
- Datasheet/source: SN74ACT2160
- RTL: rtl/chips/ttl_74x2160/ttl_74x2160.sv
- Testbench: tb/chips/ttl_74x2160/tb_ttl_74x2160.sv
- README: rtl/chips/ttl_74x2160/README.md
- Notes:
  - (none)

### 74x2161 - synchronous presettable 4-bit binary counter, asynchronous clear
- Status: [ ]
- Module: ttl_74x2161
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: 16
- Datasheet/source: QS74FCT2161T
- RTL: rtl/chips/ttl_74x2161/ttl_74x2161.sv
- Testbench: tb/chips/ttl_74x2161/tb_ttl_74x2161.sv
- README: rtl/chips/ttl_74x2161/README.md
- Notes:
  - (none)

### 74ACT2163 - 16k x 5 cache address comparator
- Status: [ ]
- Module: ttl_74act2163
- Aliases: 74BCT2163
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (32)
- Datasheet/source: SN74ACT2163
- RTL: rtl/chips/ttl_74act2163/ttl_74act2163.sv
- Testbench: tb/chips/ttl_74act2163/tb_ttl_74act2163.sv
- README: rtl/chips/ttl_74act2163/README.md
- Notes:
  - (none)

### 74FCT2163 - synchronous presettable 4-bit binary counter, synchronous clear
- Status: [ ]
- Module: ttl_74fct2163
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: 16
- Datasheet/source: QS74FCT2163T
- RTL: rtl/chips/ttl_74fct2163/ttl_74fct2163.sv
- Testbench: tb/chips/ttl_74fct2163/tb_ttl_74fct2163.sv
- README: rtl/chips/ttl_74fct2163/README.md
- Notes:
  - (none)

### 74x2164 - 16k x 5 cache address comparator
- Status: [ ]
- Module: ttl_74x2164
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (32)
- Datasheet/source: SN74ACT2164
- RTL: rtl/chips/ttl_74x2164/ttl_74x2164.sv
- Testbench: tb/chips/ttl_74x2164/tb_ttl_74x2164.sv
- README: rtl/chips/ttl_74x2164/README.md
- Notes:
  - (none)

### 74x2166 - 16k x 5 cache address comparator with input latches
- Status: [ ]
- Module: ttl_74x2166
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (32)
- Datasheet/source: SN74BCT2166
- RTL: rtl/chips/ttl_74x2166/ttl_74x2166.sv
- Testbench: tb/chips/ttl_74x2166/tb_ttl_74x2166.sv
- README: rtl/chips/ttl_74x2166/README.md
- Notes:
  - (none)

### 74x2191 - synchronous presettable 4-bit binary up/down counter, up/down direction pin
- Status: [ ]
- Module: ttl_74x2191
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: 16
- Datasheet/source: QS74FCT2191T
- RTL: rtl/chips/ttl_74x2191/ttl_74x2191.sv
- Testbench: tb/chips/ttl_74x2191/tb_ttl_74x2191.sv
- README: rtl/chips/ttl_74x2191/README.md
- Notes:
  - (none)

### 74x2193 - synchronous presettable 4-bit binary counter, separate up/down clocks
- Status: [ ]
- Module: ttl_74x2193
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: 16
- Datasheet/source: QS74FCT2193T
- RTL: rtl/chips/ttl_74x2193/ttl_74x2193.sv
- Testbench: tb/chips/ttl_74x2193/tb_ttl_74x2193.sv
- README: rtl/chips/ttl_74x2193/README.md
- Notes:
  - (none)

### 74x2226 - dual 64-bit FIFO memories (64x1)
- Status: [ ]
- Module: ttl_74x2226
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74ACT2226
- RTL: rtl/chips/ttl_74x2226/ttl_74x2226.sv
- Testbench: tb/chips/ttl_74x2226/tb_ttl_74x2226.sv
- README: rtl/chips/ttl_74x2226/README.md
- Notes:
  - (none)

### 74x2227 - dual 64-bit FIFO memories (64x1)
- Status: [ ]
- Module: ttl_74x2227
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: (28)
- Datasheet/source: SN74ACT2227
- RTL: rtl/chips/ttl_74x2227/ttl_74x2227.sv
- Testbench: tb/chips/ttl_74x2227/tb_ttl_74x2227.sv
- README: rtl/chips/ttl_74x2227/README.md
- Notes:
  - (none)

### 74x2228 - dual 256-bit FIFO memories (256x1)
- Status: [ ]
- Module: ttl_74x2228
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74ACT2228
- RTL: rtl/chips/ttl_74x2228/ttl_74x2228.sv
- Testbench: tb/chips/ttl_74x2228/tb_ttl_74x2228.sv
- README: rtl/chips/ttl_74x2228/README.md
- Notes:
  - (none)

### 74x2229 - dual 256-bit FIFO memories (256x1)
- Status: [ ]
- Module: ttl_74x2229
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: (28)
- Datasheet/source: SN74ACT2229
- RTL: rtl/chips/ttl_74x2229/ttl_74x2229.sv
- Testbench: tb/chips/ttl_74x2229/tb_ttl_74x2229.sv
- README: rtl/chips/ttl_74x2229/README.md
- Notes:
  - (none)

### 74x2232 - 512-bit FIFO memory (64x8)
- Status: [ ]
- Module: ttl_74x2232
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ALS2232A
- RTL: rtl/chips/ttl_74x2232/ttl_74x2232.sv
- Testbench: tb/chips/ttl_74x2232/tb_ttl_74x2232.sv
- README: rtl/chips/ttl_74x2232/README.md
- Notes:
  - (none)

### 74x2233 - 576-bit FIFO memory (64x9)
- Status: [ ]
- Module: ttl_74x2233
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ALS2233A
- RTL: rtl/chips/ttl_74x2233/ttl_74x2233.sv
- Testbench: tb/chips/ttl_74x2233/tb_ttl_74x2233.sv
- README: rtl/chips/ttl_74x2233/README.md
- Notes:
  - (none)

### 74x2235 - 18432-bit bidirectional FIFO memory (2x1024x9)
- Status: [ ]
- Module: ttl_74x2235
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2235
- RTL: rtl/chips/ttl_74x2235/ttl_74x2235.sv
- Testbench: tb/chips/ttl_74x2235/tb_ttl_74x2235.sv
- README: rtl/chips/ttl_74x2235/README.md
- Notes:
  - (none)

### 74x2236 - 18432-bit bidirectional FIFO memory (2x1024x9)
- Status: [ ]
- Module: ttl_74x2236
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT2236
- RTL: rtl/chips/ttl_74x2236/ttl_74x2236.sv
- Testbench: tb/chips/ttl_74x2236/tb_ttl_74x2236.sv
- README: rtl/chips/ttl_74x2236/README.md
- Notes:
  - (none)

### 74x2238 - 576-bit bidirectional FIFO memory (2x32x9)
- Status: [ ]
- Module: ttl_74x2238
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 40
- Datasheet/source: SN74ALS2238
- RTL: rtl/chips/ttl_74x2238/ttl_74x2238.sv
- Testbench: tb/chips/ttl_74x2238/tb_ttl_74x2238.sv
- README: rtl/chips/ttl_74x2238/README.md
- Notes:
  - (none)

### 74x2240 - dual 4-bit bidirectional buffer / line driver, inverting
- Status: [ ]
- Module: ttl_74x2240
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74BCT2240
- RTL: rtl/chips/ttl_74x2240/ttl_74x2240.sv
- Testbench: tb/chips/ttl_74x2240/tb_ttl_74x2240.sv
- README: rtl/chips/ttl_74x2240/README.md
- Notes:
  - (none)

### 74x2241 - dual 4-bit bidirectional buffer / line driver, non-inverting
- Status: [ ]
- Module: ttl_74x2241
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74BCT2241
- RTL: rtl/chips/ttl_74x2241/ttl_74x2241.sv
- Testbench: tb/chips/ttl_74x2241/tb_ttl_74x2241.sv
- README: rtl/chips/ttl_74x2241/README.md
- Notes:
  - (none)

### 74x2242 - 4-bit bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x2242
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 14
- Datasheet/source: SN74ALS2242
- RTL: rtl/chips/ttl_74x2242/ttl_74x2242.sv
- Testbench: tb/chips/ttl_74x2242/tb_ttl_74x2242.sv
- README: rtl/chips/ttl_74x2242/README.md
- Notes:
  - (none)

### 74x2243 - 4-bit bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x2243
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (14)
- Datasheet/source: 74F2243
- RTL: rtl/chips/ttl_74x2243/ttl_74x2243.sv
- Testbench: tb/chips/ttl_74x2243/tb_ttl_74x2243.sv
- README: rtl/chips/ttl_74x2243/README.md
- Notes:
  - (none)

### 74x2244 - dual 4-bit buffer / line driver, non-inverting
- Status: [ ]
- Module: ttl_74x2244
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74BCT2244
- RTL: rtl/chips/ttl_74x2244/ttl_74x2244.sv
- Testbench: tb/chips/ttl_74x2244/tb_ttl_74x2244.sv
- README: rtl/chips/ttl_74x2244/README.md
- Notes:
  - (none)

### 74x2245 - octal bus transceiver
- Status: [ ]
- Module: ttl_74x2245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74ABT2245
- RTL: rtl/chips/ttl_74x2245/ttl_74x2245.sv
- Testbench: tb/chips/ttl_74x2245/tb_ttl_74x2245.sv
- README: rtl/chips/ttl_74x2245/README.md
- Notes:
  - (none)

### 74x2253 - dual 4-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74x2253
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (16)
- Datasheet/source: CD74FCT2253
- RTL: rtl/chips/ttl_74x2253/ttl_74x2253.sv
- Testbench: tb/chips/ttl_74x2253/tb_ttl_74x2253.sv
- README: rtl/chips/ttl_74x2253/README.md
- Notes:
  - (none)

### 74x2257 - quad 2-line to 1-line multiplexer
- Status: [ ]
- Module: ttl_74x2257
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (16)
- Datasheet/source: CD74FCT2257
- RTL: rtl/chips/ttl_74x2257/ttl_74x2257.sv
- Testbench: tb/chips/ttl_74x2257/tb_ttl_74x2257.sv
- README: rtl/chips/ttl_74x2257/README.md
- Notes:
  - (none)

### 74x2273 - octal D-type flip-flop, shared clock and clear
- Status: [ ]
- Module: ttl_74x2273
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: 25 Ω series resistor
- Pins: (20)
- Datasheet/source: CD74FCT2273
- RTL: rtl/chips/ttl_74x2273/ttl_74x2273.sv
- Testbench: tb/chips/ttl_74x2273/tb_ttl_74x2273.sv
- README: rtl/chips/ttl_74x2273/README.md
- Notes:
  - (none)

### 74x2299 - 8-bit universal shift register
- Status: [ ]
- Module: ttl_74x2299
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2299T
- RTL: rtl/chips/ttl_74x2299/ttl_74x2299.sv
- Testbench: tb/chips/ttl_74x2299/tb_ttl_74x2299.sv
- README: rtl/chips/ttl_74x2299/README.md
- Notes:
  - (none)

### 74x2323 - dual line receiver
- Status: [ ]
- Module: ttl_74x2323
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (8)
- Datasheet/source: SN74LS2323
- RTL: rtl/chips/ttl_74x2323/ttl_74x2323.sv
- Testbench: tb/chips/ttl_74x2323/tb_ttl_74x2323.sv
- README: rtl/chips/ttl_74x2323/README.md
- Notes:
  - (none)

### 74x2373 - 8-bit transparent latch
- Status: [ ]
- Module: ttl_74x2373
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (20)
- Datasheet/source: CD74FCT2373
- RTL: rtl/chips/ttl_74x2373/ttl_74x2373.sv
- Testbench: tb/chips/ttl_74x2373/tb_ttl_74x2373.sv
- README: rtl/chips/ttl_74x2373/README.md
- Notes:
  - (none)

### 74x2374 - octal D-type flip-flop, shared clock
- Status: [ ]
- Module: ttl_74x2374
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: (20)
- Datasheet/source: CD74FCT2374
- RTL: rtl/chips/ttl_74x2374/ttl_74x2374.sv
- Testbench: tb/chips/ttl_74x2374/tb_ttl_74x2374.sv
- README: rtl/chips/ttl_74x2374/README.md
- Notes:
  - (none)

### 74x2377 - 8-bit register, clock enable
- Status: [ ]
- Module: ttl_74x2377
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2377T
- RTL: rtl/chips/ttl_74x2377/ttl_74x2377.sv
- Testbench: tb/chips/ttl_74x2377/tb_ttl_74x2377.sv
- README: rtl/chips/ttl_74x2377/README.md
- Notes:
  - (none)

### 74x2400 - dual 4-bit buffer, inverting
- Status: [ ]
- Module: ttl_74x2400
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: 74THC2400
- RTL: rtl/chips/ttl_74x2400/ttl_74x2400.sv
- Testbench: tb/chips/ttl_74x2400/tb_ttl_74x2400.sv
- README: rtl/chips/ttl_74x2400/README.md
- Notes:
  - (none)

### 74x2410 - 11-bit MOS memory driver, non-inverting
- Status: [ ]
- Module: ttl_74x2410
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74BCT2410
- RTL: rtl/chips/ttl_74x2410/ttl_74x2410.sv
- Testbench: tb/chips/ttl_74x2410/tb_ttl_74x2410.sv
- README: rtl/chips/ttl_74x2410/README.md
- Notes:
  - (none)

### 74x2411 - 11-bit MOS memory driver, inverting
- Status: [ ]
- Module: ttl_74x2411
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74BCT2411
- RTL: rtl/chips/ttl_74x2411/ttl_74x2411.sv
- Testbench: tb/chips/ttl_74x2411/tb_ttl_74x2411.sv
- README: rtl/chips/ttl_74x2411/README.md
- Notes:
  - (none)

### 74x2414 - dual 2-to-4 line decoder with supply voltage monitor
- Status: [ ]
- Module: ttl_74x2414
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74BCT2414
- RTL: rtl/chips/ttl_74x2414/ttl_74x2414.sv
- Testbench: tb/chips/ttl_74x2414/tb_ttl_74x2414.sv
- README: rtl/chips/ttl_74x2414/README.md
- Notes:
  - (none)

### 74x2420 - 16-bit NuBus address/data transceiver and register
- Status: [ ]
- Module: ttl_74x2420
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74BCT2420
- RTL: rtl/chips/ttl_74x2420/ttl_74x2420.sv
- Testbench: tb/chips/ttl_74x2420/tb_ttl_74x2420.sv
- README: rtl/chips/ttl_74x2420/README.md
- Notes:
  - (none)

### 74x2423 - 16-bit latched multiplexer/demultiplexer NuBus transceiver, inverting
- Status: [ ]
- Module: ttl_74x2423
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74BCT2423
- RTL: rtl/chips/ttl_74x2423/ttl_74x2423.sv
- Testbench: tb/chips/ttl_74x2423/tb_ttl_74x2423.sv
- README: rtl/chips/ttl_74x2423/README.md
- Notes:
  - (none)

### 74x2424 - 16-bit latched multiplexer/demultiplexer NuBus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x2424
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74BCT2424
- RTL: rtl/chips/ttl_74x2424/ttl_74x2424.sv
- Testbench: tb/chips/ttl_74x2424/tb_ttl_74x2424.sv
- README: rtl/chips/ttl_74x2424/README.md
- Notes:
  - (none)

### 74x2425 - Macintosh Coprocessor Platform NuBus address/data registered transceiver
- Status: [ ]
- Module: ttl_74x2425
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (100)
- Datasheet/source: SN74BCT2425
- RTL: rtl/chips/ttl_74x2425/ttl_74x2425.sv
- Testbench: tb/chips/ttl_74x2425/tb_ttl_74x2425.sv
- README: rtl/chips/ttl_74x2425/README.md
- Notes:
  - (none)

### 74x2440 - NuBus interface controller
- Status: [ ]
- Module: ttl_74x2440
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (68)
- Datasheet/source: SN74ACT2440
- RTL: rtl/chips/ttl_74x2440/ttl_74x2440.sv
- Testbench: tb/chips/ttl_74x2440/tb_ttl_74x2440.sv
- README: rtl/chips/ttl_74x2440/README.md
- Notes:
  - (none)

### 74x2441 - NuBus interface controller
- Status: [ ]
- Module: ttl_74x2441
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (100)
- Datasheet/source: SN74ACT2441
- RTL: rtl/chips/ttl_74x2441/ttl_74x2441.sv
- Testbench: tb/chips/ttl_74x2441/tb_ttl_74x2441.sv
- README: rtl/chips/ttl_74x2441/README.md
- Notes:
  - (none)

### 74x2442 - NuBus block slave address generator
- Status: [ ]
- Module: ttl_74x2442
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (20)
- Datasheet/source: SN74ALS2442
- RTL: rtl/chips/ttl_74x2442/ttl_74x2442.sv
- Testbench: tb/chips/ttl_74x2442/tb_ttl_74x2442.sv
- README: rtl/chips/ttl_74x2442/README.md
- Notes:
  - (none)

### 74x2509 - 9-output clock driver with PLL
- Status: [ ]
- Module: ttl_74x2509
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (24)
- Datasheet/source: HD74CDC2509
- RTL: rtl/chips/ttl_74x2509/ttl_74x2509.sv
- Testbench: tb/chips/ttl_74x2509/tb_ttl_74x2509.sv
- README: rtl/chips/ttl_74x2509/README.md
- Notes:
  - (none)

### 74x2510 - 10-output clock driver with PLL
- Status: [ ]
- Module: ttl_74x2510
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (24)
- Datasheet/source: HD74CDC2510
- RTL: rtl/chips/ttl_74x2510/ttl_74x2510.sv
- Testbench: tb/chips/ttl_74x2510/tb_ttl_74x2510.sv
- README: rtl/chips/ttl_74x2510/README.md
- Notes:
  - (none)

### 74x2525 - 8-output clock driver
- Status: [ ]
- Module: ttl_74x2525
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 74AC2525
- RTL: rtl/chips/ttl_74x2525/ttl_74x2525.sv
- Testbench: tb/chips/ttl_74x2525/tb_ttl_74x2525.sv
- README: rtl/chips/ttl_74x2525/README.md
- Notes:
  - (none)

### 74x2526 - 8-output clock driver with input multiplexer
- Status: [ ]
- Module: ttl_74x2526
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74AC2526
- RTL: rtl/chips/ttl_74x2526/ttl_74x2526.sv
- Testbench: tb/chips/ttl_74x2526/tb_ttl_74x2526.sv
- README: rtl/chips/ttl_74x2526/README.md
- Notes:
  - (none)

### 74x2533 - 8-bit bus interface latch, inverting
- Status: [ ]
- Module: ttl_74x2533
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2533T
- RTL: rtl/chips/ttl_74x2533/ttl_74x2533.sv
- Testbench: tb/chips/ttl_74x2533/tb_ttl_74x2533.sv
- README: rtl/chips/ttl_74x2533/README.md
- Notes:
  - (none)

### 74x2534 - 8-bit bus interface register, inverting
- Status: [ ]
- Module: ttl_74x2534
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2534T
- RTL: rtl/chips/ttl_74x2534/ttl_74x2534.sv
- Testbench: tb/chips/ttl_74x2534/tb_ttl_74x2534.sv
- README: rtl/chips/ttl_74x2534/README.md
- Notes:
  - (none)

### 74x2540 - 8-bit buffer / line driver, inverting
- Status: [ ]
- Module: ttl_74x2540
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74ALS2540
- RTL: rtl/chips/ttl_74x2540/ttl_74x2540.sv
- Testbench: tb/chips/ttl_74x2540/tb_ttl_74x2540.sv
- README: rtl/chips/ttl_74x2540/README.md
- Notes:
  - (none)

### 74x2541 - 8-bit buffer / line driver, non-inverting
- Status: [ ]
- Module: ttl_74x2541
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74ALS2541
- RTL: rtl/chips/ttl_74x2541/ttl_74x2541.sv
- Testbench: tb/chips/ttl_74x2541/tb_ttl_74x2541.sv
- README: rtl/chips/ttl_74x2541/README.md
- Notes:
  - (none)

### 74x2543 - 8-bit latched transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x2543
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2543T
- RTL: rtl/chips/ttl_74x2543/ttl_74x2543.sv
- Testbench: tb/chips/ttl_74x2543/tb_ttl_74x2543.sv
- README: rtl/chips/ttl_74x2543/README.md
- Notes:
  - (none)

### 74x2544 - 8-bit latched transceiver, inverting
- Status: [ ]
- Module: ttl_74x2544
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2544T
- RTL: rtl/chips/ttl_74x2544/ttl_74x2544.sv
- Testbench: tb/chips/ttl_74x2544/tb_ttl_74x2544.sv
- README: rtl/chips/ttl_74x2544/README.md
- Notes:
  - (none)

### 74x2573 - 8-bit transparent latch
- Status: [ ]
- Module: ttl_74x2573
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2573T
- RTL: rtl/chips/ttl_74x2573/ttl_74x2573.sv
- Testbench: tb/chips/ttl_74x2573/tb_ttl_74x2573.sv
- README: rtl/chips/ttl_74x2573/README.md
- Notes:
  - (none)

### 74x2574 - octal D-type flip-flop, shared clock
- Status: [ ]
- Module: ttl_74x2574
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: QS74FCT2574T
- RTL: rtl/chips/ttl_74x2574/ttl_74x2574.sv
- Testbench: tb/chips/ttl_74x2574/tb_ttl_74x2574.sv
- README: rtl/chips/ttl_74x2574/README.md
- Notes:
  - (none)

### 74x2620 - octal bus transceiver / MOS driver, inverting
- Status: [ ]
- Module: ttl_74x2620
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74AS2620
- RTL: rtl/chips/ttl_74x2620/ttl_74x2620.sv
- Testbench: tb/chips/ttl_74x2620/tb_ttl_74x2620.sv
- README: rtl/chips/ttl_74x2620/README.md
- Notes:
  - (none)

### 74x2623 - octal bus transceiver / MOS driver, non-inverting
- Status: [ ]
- Module: ttl_74x2623
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74AS2623
- RTL: rtl/chips/ttl_74x2623/ttl_74x2623.sv
- Testbench: tb/chips/ttl_74x2623/tb_ttl_74x2623.sv
- README: rtl/chips/ttl_74x2623/README.md
- Notes:
  - (none)

### 74x2640 - octal bus transceiver / MOS driver, inverting
- Status: [ ]
- Module: ttl_74x2640
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74AS2640
- RTL: rtl/chips/ttl_74x2640/ttl_74x2640.sv
- Testbench: tb/chips/ttl_74x2640/tb_ttl_74x2640.sv
- README: rtl/chips/ttl_74x2640/README.md
- Notes:
  - (none)

### 74x2643 - octal bus transceiver, mix of inverting and non-inverting outputs
- Status: [ ]
- Module: ttl_74x2643
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: 74F2643
- RTL: rtl/chips/ttl_74x2643/ttl_74x2643.sv
- Testbench: tb/chips/ttl_74x2643/tb_ttl_74x2643.sv
- README: rtl/chips/ttl_74x2643/README.md
- Notes:
  - (none)

### 74x2645 - octal bus transceiver / MOS driver, non-inverting
- Status: [ ]
- Module: ttl_74x2645
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 20
- Datasheet/source: SN74AS2645
- RTL: rtl/chips/ttl_74x2645/ttl_74x2645.sv
- Testbench: tb/chips/ttl_74x2645/tb_ttl_74x2645.sv
- README: rtl/chips/ttl_74x2645/README.md
- Notes:
  - (none)

### 74x2646 - octal registered transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x2646
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2646T
- RTL: rtl/chips/ttl_74x2646/ttl_74x2646.sv
- Testbench: tb/chips/ttl_74x2646/tb_ttl_74x2646.sv
- README: rtl/chips/ttl_74x2646/README.md
- Notes:
  - (none)

### 74x2648 - octal registered transceiver, inverting
- Status: [ ]
- Module: ttl_74x2648
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2648T
- RTL: rtl/chips/ttl_74x2648/ttl_74x2648.sv
- Testbench: tb/chips/ttl_74x2648/tb_ttl_74x2648.sv
- README: rtl/chips/ttl_74x2648/README.md
- Notes:
  - (none)

### 74x2651 - octal registered transceiver, inverting
- Status: [ ]
- Module: ttl_74x2651
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2651T
- RTL: rtl/chips/ttl_74x2651/ttl_74x2651.sv
- Testbench: tb/chips/ttl_74x2651/tb_ttl_74x2651.sv
- README: rtl/chips/ttl_74x2651/README.md
- Notes:
  - (none)

### 74x2652 - octal registered transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x2652
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2652T
- RTL: rtl/chips/ttl_74x2652/ttl_74x2652.sv
- Testbench: tb/chips/ttl_74x2652/tb_ttl_74x2652.sv
- README: rtl/chips/ttl_74x2652/README.md
- Notes:
  - (none)

### 74S2708 - 8192-bit PROM (1024x8)
- Status: [ ]
- Module: ttl_74s2708
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74S2708
- RTL: rtl/chips/ttl_74s2708/ttl_74s2708.sv
- Testbench: tb/chips/ttl_74s2708/tb_ttl_74s2708.sv
- README: rtl/chips/ttl_74s2708/README.md
- Notes:
  - (none)

### 74AC2708 - 576-bit FIFO memory (64x9)
- Status: [ ]
- Module: ttl_74ac2708
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74AC2708
- RTL: rtl/chips/ttl_74ac2708/ttl_74ac2708.sv
- Testbench: tb/chips/ttl_74ac2708/tb_ttl_74ac2708.sv
- README: rtl/chips/ttl_74ac2708/README.md
- Notes:
  - (none)

### 74x2725 - 4608-bit FIFO memory (512x9)
- Status: [ ]
- Module: ttl_74x2725
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: 74ACT2725
- RTL: rtl/chips/ttl_74x2725/ttl_74x2725.sv
- Testbench: tb/chips/ttl_74x2725/tb_ttl_74x2725.sv
- README: rtl/chips/ttl_74x2725/README.md
- Notes:
  - (none)

### 74x2726 - 4608-bit bidirectional FIFO memory (512x9)
- Status: [ ]
- Module: ttl_74x2726
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: 74ACT2726
- RTL: rtl/chips/ttl_74x2726/ttl_74x2726.sv
- Testbench: tb/chips/ttl_74x2726/tb_ttl_74x2726.sv
- README: rtl/chips/ttl_74x2726/README.md
- Notes:
  - (none)

### 74x2821 - 10-bit D-type flip-flop
- Status: [ ]
- Module: ttl_74x2821
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2821T
- RTL: rtl/chips/ttl_74x2821/ttl_74x2821.sv
- Testbench: tb/chips/ttl_74x2821/tb_ttl_74x2821.sv
- README: rtl/chips/ttl_74x2821/README.md
- Notes:
  - (none)

### 74x2823 - 9-bit D-type flip-flop with clear
- Status: [ ]
- Module: ttl_74x2823
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2823T
- RTL: rtl/chips/ttl_74x2823/ttl_74x2823.sv
- Testbench: tb/chips/ttl_74x2823/tb_ttl_74x2823.sv
- README: rtl/chips/ttl_74x2823/README.md
- Notes:
  - (none)

### 74x2825 - 8-bit D-type flip-flop with clear and clock enable
- Status: [ ]
- Module: ttl_74x2825
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2825T
- RTL: rtl/chips/ttl_74x2825/ttl_74x2825.sv
- Testbench: tb/chips/ttl_74x2825/tb_ttl_74x2825.sv
- README: rtl/chips/ttl_74x2825/README.md
- Notes:
  - (none)

### 74x2827 - 10-bit buffer, non-inverting
- Status: [ ]
- Module: ttl_74x2827
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: SN74BCT2827A
- RTL: rtl/chips/ttl_74x2827/ttl_74x2827.sv
- Testbench: tb/chips/ttl_74x2827/tb_ttl_74x2827.sv
- README: rtl/chips/ttl_74x2827/README.md
- Notes:
  - (none)

### 74x2828 - 10-bit buffer, inverting
- Status: [ ]
- Module: ttl_74x2828
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: SN74BCT2828A
- RTL: rtl/chips/ttl_74x2828/ttl_74x2828.sv
- Testbench: tb/chips/ttl_74x2828/tb_ttl_74x2828.sv
- README: rtl/chips/ttl_74x2828/README.md
- Notes:
  - (none)

### 74x2833 - 8-bit bus transceiver with parity error flip-flop
- Status: [ ]
- Module: ttl_74x2833
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2833T
- RTL: rtl/chips/ttl_74x2833/ttl_74x2833.sv
- Testbench: tb/chips/ttl_74x2833/tb_ttl_74x2833.sv
- README: rtl/chips/ttl_74x2833/README.md
- Notes:
  - (none)

### 74x2841 - 10-bit transparent latch
- Status: [ ]
- Module: ttl_74x2841
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2841T
- RTL: rtl/chips/ttl_74x2841/ttl_74x2841.sv
- Testbench: tb/chips/ttl_74x2841/tb_ttl_74x2841.sv
- README: rtl/chips/ttl_74x2841/README.md
- Notes:
  - (none)

### 74x2843 - 9-bit transparent latch with asynchronous reset
- Status: [ ]
- Module: ttl_74x2843
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2843T
- RTL: rtl/chips/ttl_74x2843/ttl_74x2843.sv
- Testbench: tb/chips/ttl_74x2843/tb_ttl_74x2843.sv
- README: rtl/chips/ttl_74x2843/README.md
- Notes:
  - (none)

### 74x2845 - 8-bit transparent latch with asynchronous reset and multiple output enable
- Status: [ ]
- Module: ttl_74x2845
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2845T
- RTL: rtl/chips/ttl_74x2845/ttl_74x2845.sv
- Testbench: tb/chips/ttl_74x2845/tb_ttl_74x2845.sv
- README: rtl/chips/ttl_74x2845/README.md
- Notes:
  - (none)

### 74x2853 - 8-bit bus transceiver with parity error latch
- Status: [ ]
- Module: ttl_74x2853
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2853T
- RTL: rtl/chips/ttl_74x2853/ttl_74x2853.sv
- Testbench: tb/chips/ttl_74x2853/tb_ttl_74x2853.sv
- README: rtl/chips/ttl_74x2853/README.md
- Notes:
  - (none)

### 74x2861 - 10-bit non-inverting bus transceiver
- Status: [ ]
- Module: ttl_74x2861
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2861T
- RTL: rtl/chips/ttl_74x2861/ttl_74x2861.sv
- Testbench: tb/chips/ttl_74x2861/tb_ttl_74x2861.sv
- README: rtl/chips/ttl_74x2861/README.md
- Notes:
  - (none)

### 74x2862 - 10-bit inverting bus transceiver
- Status: [ ]
- Module: ttl_74x2862
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2862T
- RTL: rtl/chips/ttl_74x2862/ttl_74x2862.sv
- Testbench: tb/chips/ttl_74x2862/tb_ttl_74x2862.sv
- README: rtl/chips/ttl_74x2862/README.md
- Notes:
  - (none)

### 74x2863 - 9-bit non-inverting bus transceiver with dual output enable
- Status: [ ]
- Module: ttl_74x2863
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2863T
- RTL: rtl/chips/ttl_74x2863/ttl_74x2863.sv
- Testbench: tb/chips/ttl_74x2863/tb_ttl_74x2863.sv
- README: rtl/chips/ttl_74x2863/README.md
- Notes:
  - (none)

### 74x2864 - 9-bit inverting bus transceiver with dual output enable
- Status: [ ]
- Module: ttl_74x2864
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 24
- Datasheet/source: QS74FCT2864T
- RTL: rtl/chips/ttl_74x2864/ttl_74x2864.sv
- Testbench: tb/chips/ttl_74x2864/tb_ttl_74x2864.sv
- README: rtl/chips/ttl_74x2864/README.md
- Notes:
  - (none)

### 74x2952 - octal bus transceiver and register, non-inverting
- Status: [ ]
- Module: ttl_74x2952
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LVC2952A
- RTL: rtl/chips/ttl_74x2952/ttl_74x2952.sv
- Testbench: tb/chips/ttl_74x2952/tb_ttl_74x2952.sv
- README: rtl/chips/ttl_74x2952/README.md
- Notes:
  - (none)

### 74x2953 - octal bus transceiver and register, inverting
- Status: [ ]
- Module: ttl_74x2953
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74F2953
- RTL: rtl/chips/ttl_74x2953/ttl_74x2953.sv
- Testbench: tb/chips/ttl_74x2953/tb_ttl_74x2953.sv
- README: rtl/chips/ttl_74x2953/README.md
- Notes:
  - (none)

### 74x2960 - error detection and correction (EDAC), equivalent to Am2960
- Status: [ ]
- Module: ttl_74x2960
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: MC74F2960
- RTL: rtl/chips/ttl_74x2960/ttl_74x2960.sv
- Testbench: tb/chips/ttl_74x2960/tb_ttl_74x2960.sv
- README: rtl/chips/ttl_74x2960/README.md
- Notes:
  - (none)

### 74x2961 - 4-bit EDAC bus buffer, inverting, equivalent to Am2961
- Status: [ ]
- Module: ttl_74x2961
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: MC74F2961A
- RTL: rtl/chips/ttl_74x2961/ttl_74x2961.sv
- Testbench: tb/chips/ttl_74x2961/tb_ttl_74x2961.sv
- README: rtl/chips/ttl_74x2961/README.md
- Notes:
  - (none)

### 74x2962 - 4-bit EDAC bus buffer, non-inverting, equivalent to Am2962
- Status: [ ]
- Module: ttl_74x2962
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: MC74F2962A
- RTL: rtl/chips/ttl_74x2962/ttl_74x2962.sv
- Testbench: tb/chips/ttl_74x2962/tb_ttl_74x2962.sv
- README: rtl/chips/ttl_74x2962/README.md
- Notes:
  - (none)

### 74x2967 - controller/driver for 16k/64k/256k dRAM
- Status: [ ]
- Module: ttl_74x2967
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: SN74ALS2967
- RTL: rtl/chips/ttl_74x2967/ttl_74x2967.sv
- Testbench: tb/chips/ttl_74x2967/tb_ttl_74x2967.sv
- README: rtl/chips/ttl_74x2967/README.md
- Notes:
  - (none)

### 74x2968 - controller/driver for 16k/64k/256k dRAM
- Status: [ ]
- Module: ttl_74x2968
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: SN74ALS2968
- RTL: rtl/chips/ttl_74x2968/ttl_74x2968.sv
- Testbench: tb/chips/ttl_74x2968/tb_ttl_74x2968.sv
- README: rtl/chips/ttl_74x2968/README.md
- Notes:
  - (none)

### 74x2969 - memory timing controller for use with EDAC
- Status: [ ]
- Module: ttl_74x2969
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: MC74F2969
- RTL: rtl/chips/ttl_74x2969/ttl_74x2969.sv
- Testbench: tb/chips/ttl_74x2969/tb_ttl_74x2969.sv
- README: rtl/chips/ttl_74x2969/README.md
- Notes:
  - (none)

### 74x2970 - memory timing controller for use without EDAC
- Status: [ ]
- Module: ttl_74x2970
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: MC74F2970
- RTL: rtl/chips/ttl_74x2970/ttl_74x2970.sv
- Testbench: tb/chips/ttl_74x2970/tb_ttl_74x2970.sv
- README: rtl/chips/ttl_74x2970/README.md
- Notes:
  - (none)

### 74x3004 - selectable GTL voltage reference
- Status: [ ]
- Module: ttl_74x3004
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (6)
- Datasheet/source: SN74GTL3004
- RTL: rtl/chips/ttl_74x3004/ttl_74x3004.sv
- Testbench: tb/chips/ttl_74x3004/tb_ttl_74x3004.sv
- README: rtl/chips/ttl_74x3004/README.md
- Notes:
  - (none)

### 74x3037 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x3037
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: driver 30 Ω
- Pins: 16
- Datasheet/source: 74F3037
- RTL: rtl/chips/ttl_74x3037/ttl_74x3037.sv
- Testbench: tb/chips/ttl_74x3037/tb_ttl_74x3037.sv
- README: rtl/chips/ttl_74x3037/README.md
- Notes:
  - (none)

### 74x3038 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x3038
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: open-collector driver 30 Ω
- Pins: 16
- Datasheet/source: 74F3038
- RTL: rtl/chips/ttl_74x3038/ttl_74x3038.sv
- Testbench: tb/chips/ttl_74x3038/tb_ttl_74x3038.sv
- README: rtl/chips/ttl_74x3038/README.md
- Notes:
  - (none)

### 74x3040 - dual 4-input NAND gate
- Status: [ ]
- Module: ttl_74x3040
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: driver 30 Ω
- Pins: 16
- Datasheet/source: 74F3040
- RTL: rtl/chips/ttl_74x3040/ttl_74x3040.sv
- Testbench: tb/chips/ttl_74x3040/tb_ttl_74x3040.sv
- README: rtl/chips/ttl_74x3040/README.md
- Notes:
  - (none)

### 74x3125 - quad FET bus switch, output enable active low
- Status: [ ]
- Module: ttl_74x3125
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: (14)
- Datasheet/source: SN74CBT3125
- RTL: rtl/chips/ttl_74x3125/ttl_74x3125.sv
- Testbench: tb/chips/ttl_74x3125/tb_ttl_74x3125.sv
- README: rtl/chips/ttl_74x3125/README.md
- Notes:
  - (none)

### 74x3126 - quad FET bus switch, output enable active high
- Status: [ ]
- Module: ttl_74x3126
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: (14)
- Datasheet/source: SN74CBT3126
- RTL: rtl/chips/ttl_74x3126/ttl_74x3126.sv
- Testbench: tb/chips/ttl_74x3126/tb_ttl_74x3126.sv
- README: rtl/chips/ttl_74x3126/README.md
- Notes:
  - (none)

### 74FCT3244 - dual 4-bit buffer / line driver
- Status: [ ]
- Module: ttl_74fct3244
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: IDT74FCT3244
- RTL: rtl/chips/ttl_74fct3244/ttl_74fct3244.sv
- Testbench: tb/chips/ttl_74fct3244/tb_ttl_74fct3244.sv
- README: rtl/chips/ttl_74fct3244/README.md
- Notes:
  - (none)

### 74CBT3244 - dual 4-bit FET bus switch
- Status: [ ]
- Module: ttl_74cbt3244
- Aliases: 74FST3244
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74CBT3244
IDT74FST3244
- RTL: rtl/chips/ttl_74cbt3244/ttl_74cbt3244.sv
- Testbench: tb/chips/ttl_74cbt3244/tb_ttl_74cbt3244.sv
- README: rtl/chips/ttl_74cbt3244/README.md
- Notes:
  - (none)

### 74FCT3245 - octal bidirectional transceiver
- Status: [ ]
- Module: ttl_74fct3245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: IDT74FCT3245
- RTL: rtl/chips/ttl_74fct3245/ttl_74fct3245.sv
- Testbench: tb/chips/ttl_74fct3245/tb_ttl_74fct3245.sv
- README: rtl/chips/ttl_74fct3245/README.md
- Notes:
  - (none)

### 74CBT3245 - octal FET bus switch
- Status: [ ]
- Module: ttl_74cbt3245
- Aliases: 74FST3245
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74CBT3245A
IDT74FST3245
- RTL: rtl/chips/ttl_74cbt3245/ttl_74cbt3245.sv
- Testbench: tb/chips/ttl_74cbt3245/tb_ttl_74cbt3245.sv
- README: rtl/chips/ttl_74cbt3245/README.md
- Notes:
  - (none)

### 74LVX3245 - octal bidirectional voltage-translating transceiver
- Status: [ ]
- Module: ttl_74lvx3245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (24)
- Datasheet/source: 74LVX3245
- RTL: rtl/chips/ttl_74lvx3245/ttl_74lvx3245.sv
- Testbench: tb/chips/ttl_74lvx3245/tb_ttl_74lvx3245.sv
- README: rtl/chips/ttl_74lvx3245/README.md
- Notes:
  - (none)

### 74GTLPH3245 - 32-bit LV-TTL-to-GTLP adjustable-edge-rate bus transceiver
- Status: [ ]
- Module: ttl_74gtlph3245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (114)
- Datasheet/source: SN74GTLPH3245
- RTL: rtl/chips/ttl_74gtlph3245/ttl_74gtlph3245.sv
- Testbench: tb/chips/ttl_74gtlph3245/tb_ttl_74gtlph3245.sv
- README: rtl/chips/ttl_74gtlph3245/README.md
- Notes:
  - (none)

### 74x3251 - 8-line to 1-line FET multiplexer / demultiplexer
- Status: [ ]
- Module: ttl_74x3251
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (16)
- Datasheet/source: SN74CBT3251
- RTL: rtl/chips/ttl_74x3251/ttl_74x3251.sv
- Testbench: tb/chips/ttl_74x3251/tb_ttl_74x3251.sv
- README: rtl/chips/ttl_74x3251/README.md
- Notes:
  - (none)

### 74x3253 - dual 4-line to 1-line FET multiplexer / demultiplexer
- Status: [ ]
- Module: ttl_74x3253
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (16)
- Datasheet/source: SN74CBT3253
- RTL: rtl/chips/ttl_74x3253/ttl_74x3253.sv
- Testbench: tb/chips/ttl_74x3253/tb_ttl_74x3253.sv
- README: rtl/chips/ttl_74x3253/README.md
- Notes:
  - (none)

### 74x3257 - quad 2-line to 1-line FET multiplexer / demultiplexer
- Status: [ ]
- Module: ttl_74x3257
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: (16)
- Datasheet/source: IDT74FST3257
- RTL: rtl/chips/ttl_74x3257/ttl_74x3257.sv
- Testbench: tb/chips/ttl_74x3257/tb_ttl_74x3257.sv
- README: rtl/chips/ttl_74x3257/README.md
- Notes:
  - (none)

### 74x3283 - 32-bit latchable transceiver with parity checker / generator
- Status: [ ]
- Module: ttl_74x3283
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: 74ACTQ3283
- RTL: rtl/chips/ttl_74x3283/ttl_74x3283.sv
- Testbench: tb/chips/ttl_74x3283/tb_ttl_74x3283.sv
- README: rtl/chips/ttl_74x3283/README.md
- Notes:
  - (none)

### 74x3284 - 18-bit synchronous datapath multiplexer
- Status: [ ]
- Module: ttl_74x3284
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (100)
- Datasheet/source: 74ABT3284
- RTL: rtl/chips/ttl_74x3284/ttl_74x3284.sv
- Testbench: tb/chips/ttl_74x3284/tb_ttl_74x3284.sv
- README: rtl/chips/ttl_74x3284/README.md
- Notes:
  - (none)

### 74x3305 - dual FET bus switch with extended voltage range
- Status: [ ]
- Module: ttl_74x3305
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (8)
- Datasheet/source: SN74CBT3305C
- RTL: rtl/chips/ttl_74x3305/ttl_74x3305.sv
- Testbench: tb/chips/ttl_74x3305/tb_ttl_74x3305.sv
- README: rtl/chips/ttl_74x3305/README.md
- Notes:
  - (none)

### 74x3306 - dual FET bus switch
- Status: [ ]
- Module: ttl_74x3306
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (8)
- Datasheet/source: SN74CBT3306
- RTL: rtl/chips/ttl_74x3306/ttl_74x3306.sv
- Testbench: tb/chips/ttl_74x3306/tb_ttl_74x3306.sv
- README: rtl/chips/ttl_74x3306/README.md
- Notes:
  - (none)

### 74x3345 - octal FET bus switch, dual output enable
- Status: [ ]
- Module: ttl_74x3345
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (20)
- Datasheet/source: SN74CBT3345
- RTL: rtl/chips/ttl_74x3345/ttl_74x3345.sv
- Testbench: tb/chips/ttl_74x3345/tb_ttl_74x3345.sv
- README: rtl/chips/ttl_74x3345/README.md
- Notes:
  - (none)

### 74x3374 - 8-bit metastable-resistant D-type flip-flop
- Status: [ ]
- Module: ttl_74x3374
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74AS3374
- RTL: rtl/chips/ttl_74x3374/ttl_74x3374.sv
- Testbench: tb/chips/ttl_74x3374/tb_ttl_74x3374.sv
- README: rtl/chips/ttl_74x3374/README.md
- Notes:
  - (none)

### 74x3383 - 5-bit 4-port FET bus exchange switch
- Status: [ ]
- Module: ttl_74x3383
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: IDT74FST3383
- RTL: rtl/chips/ttl_74x3383/ttl_74x3383.sv
- Testbench: tb/chips/ttl_74x3383/tb_ttl_74x3383.sv
- README: rtl/chips/ttl_74x3383/README.md
- Notes:
  - (none)

### 74x3384 - dual 5-bit FET bus switch
- Status: [ ]
- Module: ttl_74x3384
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: IDT74FST3384
- RTL: rtl/chips/ttl_74x3384/ttl_74x3384.sv
- Testbench: tb/chips/ttl_74x3384/tb_ttl_74x3384.sv
- README: rtl/chips/ttl_74x3384/README.md
- Notes:
  - (none)

### 74x3386 - 5-bit 4-port FET bus exchange switch with extended voltage range
- Status: [ ]
- Module: ttl_74x3386
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74CBT3386
- RTL: rtl/chips/ttl_74x3386/ttl_74x3386.sv
- Testbench: tb/chips/ttl_74x3386/tb_ttl_74x3386.sv
- README: rtl/chips/ttl_74x3386/README.md
- Notes:
  - (none)

### 74x3390 - octal 2-line to 1-line FET multiplexer / bus switch
- Status: [ ]
- Module: ttl_74x3390
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (28)
- Datasheet/source: IDT74FST3390
- RTL: rtl/chips/ttl_74x3390/ttl_74x3390.sv
- Testbench: tb/chips/ttl_74x3390/tb_ttl_74x3390.sv
- README: rtl/chips/ttl_74x3390/README.md
- Notes:
  - (none)

### 74x3573 - octal transparent latch
- Status: [ ]
- Module: ttl_74x3573
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: IDT74FCT3573
- RTL: rtl/chips/ttl_74x3573/ttl_74x3573.sv
- Testbench: tb/chips/ttl_74x3573/tb_ttl_74x3573.sv
- README: rtl/chips/ttl_74x3573/README.md
- Notes:
  - (none)

### 74x3574 - octal D-type flip flop
- Status: [ ]
- Module: ttl_74x3574
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: IDT74FCT3574
- RTL: rtl/chips/ttl_74x3574/ttl_74x3574.sv
- Testbench: tb/chips/ttl_74x3574/tb_ttl_74x3574.sv
- README: rtl/chips/ttl_74x3574/README.md
- Notes:
  - (none)

### 74x3584 - dual 5-bit FET bus switch
- Status: [ ]
- Module: ttl_74x3584
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: QS74QST3584
- RTL: rtl/chips/ttl_74x3584/ttl_74x3584.sv
- Testbench: tb/chips/ttl_74x3584/tb_ttl_74x3584.sv
- README: rtl/chips/ttl_74x3584/README.md
- Notes:
  - (none)

### 74x3611 - 2304-bit FIFO memory (64x36)
- Status: [ ]
- Module: ttl_74x3611
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT3611
- RTL: rtl/chips/ttl_74x3611/ttl_74x3611.sv
- Testbench: tb/chips/ttl_74x3611/tb_ttl_74x3611.sv
- README: rtl/chips/ttl_74x3611/README.md
- Notes:
  - (none)

### 74x3612 - 4608-bit bidirectional FIFO memory (2x64x36)
- Status: [ ]
- Module: ttl_74x3612
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT3612
- RTL: rtl/chips/ttl_74x3612/ttl_74x3612.sv
- Testbench: tb/chips/ttl_74x3612/tb_ttl_74x3612.sv
- README: rtl/chips/ttl_74x3612/README.md
- Notes:
  - (none)

### 74x3613 - 2304-bit FIFO memory (64x36)
- Status: [ ]
- Module: ttl_74x3613
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT3613
- RTL: rtl/chips/ttl_74x3613/ttl_74x3613.sv
- Testbench: tb/chips/ttl_74x3613/tb_ttl_74x3613.sv
- README: rtl/chips/ttl_74x3613/README.md
- Notes:
  - (none)

### 74x3614 - 4608-bit bidirectional FIFO memory (2x64x36)
- Status: [ ]
- Module: ttl_74x3614
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT3614
- RTL: rtl/chips/ttl_74x3614/ttl_74x3614.sv
- Testbench: tb/chips/ttl_74x3614/tb_ttl_74x3614.sv
- README: rtl/chips/ttl_74x3614/README.md
- Notes:
  - (none)

### 74x3622 - 18432-bit bidirectional FIFO memory (2x256x36)
- Status: [ ]
- Module: ttl_74x3622
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3622
- RTL: rtl/chips/ttl_74x3622/ttl_74x3622.sv
- Testbench: tb/chips/ttl_74x3622/tb_ttl_74x3622.sv
- README: rtl/chips/ttl_74x3622/README.md
- Notes:
  - (none)

### 74x3631 - 18432-bit FIFO memory (512x36)
- Status: [ ]
- Module: ttl_74x3631
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3631
- RTL: rtl/chips/ttl_74x3631/ttl_74x3631.sv
- Testbench: tb/chips/ttl_74x3631/tb_ttl_74x3631.sv
- README: rtl/chips/ttl_74x3631/README.md
- Notes:
  - (none)

### 74x3632 - 36864-bit bidirectional FIFO memory (2x512x36)
- Status: [ ]
- Module: ttl_74x3632
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3632
- RTL: rtl/chips/ttl_74x3632/ttl_74x3632.sv
- Testbench: tb/chips/ttl_74x3632/tb_ttl_74x3632.sv
- README: rtl/chips/ttl_74x3632/README.md
- Notes:
  - (none)

### 74x3638 - 32768-bit bidirectional FIFO memory (2x512x32)
- Status: [ ]
- Module: ttl_74x3638
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3638
- RTL: rtl/chips/ttl_74x3638/ttl_74x3638.sv
- Testbench: tb/chips/ttl_74x3638/tb_ttl_74x3638.sv
- README: rtl/chips/ttl_74x3638/README.md
- Notes:
  - (none)

### 74x3641 - 36864-bit FIFO memory (1024x36)
- Status: [ ]
- Module: ttl_74x3641
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3641
- RTL: rtl/chips/ttl_74x3641/ttl_74x3641.sv
- Testbench: tb/chips/ttl_74x3641/tb_ttl_74x3641.sv
- README: rtl/chips/ttl_74x3641/README.md
- Notes:
  - (none)

### 74x3642 - 73728-bit bidirectional FIFO memory (2x1024x36)
- Status: [ ]
- Module: ttl_74x3642
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3642
- RTL: rtl/chips/ttl_74x3642/ttl_74x3642.sv
- Testbench: tb/chips/ttl_74x3642/tb_ttl_74x3642.sv
- README: rtl/chips/ttl_74x3642/README.md
- Notes:
  - (none)

### 74x3651 - 73728-bit FIFO memory (2048x36)
- Status: [ ]
- Module: ttl_74x3651
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT3651
- RTL: rtl/chips/ttl_74x3651/ttl_74x3651.sv
- Testbench: tb/chips/ttl_74x3651/tb_ttl_74x3651.sv
- README: rtl/chips/ttl_74x3651/README.md
- Notes:
  - (none)

### 74x3708 - 8192-bit PROM (1024x8)
- Status: [ ]
- Module: ttl_74x3708
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector
- Pins: 24
- Datasheet/source: SN74S3708
- RTL: rtl/chips/ttl_74x3708/ttl_74x3708.sv
- Testbench: tb/chips/ttl_74x3708/tb_ttl_74x3708.sv
- README: rtl/chips/ttl_74x3708/README.md
- Notes:
  - (none)

### 74x3807 - 1-to-10 clock driver
- Status: [ ]
- Module: ttl_74x3807
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: driver
- Pins: 20
- Datasheet/source: IDT74FCT3807
- RTL: rtl/chips/ttl_74x3807/ttl_74x3807.sv
- Testbench: tb/chips/ttl_74x3807/tb_ttl_74x3807.sv
- README: rtl/chips/ttl_74x3807/README.md
- Notes:
  - (none)

### 74x3827 - 10-bit buffer
- Status: [ ]
- Module: ttl_74x3827
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: IDT74FCT3827
- RTL: rtl/chips/ttl_74x3827/ttl_74x3827.sv
- Testbench: tb/chips/ttl_74x3827/tb_ttl_74x3827.sv
- README: rtl/chips/ttl_74x3827/README.md
- Notes:
  - (none)

### 74x3861 - 10-bit FET bus switch
- Status: [ ]
- Module: ttl_74x3861
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: SN74CBT3861
- RTL: rtl/chips/ttl_74x3861/ttl_74x3861.sv
- Testbench: tb/chips/ttl_74x3861/tb_ttl_74x3861.sv
- README: rtl/chips/ttl_74x3861/README.md
- Notes:
  - (none)

### 74x3862 - 10-bit FET bus switch with dual output enable
- Status: [ ]
- Module: ttl_74x3862
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (24)
- Datasheet/source: IDT74CBTLV3862
- RTL: rtl/chips/ttl_74x3862/ttl_74x3862.sv
- Testbench: tb/chips/ttl_74x3862/tb_ttl_74x3862.sv
- README: rtl/chips/ttl_74x3862/README.md
- Notes:
  - (none)

### 74x3893 - quad Futurebus backplane transceiver
- Status: [ ]
- Module: ttl_74x3893
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (20)
- Datasheet/source: MC74F3893A
- RTL: rtl/chips/ttl_74x3893/ttl_74x3893.sv
- Testbench: tb/chips/ttl_74x3893/tb_ttl_74x3893.sv
- README: rtl/chips/ttl_74x3893/README.md
- Notes:
  - (none)

### 74x3907 - Pentium clock synthesizer
- Status: [ ]
- Module: ttl_74x3907
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (28)
- Datasheet/source: IDT74FCT3907
- RTL: rtl/chips/ttl_74x3907/ttl_74x3907.sv
- Testbench: tb/chips/ttl_74x3907/tb_ttl_74x3907.sv
- README: rtl/chips/ttl_74x3907/README.md
- Notes:
  - (none)

### 74x3932 - PLL-based clock driver
- Status: [ ]
- Module: ttl_74x3932
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (48)
- Datasheet/source: IDT74FCT3932
- RTL: rtl/chips/ttl_74x3932/ttl_74x3932.sv
- Testbench: tb/chips/ttl_74x3932/tb_ttl_74x3932.sv
- README: rtl/chips/ttl_74x3932/README.md
- Notes:
  - (none)

### 74x4002 - dual 4-input NOR gate
- Status: [ ]
- Module: ttl_74x4002
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: CD74HC4002
- RTL: rtl/chips/ttl_74x4002/ttl_74x4002.sv
- Testbench: tb/chips/ttl_74x4002/tb_ttl_74x4002.sv
- README: rtl/chips/ttl_74x4002/README.md
- Notes:
  - (none)

### 74x4015 - dual 4-bit shift registers
- Status: [ ]
- Module: ttl_74x4015
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4015
- RTL: rtl/chips/ttl_74x4015/ttl_74x4015.sv
- Testbench: tb/chips/ttl_74x4015/tb_ttl_74x4015.sv
- README: rtl/chips/ttl_74x4015/README.md
- Notes:
  - (none)

### 74x4016 - quad bilateral switch
- Status: [ ]
- Module: ttl_74x4016
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: analog
- Pins: 14
- Datasheet/source: CD74HC4016
- RTL: rtl/chips/ttl_74x4016/ttl_74x4016.sv
- Testbench: tb/chips/ttl_74x4016/tb_ttl_74x4016.sv
- README: rtl/chips/ttl_74x4016/README.md
- Notes:
  - (none)

### 74x4017 - 5-stage ÷10 Johnson counter
- Status: [ ]
- Module: ttl_74x4017
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4017
- RTL: rtl/chips/ttl_74x4017/ttl_74x4017.sv
- Testbench: tb/chips/ttl_74x4017/tb_ttl_74x4017.sv
- README: rtl/chips/ttl_74x4017/README.md
- Notes:
  - (none)

### 74x4020 - 14-stage binary counter
- Status: [ ]
- Module: ttl_74x4020
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC4020
- RTL: rtl/chips/ttl_74x4020/ttl_74x4020.sv
- Testbench: tb/chips/ttl_74x4020/tb_ttl_74x4020.sv
- README: rtl/chips/ttl_74x4020/README.md
- Notes:
  - (none)

### 74x4022 - 4-stage ÷8 Johnson counter
- Status: [ ]
- Module: ttl_74x4022
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC4022
- RTL: rtl/chips/ttl_74x4022/ttl_74x4022.sv
- Testbench: tb/chips/ttl_74x4022/tb_ttl_74x4022.sv
- README: rtl/chips/ttl_74x4022/README.md
- Notes:
  - (none)

### 74x4024 - 7-stage ripple carry binary counter
- Status: [ ]
- Module: ttl_74x4024
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: CD74HC4024
- RTL: rtl/chips/ttl_74x4024/ttl_74x4024.sv
- Testbench: tb/chips/ttl_74x4024/tb_ttl_74x4024.sv
- README: rtl/chips/ttl_74x4024/README.md
- Notes:
  - (none)

### 74x4028 - BCD to decimal decoder
- Status: [ ]
- Module: ttl_74x4028
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: TC74HC4028P
- RTL: rtl/chips/ttl_74x4028/ttl_74x4028.sv
- Testbench: tb/chips/ttl_74x4028/tb_ttl_74x4028.sv
- README: rtl/chips/ttl_74x4028/README.md
- Notes:
  - (none)

### 74x4040 - 12-stage binary ripple counter
- Status: [ ]
- Module: ttl_74x4040
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC4040
- RTL: rtl/chips/ttl_74x4040/ttl_74x4040.sv
- Testbench: tb/chips/ttl_74x4040/tb_ttl_74x4040.sv
- README: rtl/chips/ttl_74x4040/README.md
- Notes:
  - (none)

### 74x4046 - phase-locked loop and voltage-controlled oscillator
- Status: [ ]
- Module: ttl_74x4046
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4046A
- RTL: rtl/chips/ttl_74x4046/ttl_74x4046.sv
- Testbench: tb/chips/ttl_74x4046/tb_ttl_74x4046.sv
- README: rtl/chips/ttl_74x4046/README.md
- Notes:
  - (none)

### 74x4049 - hex inverting buffer
- Status: [ ]
- Module: ttl_74x4049
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4049
- RTL: rtl/chips/ttl_74x4049/ttl_74x4049.sv
- Testbench: tb/chips/ttl_74x4049/tb_ttl_74x4049.sv
- README: rtl/chips/ttl_74x4049/README.md
- Notes:
  - (none)

### 74x4050 - hex buffer/converter (non-inverting)
- Status: [ ]
- Module: ttl_74x4050
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4050
- RTL: rtl/chips/ttl_74x4050/ttl_74x4050.sv
- Testbench: tb/chips/ttl_74x4050/tb_ttl_74x4050.sv
- README: rtl/chips/ttl_74x4050/README.md
- Notes:
  - (none)

### 74x4051 - high-speed 8-channel analog multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x4051
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: analog
- Pins: 16
- Datasheet/source: CD74HC4051
- RTL: rtl/chips/ttl_74x4051/ttl_74x4051.sv
- Testbench: tb/chips/ttl_74x4051/tb_ttl_74x4051.sv
- README: rtl/chips/ttl_74x4051/README.md
- Notes:
  - (none)

### 74x4052 - dual 4-channel analog multiplexer/demultiplexers
- Status: [ ]
- Module: ttl_74x4052
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: analog
- Pins: 16
- Datasheet/source: CD74HC4052
- RTL: rtl/chips/ttl_74x4052/ttl_74x4052.sv
- Testbench: tb/chips/ttl_74x4052/tb_ttl_74x4052.sv
- README: rtl/chips/ttl_74x4052/README.md
- Notes:
  - (none)

### 74x4053 - triple 2-channel analog multiplexer/demultiplexers
- Status: [ ]
- Module: ttl_74x4053
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: analog
- Pins: 16
- Datasheet/source: CD74HC4053
- RTL: rtl/chips/ttl_74x4053/ttl_74x4053.sv
- Testbench: tb/chips/ttl_74x4053/tb_ttl_74x4053.sv
- README: rtl/chips/ttl_74x4053/README.md
- Notes:
  - (none)

### 74x4059 - programmable divide-by-N counter
- Status: [ ]
- Module: ttl_74x4059
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: CD74HC4059
- RTL: rtl/chips/ttl_74x4059/ttl_74x4059.sv
- Testbench: tb/chips/ttl_74x4059/tb_ttl_74x4059.sv
- README: rtl/chips/ttl_74x4059/README.md
- Notes:
  - (none)

### 74x4060 - 14-stage binary ripple counter with oscillator
- Status: [ ]
- Module: ttl_74x4060
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC4060
- RTL: rtl/chips/ttl_74x4060/ttl_74x4060.sv
- Testbench: tb/chips/ttl_74x4060/tb_ttl_74x4060.sv
- README: rtl/chips/ttl_74x4060/README.md
- Notes:
  - (none)

### 74x4061 - 14-stage asynchronous binary counter with oscillator
- Status: [ ]
- Module: ttl_74x4061
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC4061
- RTL: rtl/chips/ttl_74x4061/ttl_74x4061.sv
- Testbench: tb/chips/ttl_74x4061/tb_ttl_74x4061.sv
- README: rtl/chips/ttl_74x4061/README.md
- Notes:
  - (none)

### 74x4066 - quad single-pole single-throw analog switch
- Status: [ ]
- Module: ttl_74x4066
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC4066
- RTL: rtl/chips/ttl_74x4066/ttl_74x4066.sv
- Testbench: tb/chips/ttl_74x4066/tb_ttl_74x4066.sv
- README: rtl/chips/ttl_74x4066/README.md
- Notes:
  - (none)

### 74x4067 - 16-channel analog multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x4067
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: analog
- Pins: 24
- Datasheet/source: CD74HC4067
- RTL: rtl/chips/ttl_74x4067/ttl_74x4067.sv
- Testbench: tb/chips/ttl_74x4067/tb_ttl_74x4067.sv
- README: rtl/chips/ttl_74x4067/README.md
- Notes:
  - (none)

### 74x4072 - dual 4-input OR gate
- Status: [ ]
- Module: ttl_74x4072
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: TC74HC4072
- RTL: rtl/chips/ttl_74x4072/ttl_74x4072.sv
- Testbench: tb/chips/ttl_74x4072/tb_ttl_74x4072.sv
- README: rtl/chips/ttl_74x4072/README.md
- Notes:
  - (none)

### 74x4075 - triple 3-input OR gate
- Status: [ ]
- Module: ttl_74x4075
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: CD74HC4075
- RTL: rtl/chips/ttl_74x4075/ttl_74x4075.sv
- Testbench: tb/chips/ttl_74x4075/tb_ttl_74x4075.sv
- README: rtl/chips/ttl_74x4075/README.md
- Notes:
  - (none)

### 74x4078 - single 8-input OR/NOR gate
- Status: [ ]
- Module: ttl_74x4078
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: MM74HC4078
- RTL: rtl/chips/ttl_74x4078/ttl_74x4078.sv
- Testbench: tb/chips/ttl_74x4078/tb_ttl_74x4078.sv
- README: rtl/chips/ttl_74x4078/README.md
- Notes:
  - (none)

### 74x4094 - 8-bit three-state shift register/latch
- Status: [ ]
- Module: ttl_74x4094
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: CD74HC4094
- RTL: rtl/chips/ttl_74x4094/ttl_74x4094.sv
- Testbench: tb/chips/ttl_74x4094/tb_ttl_74x4094.sv
- README: rtl/chips/ttl_74x4094/README.md
- Notes:
  - (none)

### 74x4102 - 2-digit BCD presettable synchronous down counter
- Status: [ ]
- Module: ttl_74x4102
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HC4102
- RTL: rtl/chips/ttl_74x4102/ttl_74x4102.sv
- Testbench: tb/chips/ttl_74x4102/tb_ttl_74x4102.sv
- README: rtl/chips/ttl_74x4102/README.md
- Notes:
  - (none)

### 74x4103 - 8-bit binary presettable synchronous down counter
- Status: [ ]
- Module: ttl_74x4103
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HC4103
- RTL: rtl/chips/ttl_74x4103/ttl_74x4103.sv
- Testbench: tb/chips/ttl_74x4103/tb_ttl_74x4103.sv
- README: rtl/chips/ttl_74x4103/README.md
- Notes:
  - (none)

### 74x4245 - 8-bit 3V/5V translating transceiver
- Status: [ ]
- Module: ttl_74x4245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (24)
- Datasheet/source: 74LVX4245
- RTL: rtl/chips/ttl_74x4245/ttl_74x4245.sv
- Testbench: tb/chips/ttl_74x4245/tb_ttl_74x4245.sv
- README: rtl/chips/ttl_74x4245/README.md
- Notes:
  - (none)

### 74x4301 - 8-bit latch, inverting
- Status: [ ]
- Module: ttl_74x4301
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4301
- RTL: rtl/chips/ttl_74x4301/ttl_74x4301.sv
- Testbench: tb/chips/ttl_74x4301/tb_ttl_74x4301.sv
- README: rtl/chips/ttl_74x4301/README.md
- Notes:
  - (none)

### 74x4302 - 8-bit latch, non-inverting
- Status: [ ]
- Module: ttl_74x4302
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4302
- RTL: rtl/chips/ttl_74x4302/ttl_74x4302.sv
- Testbench: tb/chips/ttl_74x4302/tb_ttl_74x4302.sv
- README: rtl/chips/ttl_74x4302/README.md
- Notes:
  - (none)

### 74x4303 - 8-bit D-type flip-flop, inverting outputs
- Status: [ ]
- Module: ttl_74x4303
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4303
- RTL: rtl/chips/ttl_74x4303/ttl_74x4303.sv
- Testbench: tb/chips/ttl_74x4303/tb_ttl_74x4303.sv
- README: rtl/chips/ttl_74x4303/README.md
- Notes:
  - (none)

### 74x4304 - 8-bit D-type flip-flop, non-inverting outputs
- Status: [ ]
- Module: ttl_74x4304
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4304
- RTL: rtl/chips/ttl_74x4304/ttl_74x4304.sv
- Testbench: tb/chips/ttl_74x4304/tb_ttl_74x4304.sv
- README: rtl/chips/ttl_74x4304/README.md
- Notes:
  - (none)

### 74x4305 - dual 4-bit buffer, inverting
- Status: [ ]
- Module: ttl_74x4305
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4305
- RTL: rtl/chips/ttl_74x4305/ttl_74x4305.sv
- Testbench: tb/chips/ttl_74x4305/tb_ttl_74x4305.sv
- README: rtl/chips/ttl_74x4305/README.md
- Notes:
  - (none)

### 74x4306 - dual 4-bit buffer, non-inverting
- Status: [ ]
- Module: ttl_74x4306
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MN74HC4306
- RTL: rtl/chips/ttl_74x4306/ttl_74x4306.sv
- Testbench: tb/chips/ttl_74x4306/tb_ttl_74x4306.sv
- README: rtl/chips/ttl_74x4306/README.md
- Notes:
  - (none)

### 74x4316 - quad analog switch
- Status: [ ]
- Module: ttl_74x4316
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: analog
- Pins: 14
- Datasheet/source: MM74HC4316
- RTL: rtl/chips/ttl_74x4316/ttl_74x4316.sv
- Testbench: tb/chips/ttl_74x4316/tb_ttl_74x4316.sv
- README: rtl/chips/ttl_74x4316/README.md
- Notes:
  - (none)

### 74x4351 - 8-channel analog multiplexer/demultiplexer with latch
- Status: [ ]
- Module: ttl_74x4351
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: analog
- Pins: 20
- Datasheet/source: CD74HC4351
- RTL: rtl/chips/ttl_74x4351/ttl_74x4351.sv
- Testbench: tb/chips/ttl_74x4351/tb_ttl_74x4351.sv
- README: rtl/chips/ttl_74x4351/README.md
- Notes:
  - (none)

### 74x4352 - dual 4-channel analog multiplexer/demultiplexer with latch
- Status: [ ]
- Module: ttl_74x4352
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: analog
- Pins: 20
- Datasheet/source: CD74HC4352
- RTL: rtl/chips/ttl_74x4352/ttl_74x4352.sv
- Testbench: tb/chips/ttl_74x4352/tb_ttl_74x4352.sv
- README: rtl/chips/ttl_74x4352/README.md
- Notes:
  - (none)

### 74x4353 - triple 2-channel analog multiplexer/demultiplexer with latch
- Status: [ ]
- Module: ttl_74x4353
- Aliases: none
- Source section: Larger footprints
- Units: 3
- Input features: 
- Output features: analog
- Pins: 20
- Datasheet/source: MC74HC4353
- RTL: rtl/chips/ttl_74x4353/ttl_74x4353.sv
- Testbench: tb/chips/ttl_74x4353/tb_ttl_74x4353.sv
- README: rtl/chips/ttl_74x4353/README.md
- Notes:
  - (none)

### 74x4374 - 8-bit dual-rank synchronizer
- Status: [ ]
- Module: ttl_74x4374
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74AS4374
- RTL: rtl/chips/ttl_74x4374/ttl_74x4374.sv
- Testbench: tb/chips/ttl_74x4374/tb_ttl_74x4374.sv
- README: rtl/chips/ttl_74x4374/README.md
- Notes:
  - (none)

### 74x4503 - controller for 64k/256k/1M dynamic RAM
- Status: [ ]
- Module: ttl_74x4503
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 52
- Datasheet/source: SN74ACT4503
- RTL: rtl/chips/ttl_74x4503/ttl_74x4503.sv
- Testbench: tb/chips/ttl_74x4503/tb_ttl_74x4503.sv
- README: rtl/chips/ttl_74x4503/README.md
- Notes:
  - (none)

### 74x4510 - BCD decade up/down counter
- Status: [ ]
- Module: ttl_74x4510
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4510
- RTL: rtl/chips/ttl_74x4510/ttl_74x4510.sv
- Testbench: tb/chips/ttl_74x4510/tb_ttl_74x4510.sv
- README: rtl/chips/ttl_74x4510/README.md
- Notes:
  - (none)

### 74x4511 - BCD to 7-segment decoder
- Status: [ ]
- Module: ttl_74x4511
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4511
- RTL: rtl/chips/ttl_74x4511/ttl_74x4511.sv
- Testbench: tb/chips/ttl_74x4511/tb_ttl_74x4511.sv
- README: rtl/chips/ttl_74x4511/README.md
- Notes:
  - (none)

### 74x4514 - 4-to-16 line decoder/demultiplexer, input latches
- Status: [ ]
- Module: ttl_74x4514
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: CD74HC4514
- RTL: rtl/chips/ttl_74x4514/ttl_74x4514.sv
- Testbench: tb/chips/ttl_74x4514/tb_ttl_74x4514.sv
- README: rtl/chips/ttl_74x4514/README.md
- Notes:
  - (none)

### 74x4515 - 4-to-16 line decoder/demultiplexer with input latches; inverting
- Status: [ ]
- Module: ttl_74x4515
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: CD74HC4515
- RTL: rtl/chips/ttl_74x4515/ttl_74x4515.sv
- Testbench: tb/chips/ttl_74x4515/tb_ttl_74x4515.sv
- README: rtl/chips/ttl_74x4515/README.md
- Notes:
  - (none)

### 74x4516 - 4-bit binary up/down counter
- Status: [ ]
- Module: ttl_74x4516
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4516
- RTL: rtl/chips/ttl_74x4516/ttl_74x4516.sv
- Testbench: tb/chips/ttl_74x4516/tb_ttl_74x4516.sv
- README: rtl/chips/ttl_74x4516/README.md
- Notes:
  - (none)

### 74x4518 - dual 4-bit synchronous decade counter
- Status: [ ]
- Module: ttl_74x4518
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4518
- RTL: rtl/chips/ttl_74x4518/ttl_74x4518.sv
- Testbench: tb/chips/ttl_74x4518/tb_ttl_74x4518.sv
- README: rtl/chips/ttl_74x4518/README.md
- Notes:
  - (none)

### 74x4520 - dual 4-bit synchronous binary counter
- Status: [ ]
- Module: ttl_74x4520
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4520
- RTL: rtl/chips/ttl_74x4520/ttl_74x4520.sv
- Testbench: tb/chips/ttl_74x4520/tb_ttl_74x4520.sv
- README: rtl/chips/ttl_74x4520/README.md
- Notes:
  - (none)

### 74x4538 - dual retriggerable precision monostable multivibrator
- Status: [ ]
- Module: ttl_74x4538
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4538
- RTL: rtl/chips/ttl_74x4538/ttl_74x4538.sv
- Testbench: tb/chips/ttl_74x4538/tb_ttl_74x4538.sv
- README: rtl/chips/ttl_74x4538/README.md
- Notes:
  - (none)

### 74x4543 - BCD to 7-segment latch/decoder/driver for LCDs
- Status: [ ]
- Module: ttl_74x4543
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC4543
- RTL: rtl/chips/ttl_74x4543/ttl_74x4543.sv
- Testbench: tb/chips/ttl_74x4543/tb_ttl_74x4543.sv
- README: rtl/chips/ttl_74x4543/README.md
- Notes:
  - (none)

### 74x4560 - 4-bit BCD adder
- Status: [ ]
- Module: ttl_74x4560
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: MM74HC4560
- RTL: rtl/chips/ttl_74x4560/ttl_74x4560.sv
- Testbench: tb/chips/ttl_74x4560/tb_ttl_74x4560.sv
- README: rtl/chips/ttl_74x4560/README.md
- Notes:
  - (none)

### 74x4724 - 8-bit addressable latch
- Status: [ ]
- Module: ttl_74x4724
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74HC4724
- RTL: rtl/chips/ttl_74x4724/ttl_74x4724.sv
- Testbench: tb/chips/ttl_74x4724/tb_ttl_74x4724.sv
- README: rtl/chips/ttl_74x4724/README.md
- Notes:
  - (none)

### 74x4764 - programmable dRAM controller
- Status: [ ]
- Module: ttl_74x4764
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (100)
- Datasheet/source: 74ABT4764
- RTL: rtl/chips/ttl_74x4764/ttl_74x4764.sv
- Testbench: tb/chips/ttl_74x4764/tb_ttl_74x4764.sv
- README: rtl/chips/ttl_74x4764/README.md
- Notes:
  - (none)

### 74x4799 - Timer for NiCd and NiMH chargers
- Status: [ ]
- Module: ttl_74x4799
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: open-collector and three-state
- Pins: 16
- Datasheet/source: 74LV4799
- RTL: rtl/chips/ttl_74x4799/ttl_74x4799.sv
- Testbench: tb/chips/ttl_74x4799/tb_ttl_74x4799.sv
- README: rtl/chips/ttl_74x4799/README.md
- Notes:
  - (none)

### 74x4851 - 8-channel analog multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x4851
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: analog
- Pins: 16
- Datasheet/source: SN74HC4851
- RTL: rtl/chips/ttl_74x4851/ttl_74x4851.sv
- Testbench: tb/chips/ttl_74x4851/tb_ttl_74x4851.sv
- README: rtl/chips/ttl_74x4851/README.md
- Notes:
  - (none)

### 74x4852 - dual 4-channel analog multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x4852
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: analog
- Pins: 16
- Datasheet/source: SN74HC4852
- RTL: rtl/chips/ttl_74x4852/ttl_74x4852.sv
- Testbench: tb/chips/ttl_74x4852/tb_ttl_74x4852.sv
- README: rtl/chips/ttl_74x4852/README.md
- Notes:
  - (none)

### 74x5074 - dual positive edge-triggered D-type flip-flop (metastable immune)
- Status: [ ]
- Module: ttl_74x5074
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: 74ABT5074
- RTL: rtl/chips/ttl_74x5074/ttl_74x5074.sv
- Testbench: tb/chips/ttl_74x5074/tb_ttl_74x5074.sv
- README: rtl/chips/ttl_74x5074/README.md
- Notes:
  - (none)

### 74x5245 - octal bidirectional transceiver
- Status: [ ]
- Module: ttl_74x5245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: DM74ALS5245
- RTL: rtl/chips/ttl_74x5245/ttl_74x5245.sv
- Testbench: tb/chips/ttl_74x5245/tb_ttl_74x5245.sv
- README: rtl/chips/ttl_74x5245/README.md
- Notes:
  - (none)

### 74x5300 - fiber optic LED driver
- Status: [ ]
- Module: ttl_74x5300
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: driver 120 mA
- Pins: 8
- Datasheet/source: 74F5300
- RTL: rtl/chips/ttl_74x5300/ttl_74x5300.sv
- Testbench: tb/chips/ttl_74x5300/tb_ttl_74x5300.sv
- README: rtl/chips/ttl_74x5300/README.md
- Notes:
  - (none)

### 74x5302 - dual fiber optic LED / clock driver
- Status: [ ]
- Module: ttl_74x5302
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: driver 160 mA
- Pins: 14
- Datasheet/source: 74F5302
- RTL: rtl/chips/ttl_74x5302/ttl_74x5302.sv
- Testbench: tb/chips/ttl_74x5302/tb_ttl_74x5302.sv
- README: rtl/chips/ttl_74x5302/README.md
- Notes:
  - (none)

### 74x5400 - 11-bit line/memory driver, non-inverting
- Status: [ ]
- Module: ttl_74x5400
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74ABT5400
- RTL: rtl/chips/ttl_74x5400/ttl_74x5400.sv
- Testbench: tb/chips/ttl_74x5400/tb_ttl_74x5400.sv
- README: rtl/chips/ttl_74x5400/README.md
- Notes:
  - (none)

### 74x5401 - 11-bit line/memory driver, inverting
- Status: [ ]
- Module: ttl_74x5401
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74ABT5401
- RTL: rtl/chips/ttl_74x5401/ttl_74x5401.sv
- Testbench: tb/chips/ttl_74x5401/tb_ttl_74x5401.sv
- README: rtl/chips/ttl_74x5401/README.md
- Notes:
  - (none)

### 74x5402 - 12-bit line/memory driver, non-inverting
- Status: [ ]
- Module: ttl_74x5402
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74ABT5402
- RTL: rtl/chips/ttl_74x5402/ttl_74x5402.sv
- Testbench: tb/chips/ttl_74x5402/tb_ttl_74x5402.sv
- README: rtl/chips/ttl_74x5402/README.md
- Notes:
  - (none)

### 74x5403 - 12-bit line/memory driver, inverting
- Status: [ ]
- Module: ttl_74x5403
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state, 25 Ω series resistor
- Pins: 28
- Datasheet/source: SN74ABT5403
- RTL: rtl/chips/ttl_74x5403/ttl_74x5403.sv
- Testbench: tb/chips/ttl_74x5403/tb_ttl_74x5403.sv
- README: rtl/chips/ttl_74x5403/README.md
- Notes:
  - (none)

### 74x5555 - programmable delay timer with oscillator
- Status: [ ]
- Module: ttl_74x5555
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HC5555
- RTL: rtl/chips/ttl_74x5555/ttl_74x5555.sv
- Testbench: tb/chips/ttl_74x5555/tb_ttl_74x5555.sv
- README: rtl/chips/ttl_74x5555/README.md
- Notes:
  - (none)

### 74x5620 - octal bidirectional transceiver
- Status: [ ]
- Module: ttl_74x5620
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: DM74ALS5620
- RTL: rtl/chips/ttl_74x5620/ttl_74x5620.sv
- Testbench: tb/chips/ttl_74x5620/tb_ttl_74x5620.sv
- README: rtl/chips/ttl_74x5620/README.md
- Notes:
  - (none)

### 74x6000 - logic-to-logic optocoupler, non-inverting
- Status: [ ]
- Module: ttl_74x6000
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: 74OL6000
- RTL: rtl/chips/ttl_74x6000/ttl_74x6000.sv
- Testbench: tb/chips/ttl_74x6000/tb_ttl_74x6000.sv
- README: rtl/chips/ttl_74x6000/README.md
- Notes:
  - (none)

### 74x6001 - logic-to-logic optocoupler, inverting
- Status: [ ]
- Module: ttl_74x6001
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: 74OL6001
- RTL: rtl/chips/ttl_74x6001/ttl_74x6001.sv
- Testbench: tb/chips/ttl_74x6001/tb_ttl_74x6001.sv
- README: rtl/chips/ttl_74x6001/README.md
- Notes:
  - (none)

### 74x6010 - logic-to-logic optocoupler, non-inverting
- Status: [ ]
- Module: ttl_74x6010
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V
- Pins: 6
- Datasheet/source: 74OL6010
- RTL: rtl/chips/ttl_74x6010/ttl_74x6010.sv
- Testbench: tb/chips/ttl_74x6010/tb_ttl_74x6010.sv
- README: rtl/chips/ttl_74x6010/README.md
- Notes:
  - (none)

### 74x6011 - logic-to-logic optocoupler, inverting
- Status: [ ]
- Module: ttl_74x6011
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: open-collector 15 V
- Pins: 6
- Datasheet/source: 74OL6011
- RTL: rtl/chips/ttl_74x6011/ttl_74x6011.sv
- Testbench: tb/chips/ttl_74x6011/tb_ttl_74x6011.sv
- README: rtl/chips/ttl_74x6011/README.md
- Notes:
  - (none)

### 74x6300 - programmable dynamic memory refresh timer
- Status: [ ]
- Module: ttl_74x6300
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: SN74ALS6300
- RTL: rtl/chips/ttl_74x6300/ttl_74x6300.sv
- Testbench: tb/chips/ttl_74x6300/tb_ttl_74x6300.sv
- README: rtl/chips/ttl_74x6300/README.md
- Notes:
  - (none)

### 74x6301 - dynamic memory refresh controller, transparent and burst modes, for 16K, 64K, 256K, and 1M dRAM
- Status: [ ]
- Module: ttl_74x6301
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 52
- Datasheet/source: SN74ALS6301
- RTL: rtl/chips/ttl_74x6301/ttl_74x6301.sv
- Testbench: tb/chips/ttl_74x6301/tb_ttl_74x6301.sv
- README: rtl/chips/ttl_74x6301/README.md
- Notes:
  - (none)

### 74x6302 - dynamic memory refresh controller, transparent and burst modes, for 16K, 64K, 256K, and 1M dRAM
- Status: [ ]
- Module: ttl_74x6302
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 52
- Datasheet/source: SN74ALS6302
- RTL: rtl/chips/ttl_74x6302/ttl_74x6302.sv
- Testbench: tb/chips/ttl_74x6302/tb_ttl_74x6302.sv
- README: rtl/chips/ttl_74x6302/README.md
- Notes:
  - (none)

### 74x6310 - static column and page mode access detector for dRAM
- Status: [ ]
- Module: ttl_74x6310
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS6310A
- RTL: rtl/chips/ttl_74x6310/ttl_74x6310.sv
- Testbench: tb/chips/ttl_74x6310/tb_ttl_74x6310.sv
- README: rtl/chips/ttl_74x6310/README.md
- Notes:
  - (none)

### 74x6311 - static column and page mode access detector for dRAM
- Status: [ ]
- Module: ttl_74x6311
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: SN74ALS6311A
- RTL: rtl/chips/ttl_74x6311/ttl_74x6311.sv
- Testbench: tb/chips/ttl_74x6311/tb_ttl_74x6311.sv
- README: rtl/chips/ttl_74x6311/README.md
- Notes:
  - (none)

### 74x6323 - programmable ripple counter with oscillator
- Status: [ ]
- Module: ttl_74x6323
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (8)
- Datasheet/source: 74HC6323A
- RTL: rtl/chips/ttl_74x6323/ttl_74x6323.sv
- Testbench: tb/chips/ttl_74x6323/tb_ttl_74x6323.sv
- README: rtl/chips/ttl_74x6323/README.md
- Notes:
  - (none)

### 74x6364 - 64-bit flow-through error detection and correction circuit
- Status: [ ]
- Module: ttl_74x6364
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (207)
- Datasheet/source: SN74AS6364
- RTL: rtl/chips/ttl_74x6364/ttl_74x6364.sv
- Testbench: tb/chips/ttl_74x6364/tb_ttl_74x6364.sv
- README: rtl/chips/ttl_74x6364/README.md
- Notes:
  - (none)

### 74x6800 - 10-bit FET bus switch with precharge
- Status: [ ]
- Module: ttl_74x6800
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: IDT74FST6800
- RTL: rtl/chips/ttl_74x6800/ttl_74x6800.sv
- Testbench: tb/chips/ttl_74x6800/tb_ttl_74x6800.sv
- README: rtl/chips/ttl_74x6800/README.md
- Notes:
  - (none)

### 74x6845 - 8-bit FET bus switch with precharge and extended voltage range
- Status: [ ]
- Module: ttl_74x6845
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (20)
- Datasheet/source: SN74CBT6845C
- RTL: rtl/chips/ttl_74x6845/ttl_74x6845.sv
- Testbench: tb/chips/ttl_74x6845/tb_ttl_74x6845.sv
- README: rtl/chips/ttl_74x6845/README.md
- Notes:
  - (none)

### 74x7001 - quad 2-input AND gate
- Status: [ ]
- Module: ttl_74x7001
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC7001
- RTL: rtl/chips/ttl_74x7001/ttl_74x7001.sv
- Testbench: tb/chips/ttl_74x7001/tb_ttl_74x7001.sv
- README: rtl/chips/ttl_74x7001/README.md
- Notes:
  - (none)

### 74x7002 - quad 2-input NOR gate
- Status: [ ]
- Module: ttl_74x7002
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC7002
- RTL: rtl/chips/ttl_74x7002/ttl_74x7002.sv
- Testbench: tb/chips/ttl_74x7002/tb_ttl_74x7002.sv
- README: rtl/chips/ttl_74x7002/README.md
- Notes:
  - (none)

### 74x7003 - quad 2-input NAND gate
- Status: [ ]
- Module: ttl_74x7003
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: open-collector
- Pins: 14
- Datasheet/source: SN74HC7003
- RTL: rtl/chips/ttl_74x7003/ttl_74x7003.sv
- Testbench: tb/chips/ttl_74x7003/tb_ttl_74x7003.sv
- README: rtl/chips/ttl_74x7003/README.md
- Notes:
  - (none)

### 74x7006 - two inverters, one 3-input NAND, one 4-input NAND, one 3-input NOR, one 4-input NOR
- Status: [ ]
- Module: ttl_74x7006
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74HC7006
- RTL: rtl/chips/ttl_74x7006/ttl_74x7006.sv
- Testbench: tb/chips/ttl_74x7006/tb_ttl_74x7006.sv
- README: rtl/chips/ttl_74x7006/README.md
- Notes:
  - (none)

### 74x7007 - hex buffer gate
- Status: [ ]
- Module: ttl_74x7007
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: TC74HCT7007AP
- RTL: rtl/chips/ttl_74x7007/ttl_74x7007.sv
- Testbench: tb/chips/ttl_74x7007/tb_ttl_74x7007.sv
- README: rtl/chips/ttl_74x7007/README.md
- Notes:
  - (none)

### 74x7008 - two inverters, three 2-input NAND, three 2-input NOR
- Status: [ ]
- Module: ttl_74x7008
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74HC7008
- RTL: rtl/chips/ttl_74x7008/ttl_74x7008.sv
- Testbench: tb/chips/ttl_74x7008/tb_ttl_74x7008.sv
- README: rtl/chips/ttl_74x7008/README.md
- Notes:
  - (none)

### 74x7014 - hex buffer gate
- Status: [ ]
- Module: ttl_74x7014
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: 74HC7014
- RTL: rtl/chips/ttl_74x7014/ttl_74x7014.sv
- Testbench: tb/chips/ttl_74x7014/tb_ttl_74x7014.sv
- README: rtl/chips/ttl_74x7014/README.md
- Notes:
  - (none)

### 74x7022 - 4-stage ÷8 Johnson counter with power-up clear
- Status: [ ]
- Module: ttl_74x7022
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC7022
- RTL: rtl/chips/ttl_74x7022/ttl_74x7022.sv
- Testbench: tb/chips/ttl_74x7022/tb_ttl_74x7022.sv
- README: rtl/chips/ttl_74x7022/README.md
- Notes:
  - (none)

### 74x7030 - 576-bit FIFO memory (64x9)
- Status: [ ]
- Module: ttl_74x7030
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: 74HC7030
- RTL: rtl/chips/ttl_74x7030/ttl_74x7030.sv
- Testbench: tb/chips/ttl_74x7030/tb_ttl_74x7030.sv
- README: rtl/chips/ttl_74x7030/README.md
- Notes:
  - (none)

### 74x7032 - quad 2-input OR gates
- Status: [ ]
- Module: ttl_74x7032
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC7032
- RTL: rtl/chips/ttl_74x7032/ttl_74x7032.sv
- Testbench: tb/chips/ttl_74x7032/tb_ttl_74x7032.sv
- README: rtl/chips/ttl_74x7032/README.md
- Notes:
  - (none)

### 74x7038 - 9-bit bus transceiver with latch
- Status: [ ]
- Module: ttl_74x7038
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: CD74HC7038
- RTL: rtl/chips/ttl_74x7038/ttl_74x7038.sv
- Testbench: tb/chips/ttl_74x7038/tb_ttl_74x7038.sv
- README: rtl/chips/ttl_74x7038/README.md
- Notes:
  - (none)

### 74x7046 - phase-locked loop with voltage-controlled oscillator and lock detector
- Status: [ ]
- Module: ttl_74x7046
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC7046A
- RTL: rtl/chips/ttl_74x7046/ttl_74x7046.sv
- Testbench: tb/chips/ttl_74x7046/tb_ttl_74x7046.sv
- README: rtl/chips/ttl_74x7046/README.md
- Notes:
  - (none)

### 74x7060 - 14-stage binary counter with oscillator
- Status: [ ]
- Module: ttl_74x7060
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: 
- Pins: 20
- Datasheet/source: CD74AC7060
- RTL: rtl/chips/ttl_74x7060/ttl_74x7060.sv
- Testbench: tb/chips/ttl_74x7060/tb_ttl_74x7060.sv
- README: rtl/chips/ttl_74x7060/README.md
- Notes:
  - (none)

### 74x7074 - two inverters, one 2-input NAND, one 2-input NOR, two D-type flip-flops
- Status: [ ]
- Module: ttl_74x7074
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74HC7074
- RTL: rtl/chips/ttl_74x7074/ttl_74x7074.sv
- Testbench: tb/chips/ttl_74x7074/tb_ttl_74x7074.sv
- README: rtl/chips/ttl_74x7074/README.md
- Notes:
  - (none)

### 74x7075 - two inverters, two 2-input NAND, two D-type flip-flops
- Status: [ ]
- Module: ttl_74x7075
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74HC7075
- RTL: rtl/chips/ttl_74x7075/ttl_74x7075.sv
- Testbench: tb/chips/ttl_74x7075/tb_ttl_74x7075.sv
- README: rtl/chips/ttl_74x7075/README.md
- Notes:
  - (none)

### 74x7076 - two inverters, two 2-input NOR, two D-type flip-flops
- Status: [ ]
- Module: ttl_74x7076
- Aliases: none
- Source section: Larger footprints
- Units: 6
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74HC7076
- RTL: rtl/chips/ttl_74x7076/ttl_74x7076.sv
- Testbench: tb/chips/ttl_74x7076/tb_ttl_74x7076.sv
- README: rtl/chips/ttl_74x7076/README.md
- Notes:
  - (none)

### 74x7080 - 16-bit parity generator / checker
- Status: [ ]
- Module: ttl_74x7080
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: 74HCT7080
- RTL: rtl/chips/ttl_74x7080/ttl_74x7080.sv
- Testbench: tb/chips/ttl_74x7080/tb_ttl_74x7080.sv
- README: rtl/chips/ttl_74x7080/README.md
- Notes:
  - (none)

### 74x7132 - quad adjustable comparator with output latches
- Status: [ ]
- Module: ttl_74x7132
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 14
- Datasheet/source: 74HCT7132
- RTL: rtl/chips/ttl_74x7132/ttl_74x7132.sv
- Testbench: tb/chips/ttl_74x7132/tb_ttl_74x7132.sv
- README: rtl/chips/ttl_74x7132/README.md
- Notes:
  - (none)

### 74x7200 - 2304-bit FIFO memory (256x9)
- Status: [ ]
- Module: ttl_74x7200
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7200L
- RTL: rtl/chips/ttl_74x7200/ttl_74x7200.sv
- Testbench: tb/chips/ttl_74x7200/tb_ttl_74x7200.sv
- README: rtl/chips/ttl_74x7200/README.md
- Notes:
  - (none)

### 74x7201 - 4608-bit FIFO memory (512x9)
- Status: [ ]
- Module: ttl_74x7201
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7201LA
- RTL: rtl/chips/ttl_74x7201/ttl_74x7201.sv
- Testbench: tb/chips/ttl_74x7201/tb_ttl_74x7201.sv
- README: rtl/chips/ttl_74x7201/README.md
- Notes:
  - (none)

### 74x7202 - 9216-bit FIFO memory (1024x9)
- Status: [ ]
- Module: ttl_74x7202
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7202LA
- RTL: rtl/chips/ttl_74x7202/ttl_74x7202.sv
- Testbench: tb/chips/ttl_74x7202/tb_ttl_74x7202.sv
- README: rtl/chips/ttl_74x7202/README.md
- Notes:
  - (none)

### 74x7203 - 18432-bit FIFO memory (2048x9)
- Status: [ ]
- Module: ttl_74x7203
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7203L
- RTL: rtl/chips/ttl_74x7203/ttl_74x7203.sv
- Testbench: tb/chips/ttl_74x7203/tb_ttl_74x7203.sv
- README: rtl/chips/ttl_74x7203/README.md
- Notes:
  - (none)

### 74ACT7204 - 36864-bit FIFO memory (4096x9)
- Status: [ ]
- Module: ttl_74act7204
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7204L
- RTL: rtl/chips/ttl_74act7204/ttl_74act7204.sv
- Testbench: tb/chips/ttl_74act7204/tb_ttl_74act7204.sv
- README: rtl/chips/ttl_74act7204/README.md
- Notes:
  - (none)

### 74HCU7204 - dual unbuffered inverters
- Status: [ ]
- Module: ttl_74hcu7204
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: (8)
- Datasheet/source: SN74HCU7204
- RTL: rtl/chips/ttl_74hcu7204/ttl_74hcu7204.sv
- Testbench: tb/chips/ttl_74hcu7204/tb_ttl_74hcu7204.sv
- README: rtl/chips/ttl_74hcu7204/README.md
- Notes:
  - (none)

### 74x7205 - 73728-bit FIFO memory (8192x9)
- Status: [ ]
- Module: ttl_74x7205
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7205L
- RTL: rtl/chips/ttl_74x7205/ttl_74x7205.sv
- Testbench: tb/chips/ttl_74x7205/tb_ttl_74x7205.sv
- README: rtl/chips/ttl_74x7205/README.md
- Notes:
  - (none)

### 74x7206 - 147456-bit FIFO memory (16384x9)
- Status: [ ]
- Module: ttl_74x7206
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 28
- Datasheet/source: SN74ACT7206L
- RTL: rtl/chips/ttl_74x7206/ttl_74x7206.sv
- Testbench: tb/chips/ttl_74x7206/tb_ttl_74x7206.sv
- README: rtl/chips/ttl_74x7206/README.md
- Notes:
  - (none)

### 74x7240 - octal bus buffer, inverting
- Status: [ ]
- Module: ttl_74x7240
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: TC74HC7240AP
- RTL: rtl/chips/ttl_74x7240/ttl_74x7240.sv
- Testbench: tb/chips/ttl_74x7240/tb_ttl_74x7240.sv
- README: rtl/chips/ttl_74x7240/README.md
- Notes:
  - (none)

### 74x7241 - octal bus buffer, non-inverting
- Status: [ ]
- Module: ttl_74x7241
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: TC74HC7241AP
- RTL: rtl/chips/ttl_74x7241/ttl_74x7241.sv
- Testbench: tb/chips/ttl_74x7241/tb_ttl_74x7241.sv
- README: rtl/chips/ttl_74x7241/README.md
- Notes:
  - (none)

### 74x7244 - octal bus buffer, non-inverting
- Status: [ ]
- Module: ttl_74x7244
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: TC74HC7244AP
- RTL: rtl/chips/ttl_74x7244/ttl_74x7244.sv
- Testbench: tb/chips/ttl_74x7244/tb_ttl_74x7244.sv
- README: rtl/chips/ttl_74x7244/README.md
- Notes:
  - (none)

### 74x7245 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x7245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: M74HC7245
- RTL: rtl/chips/ttl_74x7245/ttl_74x7245.sv
- Testbench: tb/chips/ttl_74x7245/tb_ttl_74x7245.sv
- README: rtl/chips/ttl_74x7245/README.md
- Notes:
  - (none)

### 74x7266 - quad 2-input XNOR gate
- Status: [ ]
- Module: ttl_74x7266
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 14
- Datasheet/source: SN74HC7266
- RTL: rtl/chips/ttl_74x7266/ttl_74x7266.sv
- Testbench: tb/chips/ttl_74x7266/tb_ttl_74x7266.sv
- README: rtl/chips/ttl_74x7266/README.md
- Notes:
  - (none)

### 74x7273 - octal positive edge-triggered D-type flip-flop with reset
- Status: [ ]
- Module: ttl_74x7273
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74HCT7273
- RTL: rtl/chips/ttl_74x7273/ttl_74x7273.sv
- Testbench: tb/chips/ttl_74x7273/tb_ttl_74x7273.sv
- README: rtl/chips/ttl_74x7273/README.md
- Notes:
  - (none)

### 74x7292 - programmable divider/timer
- Status: [ ]
- Module: ttl_74x7292
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: TC74HC7292AP
- RTL: rtl/chips/ttl_74x7292/ttl_74x7292.sv
- Testbench: tb/chips/ttl_74x7292/tb_ttl_74x7292.sv
- README: rtl/chips/ttl_74x7292/README.md
- Notes:
  - (none)

### 74x7294 - programmable divider/timer
- Status: [ ]
- Module: ttl_74x7294
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: M74HC7294
- RTL: rtl/chips/ttl_74x7294/ttl_74x7294.sv
- Testbench: tb/chips/ttl_74x7294/tb_ttl_74x7294.sv
- README: rtl/chips/ttl_74x7294/README.md
- Notes:
  - (none)

### 74x7340 - 8-bit bus driver with bidirectional registers
- Status: [ ]
- Module: ttl_74x7340
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74HC7340
- RTL: rtl/chips/ttl_74x7340/ttl_74x7340.sv
- Testbench: tb/chips/ttl_74x7340/tb_ttl_74x7340.sv
- README: rtl/chips/ttl_74x7340/README.md
- Notes:
  - (none)

### 74x7403 - 256-bit FIFO memory (64x4)
- Status: [ ]
- Module: ttl_74x7403
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: 74HC7403
- RTL: rtl/chips/ttl_74x7403/ttl_74x7403.sv
- Testbench: tb/chips/ttl_74x7403/tb_ttl_74x7403.sv
- README: rtl/chips/ttl_74x7403/README.md
- Notes:
  - (none)

### 74x7404 - 320-bit FIFO memory (64x5)
- Status: [ ]
- Module: ttl_74x7404
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 18
- Datasheet/source: 74HC7404
- RTL: rtl/chips/ttl_74x7404/ttl_74x7404.sv
- Testbench: tb/chips/ttl_74x7404/tb_ttl_74x7404.sv
- README: rtl/chips/ttl_74x7404/README.md
- Notes:
  - (none)

### 74x7540 - octal buffer/line driver, inverting
- Status: [ ]
- Module: ttl_74x7540
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: 74HC7540
- RTL: rtl/chips/ttl_74x7540/ttl_74x7540.sv
- Testbench: tb/chips/ttl_74x7540/tb_ttl_74x7540.sv
- README: rtl/chips/ttl_74x7540/README.md
- Notes:
  - (none)

### 74x7541 - octal buffer/line driver, non-inverting
- Status: [ ]
- Module: ttl_74x7541
- Aliases: none
- Source section: Larger footprints
- Units: 8
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: 74HC7541
- RTL: rtl/chips/ttl_74x7541/ttl_74x7541.sv
- Testbench: tb/chips/ttl_74x7541/tb_ttl_74x7541.sv
- README: rtl/chips/ttl_74x7541/README.md
- Notes:
  - (none)

### 74x7597 - 8-bit shift register with input latches
- Status: [ ]
- Module: ttl_74x7597
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HC7597
- RTL: rtl/chips/ttl_74x7597/ttl_74x7597.sv
- Testbench: tb/chips/ttl_74x7597/tb_ttl_74x7597.sv
- README: rtl/chips/ttl_74x7597/README.md
- Notes:
  - (none)

### 74x7623 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x7623
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-drain
- Pins: 20
- Datasheet/source: CD74AC7623
- RTL: rtl/chips/ttl_74x7623/ttl_74x7623.sv
- Testbench: tb/chips/ttl_74x7623/tb_ttl_74x7623.sv
- README: rtl/chips/ttl_74x7623/README.md
- Notes:
  - (none)

### 74x7640 - octal bus transceiver, inverting
- Status: [ ]
- Module: ttl_74x7640
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: M74HC7640
- RTL: rtl/chips/ttl_74x7640/ttl_74x7640.sv
- Testbench: tb/chips/ttl_74x7640/tb_ttl_74x7640.sv
- README: rtl/chips/ttl_74x7640/README.md
- Notes:
  - (none)

### 74x7643 - octal bus transceiver, non-inverting/inverting
- Status: [ ]
- Module: ttl_74x7643
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: M74HC7643
- RTL: rtl/chips/ttl_74x7643/ttl_74x7643.sv
- Testbench: tb/chips/ttl_74x7643/tb_ttl_74x7643.sv
- README: rtl/chips/ttl_74x7643/README.md
- Notes:
  - (none)

### 74x7645 - octal bus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x7645
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: M74HC7645
- RTL: rtl/chips/ttl_74x7645/ttl_74x7645.sv
- Testbench: tb/chips/ttl_74x7645/tb_ttl_74x7645.sv
- README: rtl/chips/ttl_74x7645/README.md
- Notes:
  - (none)

### 74x7731 - quad 64-bit static shift register
- Status: [ ]
- Module: ttl_74x7731
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HC7731
- RTL: rtl/chips/ttl_74x7731/ttl_74x7731.sv
- Testbench: tb/chips/ttl_74x7731/tb_ttl_74x7731.sv
- README: rtl/chips/ttl_74x7731/README.md
- Notes:
  - (none)

### 74x7793 - 8-bit noninverting transparent latch with readback
- Status: [ ]
- Module: ttl_74x7793
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: MC74HC7793
- RTL: rtl/chips/ttl_74x7793/ttl_74x7793.sv
- Testbench: tb/chips/ttl_74x7793/tb_ttl_74x7793.sv
- README: rtl/chips/ttl_74x7793/README.md
- Notes:
  - (none)

### 74x7801 - 18432-bit FIFO memory (1024x18), clocked
- Status: [ ]
- Module: ttl_74x7801
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7801
- RTL: rtl/chips/ttl_74x7801/ttl_74x7801.sv
- Testbench: tb/chips/ttl_74x7801/tb_ttl_74x7801.sv
- README: rtl/chips/ttl_74x7801/README.md
- Notes:
  - (none)

### 74x7802 - 18432-bit FIFO memory (1024x18)
- Status: [ ]
- Module: ttl_74x7802
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7802
- RTL: rtl/chips/ttl_74x7802/ttl_74x7802.sv
- Testbench: tb/chips/ttl_74x7802/tb_ttl_74x7802.sv
- README: rtl/chips/ttl_74x7802/README.md
- Notes:
  - (none)

### 74x7803 - 9216-bit FIFO memory (512x18), clocked
- Status: [ ]
- Module: ttl_74x7803
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7803
- RTL: rtl/chips/ttl_74x7803/ttl_74x7803.sv
- Testbench: tb/chips/ttl_74x7803/tb_ttl_74x7803.sv
- README: rtl/chips/ttl_74x7803/README.md
- Notes:
  - (none)

### 74x7804 - 9216-bit FIFO memory (512x18)
- Status: [ ]
- Module: ttl_74x7804
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7804
- RTL: rtl/chips/ttl_74x7804/ttl_74x7804.sv
- Testbench: tb/chips/ttl_74x7804/tb_ttl_74x7804.sv
- README: rtl/chips/ttl_74x7804/README.md
- Notes:
  - (none)

### 74x7805 - 4608-bit FIFO memory (256x18), clocked
- Status: [ ]
- Module: ttl_74x7805
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7805
- RTL: rtl/chips/ttl_74x7805/ttl_74x7805.sv
- Testbench: tb/chips/ttl_74x7805/tb_ttl_74x7805.sv
- README: rtl/chips/ttl_74x7805/README.md
- Notes:
  - (none)

### 74x7806 - 4608-bit FIFO memory (256x18)
- Status: [ ]
- Module: ttl_74x7806
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7806
- RTL: rtl/chips/ttl_74x7806/ttl_74x7806.sv
- Testbench: tb/chips/ttl_74x7806/tb_ttl_74x7806.sv
- README: rtl/chips/ttl_74x7806/README.md
- Notes:
  - (none)

### 74x7807 - 18432-bit FIFO memory (2048x9), clocked
- Status: [ ]
- Module: ttl_74x7807
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT7807
- RTL: rtl/chips/ttl_74x7807/ttl_74x7807.sv
- Testbench: tb/chips/ttl_74x7807/tb_ttl_74x7807.sv
- README: rtl/chips/ttl_74x7807/README.md
- Notes:
  - (none)

### 74x7808 - 18432-bit FIFO memory (2048x9)
- Status: [ ]
- Module: ttl_74x7808
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT7808
- RTL: rtl/chips/ttl_74x7808/ttl_74x7808.sv
- Testbench: tb/chips/ttl_74x7808/tb_ttl_74x7808.sv
- README: rtl/chips/ttl_74x7808/README.md
- Notes:
  - (none)

### 74x7811 - 18432-bit FIFO memory (1024x18), clocked
- Status: [ ]
- Module: ttl_74x7811
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7811
- RTL: rtl/chips/ttl_74x7811/ttl_74x7811.sv
- Testbench: tb/chips/ttl_74x7811/tb_ttl_74x7811.sv
- README: rtl/chips/ttl_74x7811/README.md
- Notes:
  - (none)

### 74x7813 - 1152-bit FIFO memory (64x18), clocked
- Status: [ ]
- Module: ttl_74x7813
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7813
- RTL: rtl/chips/ttl_74x7813/ttl_74x7813.sv
- Testbench: tb/chips/ttl_74x7813/tb_ttl_74x7813.sv
- README: rtl/chips/ttl_74x7813/README.md
- Notes:
  - (none)

### 74x7814 - 1152-bit FIFO memory (64x18)
- Status: [ ]
- Module: ttl_74x7814
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (56)
- Datasheet/source: SN74ACT7814
- RTL: rtl/chips/ttl_74x7814/ttl_74x7814.sv
- Testbench: tb/chips/ttl_74x7814/tb_ttl_74x7814.sv
- README: rtl/chips/ttl_74x7814/README.md
- Notes:
  - (none)

### 74x7815 - 4608-bit bidirectional FIFO memory(2x64x36)
- Status: [ ]
- Module: ttl_74x7815
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT7815
- RTL: rtl/chips/ttl_74x7815/ttl_74x7815.sv
- Testbench: tb/chips/ttl_74x7815/tb_ttl_74x7815.sv
- README: rtl/chips/ttl_74x7815/README.md
- Notes:
  - (none)

### 74x7816 - 4608-bit bidirectional FIFO memory(2x64x36)
- Status: [ ]
- Module: ttl_74x7816
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT7816
- RTL: rtl/chips/ttl_74x7816/ttl_74x7816.sv
- Testbench: tb/chips/ttl_74x7816/tb_ttl_74x7816.sv
- README: rtl/chips/ttl_74x7816/README.md
- Notes:
  - (none)

### 74x7817 - 2304-bit FIFO memory(64x36)
- Status: [ ]
- Module: ttl_74x7817
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT7817
- RTL: rtl/chips/ttl_74x7817/ttl_74x7817.sv
- Testbench: tb/chips/ttl_74x7817/tb_ttl_74x7817.sv
- README: rtl/chips/ttl_74x7817/README.md
- Notes:
  - (none)

### 74x7818 - 2304-bit FIFO memory(64x36)
- Status: [ ]
- Module: ttl_74x7818
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ABT7818
- RTL: rtl/chips/ttl_74x7818/ttl_74x7818.sv
- Testbench: tb/chips/ttl_74x7818/tb_ttl_74x7818.sv
- README: rtl/chips/ttl_74x7818/README.md
- Notes:
  - (none)

### 74x7819 - 18432-bit bidirectional FIFO memory (2x512x18), clocked
- Status: [ ]
- Module: ttl_74x7819
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (80)
- Datasheet/source: SN74ABT7819
- RTL: rtl/chips/ttl_74x7819/ttl_74x7819.sv
- Testbench: tb/chips/ttl_74x7819/tb_ttl_74x7819.sv
- README: rtl/chips/ttl_74x7819/README.md
- Notes:
  - (none)

### 74x7820 - 18432-bit bidirectional FIFO memory (2x512x18)
- Status: [ ]
- Module: ttl_74x7820
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (80)
- Datasheet/source: SN74ABT7820
- RTL: rtl/chips/ttl_74x7820/ttl_74x7820.sv
- Testbench: tb/chips/ttl_74x7820/tb_ttl_74x7820.sv
- README: rtl/chips/ttl_74x7820/README.md
- Notes:
  - (none)

### 74x7821 - 32768-bit bidirectional FIFO memory (2x512x32)
- Status: [ ]
- Module: ttl_74x7821
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT7821
- RTL: rtl/chips/ttl_74x7821/ttl_74x7821.sv
- Testbench: tb/chips/ttl_74x7821/tb_ttl_74x7821.sv
- README: rtl/chips/ttl_74x7821/README.md
- Notes:
  - (none)

### 74x7822 - 32768-bit bidirectional FIFO memory (2x512x32), clocked
- Status: [ ]
- Module: ttl_74x7822
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT7822
- RTL: rtl/chips/ttl_74x7822/ttl_74x7822.sv
- Testbench: tb/chips/ttl_74x7822/tb_ttl_74x7822.sv
- README: rtl/chips/ttl_74x7822/README.md
- Notes:
  - (none)

### 74x7823 - 36864-bit FIFO memory (1024x36), clocked
- Status: [ ]
- Module: ttl_74x7823
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: SN74ACT7823
- RTL: rtl/chips/ttl_74x7823/ttl_74x7823.sv
- Testbench: tb/chips/ttl_74x7823/tb_ttl_74x7823.sv
- README: rtl/chips/ttl_74x7823/README.md
- Notes:
  - (none)

### 74x7881 - 18432-bit FIFO memory (1024x18), clocked
- Status: [ ]
- Module: ttl_74x7881
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7881
- RTL: rtl/chips/ttl_74x7881/ttl_74x7881.sv
- Testbench: tb/chips/ttl_74x7881/tb_ttl_74x7881.sv
- README: rtl/chips/ttl_74x7881/README.md
- Notes:
  - (none)

### 74x7882 - 36864-bit FIFO memory (2048x18), clocked
- Status: [ ]
- Module: ttl_74x7882
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7882
- RTL: rtl/chips/ttl_74x7882/ttl_74x7882.sv
- Testbench: tb/chips/ttl_74x7882/tb_ttl_74x7882.sv
- README: rtl/chips/ttl_74x7882/README.md
- Notes:
  - (none)

### 74x7884 - 73728-bit FIFO memory (4096x18), clocked
- Status: [ ]
- Module: ttl_74x7884
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: SN74ACT7884
- RTL: rtl/chips/ttl_74x7884/ttl_74x7884.sv
- Testbench: tb/chips/ttl_74x7884/tb_ttl_74x7884.sv
- README: rtl/chips/ttl_74x7884/README.md
- Notes:
  - (none)

### 74x8003 - dual 2-input NAND gate
- Status: [ ]
- Module: ttl_74x8003
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: SN74ALS8003
- RTL: rtl/chips/ttl_74x8003/ttl_74x8003.sv
- Testbench: tb/chips/ttl_74x8003/tb_ttl_74x8003.sv
- README: rtl/chips/ttl_74x8003/README.md
- Notes:
  - (none)

### 74x8151 - 10-bit inverting/non-inverting buffer
- Status: [ ]
- Module: ttl_74x8151
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LV8151
- RTL: rtl/chips/ttl_74x8151/ttl_74x8151.sv
- Testbench: tb/chips/ttl_74x8151/tb_ttl_74x8151.sv
- README: rtl/chips/ttl_74x8151/README.md
- Notes:
  - (none)

### 74x8153 - 8-bit serial-to-parallel interface
- Status: [ ]
- Module: ttl_74x8153
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state or open-collector
- Pins: 20
- Datasheet/source: SN74LV8153
- RTL: rtl/chips/ttl_74x8153/ttl_74x8153.sv
- Testbench: tb/chips/ttl_74x8153/tb_ttl_74x8153.sv
- README: rtl/chips/ttl_74x8153/README.md
- Notes:
  - (none)

### 74x8154 - dual 16-bit counters with output registers
- Status: [ ]
- Module: ttl_74x8154
- Aliases: none
- Source section: Larger footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74LV8154
- RTL: rtl/chips/ttl_74x8154/ttl_74x8154.sv
- Testbench: tb/chips/ttl_74x8154/tb_ttl_74x8154.sv
- README: rtl/chips/ttl_74x8154/README.md
- Notes:
  - (none)

### 74x8161 - 8-bit synchronous binary counter
- Status: [ ]
- Module: ttl_74x8161
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ALS8161
- RTL: rtl/chips/ttl_74x8161/ttl_74x8161.sv
- Testbench: tb/chips/ttl_74x8161/tb_ttl_74x8161.sv
- README: rtl/chips/ttl_74x8161/README.md
- Notes:
  - (none)

### 74x8240 - octal inverting buffer with JTAG port
- Status: [ ]
- Module: ttl_74x8240
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74BCT8240A
- RTL: rtl/chips/ttl_74x8240/ttl_74x8240.sv
- Testbench: tb/chips/ttl_74x8240/tb_ttl_74x8240.sv
- README: rtl/chips/ttl_74x8240/README.md
- Notes:
  - (none)

### 74x8244 - octal non-inverting buffer with JTAG port
- Status: [ ]
- Module: ttl_74x8244
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74BCT8244A
- RTL: rtl/chips/ttl_74x8244/ttl_74x8244.sv
- Testbench: tb/chips/ttl_74x8244/tb_ttl_74x8244.sv
- README: rtl/chips/ttl_74x8244/README.md
- Notes:
  - (none)

### 74x8245 - octal bus transceiver with JTAG port
- Status: [ ]
- Module: ttl_74x8245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74ABT8245
- RTL: rtl/chips/ttl_74x8245/ttl_74x8245.sv
- Testbench: tb/chips/ttl_74x8245/tb_ttl_74x8245.sv
- README: rtl/chips/ttl_74x8245/README.md
- Notes:
  - (none)

### 74x8373 - octal D-type latch with JTAG port
- Status: [ ]
- Module: ttl_74x8373
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74BCT8373A
- RTL: rtl/chips/ttl_74x8373/ttl_74x8373.sv
- Testbench: tb/chips/ttl_74x8373/tb_ttl_74x8373.sv
- README: rtl/chips/ttl_74x8373/README.md
- Notes:
  - (none)

### 74x8374 - octal D-type edge-triggered flip-flop with JTAG port
- Status: [ ]
- Module: ttl_74x8374
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74BCT8374A
- RTL: rtl/chips/ttl_74x8374/ttl_74x8374.sv
- Testbench: tb/chips/ttl_74x8374/tb_ttl_74x8374.sv
- README: rtl/chips/ttl_74x8374/README.md
- Notes:
  - (none)

### 74x8400 - expandable error checker / corrector
- Status: [ ]
- Module: ttl_74x8400
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: SN74ALS8400
- RTL: rtl/chips/ttl_74x8400/ttl_74x8400.sv
- Testbench: tb/chips/ttl_74x8400/tb_ttl_74x8400.sv
- README: rtl/chips/ttl_74x8400/README.md
- Notes:
  - (none)

### 74x8541 - 8-bit buffer, selectable inverting/non-inverting
- Status: [ ]
- Module: ttl_74x8541
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: 20
- Datasheet/source: SN74AHC8541
- RTL: rtl/chips/ttl_74x8541/ttl_74x8541.sv
- Testbench: tb/chips/ttl_74x8541/tb_ttl_74x8541.sv
- README: rtl/chips/ttl_74x8541/README.md
- Notes:
  - (none)

### 74x8543 - octal registered bus transceiver with JTAG port
- Status: [ ]
- Module: ttl_74x8543
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ABT8543
- RTL: rtl/chips/ttl_74x8543/ttl_74x8543.sv
- Testbench: tb/chips/ttl_74x8543/tb_ttl_74x8543.sv
- README: rtl/chips/ttl_74x8543/README.md
- Notes:
  - (none)

### 74x8646 - octal bus transceiver and register with JTAG port
- Status: [ ]
- Module: ttl_74x8646
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ABT8646
- RTL: rtl/chips/ttl_74x8646/ttl_74x8646.sv
- Testbench: tb/chips/ttl_74x8646/tb_ttl_74x8646.sv
- README: rtl/chips/ttl_74x8646/README.md
- Notes:
  - (none)

### 74x8652 - octal bus transceiver and register with JTAG port
- Status: [ ]
- Module: ttl_74x8652
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ABT8652
- RTL: rtl/chips/ttl_74x8652/ttl_74x8652.sv
- Testbench: tb/chips/ttl_74x8652/tb_ttl_74x8652.sv
- README: rtl/chips/ttl_74x8652/README.md
- Notes:
  - (none)

### 74x8818 - 16-bit microprogram sequencer, cascadable
- Status: [ ]
- Module: ttl_74x8818
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (84)
- Datasheet/source: SN74ACT8818
- RTL: rtl/chips/ttl_74x8818/ttl_74x8818.sv
- Testbench: tb/chips/ttl_74x8818/tb_ttl_74x8818.sv
- README: rtl/chips/ttl_74x8818/README.md
- Notes:
  - (none)

### 74x8832 - 32-bit registered ALU
- Status: [ ]
- Module: ttl_74x8832
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (208)
- Datasheet/source: SN74ACT8832
- RTL: rtl/chips/ttl_74x8832/ttl_74x8832.sv
- Testbench: tb/chips/ttl_74x8832/tb_ttl_74x8832.sv
- README: rtl/chips/ttl_74x8832/README.md
- Notes:
  - (none)

### 74x8834 - 40-bit register file
- Status: [ ]
- Module: ttl_74x8834
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (156)
- Datasheet/source: SN74AS8834
- RTL: rtl/chips/ttl_74x8834/ttl_74x8834.sv
- Testbench: tb/chips/ttl_74x8834/tb_ttl_74x8834.sv
- README: rtl/chips/ttl_74x8834/README.md
- Notes:
  - (none)

### 74x8835 - 16-bit microprogram sequencer, cascadable
- Status: [ ]
- Module: ttl_74x8835
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (156)
- Datasheet/source: SN74AS8835
- RTL: rtl/chips/ttl_74x8835/ttl_74x8835.sv
- Testbench: tb/chips/ttl_74x8835/tb_ttl_74x8835.sv
- README: rtl/chips/ttl_74x8835/README.md
- Notes:
  - (none)

### 74x8836 - 32x32-bit multiplier/accumulator
- Status: [ ]
- Module: ttl_74x8836
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (156)
- Datasheet/source: SN74ACT8836
- RTL: rtl/chips/ttl_74x8836/ttl_74x8836.sv
- Testbench: tb/chips/ttl_74x8836/tb_ttl_74x8836.sv
- README: rtl/chips/ttl_74x8836/README.md
- Notes:
  - (none)

### 74x8837 - 64-bit floating point unit
- Status: [ ]
- Module: ttl_74x8837
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (208)
- Datasheet/source: SN74ACT8837
- RTL: rtl/chips/ttl_74x8837/ttl_74x8837.sv
- Testbench: tb/chips/ttl_74x8837/tb_ttl_74x8837.sv
- README: rtl/chips/ttl_74x8837/README.md
- Notes:
  - (none)

### 74x8838 - 64-bit barrel shifter
- Status: [ ]
- Module: ttl_74x8838
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (84)
- Datasheet/source: SN74AS8838
- RTL: rtl/chips/ttl_74x8838/ttl_74x8838.sv
- Testbench: tb/chips/ttl_74x8838/tb_ttl_74x8838.sv
- README: rtl/chips/ttl_74x8838/README.md
- Notes:
  - (none)

### 74x8839 - 32-bit shuffle/exchange network
- Status: [ ]
- Module: ttl_74x8839
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (85)
- Datasheet/source: SN74AS8839
- RTL: rtl/chips/ttl_74x8839/ttl_74x8839.sv
- Testbench: tb/chips/ttl_74x8839/tb_ttl_74x8839.sv
- README: rtl/chips/ttl_74x8839/README.md
- Notes:
  - (none)

### 74x8840 - digital crossbar switch
- Status: [ ]
- Module: ttl_74x8840
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (156)
- Datasheet/source: SN74AS8840
- RTL: rtl/chips/ttl_74x8840/ttl_74x8840.sv
- Testbench: tb/chips/ttl_74x8840/tb_ttl_74x8840.sv
- README: rtl/chips/ttl_74x8840/README.md
- Notes:
  - (none)

### 74x8841 - digital crossbar switch
- Status: [ ]
- Module: ttl_74x8841
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (156)
- Datasheet/source: SN74ACT8841
- RTL: rtl/chips/ttl_74x8841/ttl_74x8841.sv
- Testbench: tb/chips/ttl_74x8841/tb_ttl_74x8841.sv
- README: rtl/chips/ttl_74x8841/README.md
- Notes:
  - (none)

### 74x8847 - 64-bit floating point and integer unit
- Status: [ ]
- Module: ttl_74x8847
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (208)
- Datasheet/source: SN74ACT8847
- RTL: rtl/chips/ttl_74x8847/ttl_74x8847.sv
- Testbench: tb/chips/ttl_74x8847/tb_ttl_74x8847.sv
- README: rtl/chips/ttl_74x8847/README.md
- Notes:
  - (none)

### 74x8867 - 32-bit vector processor unit
- Status: [ ]
- Module: ttl_74x8867
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (208)
- Datasheet/source: SN74ACT8867
- RTL: rtl/chips/ttl_74x8867/ttl_74x8867.sv
- Testbench: tb/chips/ttl_74x8867/tb_ttl_74x8867.sv
- README: rtl/chips/ttl_74x8867/README.md
- Notes:
  - (none)

### 74x8952 - octal registered bus transceiver with JTAG port
- Status: [ ]
- Module: ttl_74x8952
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ABT8952
- RTL: rtl/chips/ttl_74x8952/ttl_74x8952.sv
- Testbench: tb/chips/ttl_74x8952/tb_ttl_74x8952.sv
- README: rtl/chips/ttl_74x8952/README.md
- Notes:
  - (none)

### 74x8960 - 8-bit bidirectional latched FutureBus transceiver, inverting
- Status: [ ]
- Module: ttl_74x8960
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 28
- Datasheet/source: 74F8960
- RTL: rtl/chips/ttl_74x8960/ttl_74x8960.sv
- Testbench: tb/chips/ttl_74x8960/tb_ttl_74x8960.sv
- README: rtl/chips/ttl_74x8960/README.md
- Notes:
  - (none)

### 74x8961 - 8-bit bidirectional latched FutureBus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x8961
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: 28
- Datasheet/source: 74F8961
- RTL: rtl/chips/ttl_74x8961/ttl_74x8961.sv
- Testbench: tb/chips/ttl_74x8961/tb_ttl_74x8961.sv
- README: rtl/chips/ttl_74x8961/README.md
- Notes:
  - (none)

### 74x8962 - 9-bit bidirectional latched FutureBus transceiver, inverting
- Status: [ ]
- Module: ttl_74x8962
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (44)
- Datasheet/source: 74F8962
- RTL: rtl/chips/ttl_74x8962/ttl_74x8962.sv
- Testbench: tb/chips/ttl_74x8962/tb_ttl_74x8962.sv
- README: rtl/chips/ttl_74x8962/README.md
- Notes:
  - (none)

### 74x8963 - 9-bit bidirectional latched FutureBus transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x8963
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (44)
- Datasheet/source: 74F8963
- RTL: rtl/chips/ttl_74x8963/ttl_74x8963.sv
- Testbench: tb/chips/ttl_74x8963/tb_ttl_74x8963.sv
- README: rtl/chips/ttl_74x8963/README.md
- Notes:
  - (none)

### 74x8965 - 9-bit bidirectional latched FutureBus transceiver, latch select
- Status: [ ]
- Module: ttl_74x8965
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (44)
- Datasheet/source: 74F8965
- RTL: rtl/chips/ttl_74x8965/ttl_74x8965.sv
- Testbench: tb/chips/ttl_74x8965/tb_ttl_74x8965.sv
- README: rtl/chips/ttl_74x8965/README.md
- Notes:
  - (none)

### 74x8966 - 9-bit bidirectional latched FutureBus transceiver, idle arbitration request / output
- Status: [ ]
- Module: ttl_74x8966
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state and open-collector
- Pins: (44)
- Datasheet/source: 74F8966
- RTL: rtl/chips/ttl_74x8966/ttl_74x8966.sv
- Testbench: tb/chips/ttl_74x8966/tb_ttl_74x8966.sv
- README: rtl/chips/ttl_74x8966/README.md
- Notes:
  - (none)

### 74x8980 - JTAG test access port master with 8-bit host interface
- Status: [ ]
- Module: ttl_74x8980
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: SN74LVT8980
- RTL: rtl/chips/ttl_74x8980/ttl_74x8980.sv
- Testbench: tb/chips/ttl_74x8980/tb_ttl_74x8980.sv
- README: rtl/chips/ttl_74x8980/README.md
- Notes:
  - (none)

### 74x8986 - linkable, multidrop-addressable JTAG transceiver
- Status: [ ]
- Module: ttl_74x8986
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: SN74LVT8986
- RTL: rtl/chips/ttl_74x8986/ttl_74x8986.sv
- Testbench: tb/chips/ttl_74x8986/tb_ttl_74x8986.sv
- README: rtl/chips/ttl_74x8986/README.md
- Notes:
  - (none)

### 74x8990 - JTAG test access port master with 16-bit host interface
- Status: [ ]
- Module: ttl_74x8990
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (44)
- Datasheet/source: SN74ACT8990
- RTL: rtl/chips/ttl_74x8990/ttl_74x8990.sv
- Testbench: tb/chips/ttl_74x8990/tb_ttl_74x8990.sv
- README: rtl/chips/ttl_74x8990/README.md
- Notes:
  - (none)

### 74x8994 - JTAG scan-controlled logic/signature analyzer
- Status: [ ]
- Module: ttl_74x8994
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: (28)
- Datasheet/source: SN74ACT8994
- RTL: rtl/chips/ttl_74x8994/ttl_74x8994.sv
- Testbench: tb/chips/ttl_74x8994/tb_ttl_74x8994.sv
- README: rtl/chips/ttl_74x8994/README.md
- Notes:
  - (none)

### 74x8996 - multidrop-addressable JTAG transceiver
- Status: [ ]
- Module: ttl_74x8996
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: SN74ABT8996
- RTL: rtl/chips/ttl_74x8996/ttl_74x8996.sv
- Testbench: tb/chips/ttl_74x8996/tb_ttl_74x8996.sv
- README: rtl/chips/ttl_74x8996/README.md
- Notes:
  - (none)

### 74x8997 - scan-controlled JTAG concatenator
- Status: [ ]
- Module: ttl_74x8997
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ACT8997
- RTL: rtl/chips/ttl_74x8997/ttl_74x8997.sv
- Testbench: tb/chips/ttl_74x8997/tb_ttl_74x8997.sv
- README: rtl/chips/ttl_74x8997/README.md
- Notes:
  - (none)

### 74x8999 - scan-controlled JTAG multiplexer
- Status: [ ]
- Module: ttl_74x8999
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 28
- Datasheet/source: SN74ACT8999
- RTL: rtl/chips/ttl_74x8999/ttl_74x8999.sv
- Testbench: tb/chips/ttl_74x8999/tb_ttl_74x8999.sv
- README: rtl/chips/ttl_74x8999/README.md
- Notes:
  - (none)

### 74x9000 - programmable timer with oscillator
- Status: [ ]
- Module: ttl_74x9000
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MC74HC9000
- RTL: rtl/chips/ttl_74x9000/ttl_74x9000.sv
- Testbench: tb/chips/ttl_74x9000/tb_ttl_74x9000.sv
- README: rtl/chips/ttl_74x9000/README.md
- Notes:
  - (none)

### 74x9014 - nine-wide buffer/line driver, inverting
- Status: [ ]
- Module: ttl_74x9014
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: Schmitt trigger
- Output features: 
- Pins: 20
- Datasheet/source: 74HC9014
- RTL: rtl/chips/ttl_74x9014/ttl_74x9014.sv
- Testbench: tb/chips/ttl_74x9014/tb_ttl_74x9014.sv
- README: rtl/chips/ttl_74x9014/README.md
- Notes:
  - (none)

### 74x9015 - nine-wide buffer/line driver, non-inverting
- Status: [ ]
- Module: ttl_74x9015
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: Schmitt trigger
- Output features: 
- Pins: 20
- Datasheet/source: 74HC9015
- RTL: rtl/chips/ttl_74x9015/ttl_74x9015.sv
- Testbench: tb/chips/ttl_74x9015/tb_ttl_74x9015.sv
- README: rtl/chips/ttl_74x9015/README.md
- Notes:
  - (none)

### 74x9034 - nine-wide buffer, inverting
- Status: [ ]
- Module: ttl_74x9034
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MC74HC9034
- RTL: rtl/chips/ttl_74x9034/ttl_74x9034.sv
- Testbench: tb/chips/ttl_74x9034/tb_ttl_74x9034.sv
- README: rtl/chips/ttl_74x9034/README.md
- Notes:
  - (none)

### 74x9035 - nine-wide buffer, noninverting
- Status: [ ]
- Module: ttl_74x9035
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: 
- Output features: 
- Pins: 20
- Datasheet/source: MC74HC9035
- RTL: rtl/chips/ttl_74x9035/ttl_74x9035.sv
- Testbench: tb/chips/ttl_74x9035/tb_ttl_74x9035.sv
- README: rtl/chips/ttl_74x9035/README.md
- Notes:
  - (none)

### 74x9046 - PLL with band gap controlled VCO
- Status: [ ]
- Module: ttl_74x9046
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: 74HCT9046
- RTL: rtl/chips/ttl_74x9046/ttl_74x9046.sv
- Testbench: tb/chips/ttl_74x9046/tb_ttl_74x9046.sv
- README: rtl/chips/ttl_74x9046/README.md
- Notes:
  - (none)

### 74x9114 - nine-wide inverter
- Status: [ ]
- Module: ttl_74x9114
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: Schmitt trigger
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74HC9114
- RTL: rtl/chips/ttl_74x9114/ttl_74x9114.sv
- Testbench: tb/chips/ttl_74x9114/tb_ttl_74x9114.sv
- README: rtl/chips/ttl_74x9114/README.md
- Notes:
  - (none)

### 74x9115 - nine-wide buffer
- Status: [ ]
- Module: ttl_74x9115
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: Schmitt trigger
- Output features: open-collector
- Pins: 20
- Datasheet/source: 74HC9115
- RTL: rtl/chips/ttl_74x9115/ttl_74x9115.sv
- Testbench: tb/chips/ttl_74x9115/tb_ttl_74x9115.sv
- README: rtl/chips/ttl_74x9115/README.md
- Notes:
  - (none)

### 74x9134 - nine-wide buffer, inverting
- Status: [ ]
- Module: ttl_74x9134
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: MC74HC9134
- RTL: rtl/chips/ttl_74x9134/ttl_74x9134.sv
- Testbench: tb/chips/ttl_74x9134/tb_ttl_74x9134.sv
- README: rtl/chips/ttl_74x9134/README.md
- Notes:
  - (none)

### 74x9135 - nine-wide buffer, noninverting
- Status: [ ]
- Module: ttl_74x9135
- Aliases: none
- Source section: Larger footprints
- Units: 9
- Input features: 
- Output features: open-collector
- Pins: 20
- Datasheet/source: MC74HC9135
- RTL: rtl/chips/ttl_74x9135/ttl_74x9135.sv
- Testbench: tb/chips/ttl_74x9135/tb_ttl_74x9135.sv
- README: rtl/chips/ttl_74x9135/README.md
- Notes:
  - (none)

### 74x9164 - 8-bit shift register (serial in/out, parallel in/out)
- Status: [ ]
- Module: ttl_74x9164
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: (16)
- Datasheet/source: TC74VHC9164
- RTL: rtl/chips/ttl_74x9164/ttl_74x9164.sv
- Testbench: tb/chips/ttl_74x9164/tb_ttl_74x9164.sv
- README: rtl/chips/ttl_74x9164/README.md
- Notes:
  - (none)

### 74x9240 - 9-bit buffer / line driver, inverting
- Status: [ ]
- Module: ttl_74x9240
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74FR9240
- RTL: rtl/chips/ttl_74x9240/ttl_74x9240.sv
- Testbench: tb/chips/ttl_74x9240/tb_ttl_74x9240.sv
- README: rtl/chips/ttl_74x9240/README.md
- Notes:
  - (none)

### 74x9244 - 9-bit buffer / line driver, non-inverting
- Status: [ ]
- Module: ttl_74x9244
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74FR9244
- RTL: rtl/chips/ttl_74x9244/ttl_74x9244.sv
- Testbench: tb/chips/ttl_74x9244/tb_ttl_74x9244.sv
- README: rtl/chips/ttl_74x9244/README.md
- Notes:
  - (none)

### 74x9245 - 9-bit bidirectional transceiver, non-inverting
- Status: [ ]
- Module: ttl_74x9245
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: 74FR9245
- RTL: rtl/chips/ttl_74x9245/ttl_74x9245.sv
- Testbench: tb/chips/ttl_74x9245/tb_ttl_74x9245.sv
- README: rtl/chips/ttl_74x9245/README.md
- Notes:
  - (none)

### 74x9323 - programmable ripple counter with oscillator
- Status: [ ]
- Module: ttl_74x9323
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (8)
- Datasheet/source: 74HC9323A
- RTL: rtl/chips/ttl_74x9323/ttl_74x9323.sv
- Testbench: tb/chips/ttl_74x9323/tb_ttl_74x9323.sv
- README: rtl/chips/ttl_74x9323/README.md
- Notes:
  - (none)

### 74x9510 - 16×16-bit multiplier/accumulator (compatible to Am29510 and TDC1010)
- Status: [ ]
- Module: ttl_74x9510
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: (68)
- Datasheet/source: 534}}
- RTL: rtl/chips/ttl_74x9510/ttl_74x9510.sv
- Testbench: tb/chips/ttl_74x9510/tb_ttl_74x9510.sv
- README: rtl/chips/ttl_74x9510/README.md
- Notes:
  - (none)

### 74x9541 - 8-bit buffer / line driver, inverting / non-inverting
- Status: [ ]
- Module: ttl_74x9541
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: three-state
- Pins: (20)
- Datasheet/source: 74AHC9541A
- RTL: rtl/chips/ttl_74x9541/ttl_74x9541.sv
- Testbench: tb/chips/ttl_74x9541/tb_ttl_74x9541.sv
- README: rtl/chips/ttl_74x9541/README.md
- Notes:
  - (none)

### 74x9595 - 8-bit shift register with latch (serial in, parallel out)
- Status: [ ]
- Module: ttl_74x9595
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: Schmitt trigger
- Output features: 
- Pins: (16)
- Datasheet/source: TC74VHC9595
- RTL: rtl/chips/ttl_74x9595/ttl_74x9595.sv
- Testbench: tb/chips/ttl_74x9595/tb_ttl_74x9595.sv
- README: rtl/chips/ttl_74x9595/README.md
- Notes:
  - (none)

### 74x40102 - presettable synchronous 2-decade BCD down counter
- Status: [ ]
- Module: ttl_74x40102
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC40102
- RTL: rtl/chips/ttl_74x40102/ttl_74x40102.sv
- Testbench: tb/chips/ttl_74x40102/tb_ttl_74x40102.sv
- README: rtl/chips/ttl_74x40102/README.md
- Notes:
  - (none)

### 74x40103 - presettable 8-bit synchronous down counter
- Status: [ ]
- Module: ttl_74x40103
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: CD74HC40103
- RTL: rtl/chips/ttl_74x40103/ttl_74x40103.sv
- Testbench: tb/chips/ttl_74x40103/tb_ttl_74x40103.sv
- README: rtl/chips/ttl_74x40103/README.md
- Notes:
  - (none)

### 74x40104 - 4-bit bidirectional universal shift register
- Status: [ ]
- Module: ttl_74x40104
- Aliases: none
- Source section: Larger footprints
- Units: 4
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: CD74HC40104
- RTL: rtl/chips/ttl_74x40104/ttl_74x40104.sv
- Testbench: tb/chips/ttl_74x40104/tb_ttl_74x40104.sv
- README: rtl/chips/ttl_74x40104/README.md
- Notes:
  - (none)

### 74x40105 - 64-bit FIFO memory (16x4)
- Status: [ ]
- Module: ttl_74x40105
- Aliases: none
- Source section: Larger footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 16
- Datasheet/source: CD74HC40105
- RTL: rtl/chips/ttl_74x40105/ttl_74x40105.sv
- Testbench: tb/chips/ttl_74x40105/tb_ttl_74x40105.sv
- README: rtl/chips/ttl_74x40105/README.md
- Notes:
  - (none)


## Section: Widebus devices

### 74x1616 - 17-bit LVTTL-to-GTLP adjustable edge rate universal bus transceiver
- Status: [ ]
- Module: ttl_74x1616
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 64
- Datasheet/source: GTLPH
- RTL: rtl/chips/ttl_74x1616/ttl_74x1616.sv
- Testbench: tb/chips/ttl_74x1616/tb_ttl_74x1616.sv
- README: rtl/chips/ttl_74x1616/README.md
- Notes:
  - (none)

### 74x1645 - 16-bit LVTTL-to-GTLP adjustable edge rate bus transceiver
- Status: [ ]
- Module: ttl_74x1645
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: GTLPH
- RTL: rtl/chips/ttl_74x1645/ttl_74x1645.sv
- Testbench: tb/chips/ttl_74x1645/tb_ttl_74x1645.sv
- README: rtl/chips/ttl_74x1645/README.md
- Notes:
  - (none)

### 74x16209 - 18-bit FET bus exchange switches
- Status: [ ]
- Module: ttl_74x16209
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16209/ttl_74x16209.sv
- Testbench: tb/chips/ttl_74x16209/tb_ttl_74x16209.sv
- README: rtl/chips/ttl_74x16209/README.md
- Notes:
  - (none)

### 74x16210 - 20-bit FET bus switch
- Status: [ ]
- Module: ttl_74x16210
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16210/ttl_74x16210.sv
- Testbench: tb/chips/ttl_74x16210/tb_ttl_74x16210.sv
- README: rtl/chips/ttl_74x16210/README.md
- Notes:
  - (none)

### 74x16211 - 24-bit FET bus switch
- Status: [ ]
- Module: ttl_74x16211
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16211/ttl_74x16211.sv
- Testbench: tb/chips/ttl_74x16211/tb_ttl_74x16211.sv
- README: rtl/chips/ttl_74x16211/README.md
- Notes:
  - (none)

### 74x16212 - 24-bit FET bus exchange switches
- Status: [ ]
- Module: ttl_74x16212
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16212/ttl_74x16212.sv
- Testbench: tb/chips/ttl_74x16212/tb_ttl_74x16212.sv
- README: rtl/chips/ttl_74x16212/README.md
- Notes:
  - (none)

### 74x16213 - 24-bit FET bus exchange switches
- Status: [ ]
- Module: ttl_74x16213
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16213/ttl_74x16213.sv
- Testbench: tb/chips/ttl_74x16213/tb_ttl_74x16213.sv
- README: rtl/chips/ttl_74x16213/README.md
- Notes:
  - (none)

### 74x16214 - 12-bit 1-of-3 FET multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x16214
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16214/ttl_74x16214.sv
- Testbench: tb/chips/ttl_74x16214/tb_ttl_74x16214.sv
- README: rtl/chips/ttl_74x16214/README.md
- Notes:
  - (none)

### 74x16222 - 22-bit voltage clamp
- Status: [ ]
- Module: ttl_74x16222
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: TVC
- RTL: rtl/chips/ttl_74x16222/ttl_74x16222.sv
- Testbench: tb/chips/ttl_74x16222/tb_ttl_74x16222.sv
- README: rtl/chips/ttl_74x16222/README.md
- Notes:
  - (none)

### 74x16232 - synchronous 16-bit 1-of-2 FET multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x16232
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16232/ttl_74x16232.sv
- Testbench: tb/chips/ttl_74x16232/tb_ttl_74x16232.sv
- README: rtl/chips/ttl_74x16232/README.md
- Notes:
  - (none)

### 74x16233 - 16-bit 1-of-2 FET multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x16233
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16233/ttl_74x16233.sv
- Testbench: tb/chips/ttl_74x16233/tb_ttl_74x16233.sv
- README: rtl/chips/ttl_74x16233/README.md
- Notes:
  - (none)

### 74x16240 - 16-bit inverting buffer/driver with grouped 4-bit output enables (all active-low)
- Status: [ ]
- Module: ttl_74x16240
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16240/ttl_74x16240.sv
- Testbench: tb/chips/ttl_74x16240/tb_ttl_74x16240.sv
- README: rtl/chips/ttl_74x16240/README.md
- Notes:
  - (none)

### 74x16241 - 16-bit non-inverting buffer/driver with grouped 4-bit output enables (1 and 4 active-low)
- Status: [ ]
- Module: ttl_74x16241
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16241/ttl_74x16241.sv
- Testbench: tb/chips/ttl_74x16241/tb_ttl_74x16241.sv
- README: rtl/chips/ttl_74x16241/README.md
- Notes:
  - (none)

### 74x16244 - 16-bit non-inverting buffer/driver with grouped 4-bit output enables (all active-low)
- Status: [ ]
- Module: ttl_74x16244
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16244/ttl_74x16244.sv
- Testbench: tb/chips/ttl_74x16244/tb_ttl_74x16244.sv
- README: rtl/chips/ttl_74x16244/README.md
- Notes:
  - (none)

### 74x16245 - 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16245/ttl_74x16245.sv
- Testbench: tb/chips/ttl_74x16245/tb_ttl_74x16245.sv
- README: rtl/chips/ttl_74x16245/README.md
- Notes:
  - (none)

### 74x16246 - 11-bit incident wave switching bus transceiver
- Status: [ ]
- Module: ttl_74x16246
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 48
- Datasheet/source: ABTE
- RTL: rtl/chips/ttl_74x16246/ttl_74x16246.sv
- Testbench: tb/chips/ttl_74x16246/tb_ttl_74x16246.sv
- README: rtl/chips/ttl_74x16246/README.md
- Notes:
  - (none)

### 74x16260 - 12-bit to 24-bit multiplexed D-type latches
- Status: [ ]
- Module: ttl_74x16260
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16260/ttl_74x16260.sv
- Testbench: tb/chips/ttl_74x16260/tb_ttl_74x16260.sv
- README: rtl/chips/ttl_74x16260/README.md
- Notes:
  - (none)

### 74x16269 - 12-bit to 24-bit registered bus exchanger
- Status: [ ]
- Module: ttl_74x16269
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16269/ttl_74x16269.sv
- Testbench: tb/chips/ttl_74x16269/tb_ttl_74x16269.sv
- README: rtl/chips/ttl_74x16269/README.md
- Notes:
  - (none)

### 74x16270 - 12-bit to 24-bit registered bus exchanger
- Status: [ ]
- Module: ttl_74x16270
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16270/ttl_74x16270.sv
- Testbench: tb/chips/ttl_74x16270/tb_ttl_74x16270.sv
- README: rtl/chips/ttl_74x16270/README.md
- Notes:
  - (none)

### 74x16271 - 12-bit to 24-bit multiplexed bus exchanger
- Status: [ ]
- Module: ttl_74x16271
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16271/ttl_74x16271.sv
- Testbench: tb/chips/ttl_74x16271/tb_ttl_74x16271.sv
- README: rtl/chips/ttl_74x16271/README.md
- Notes:
  - (none)

### 74x16282 - 18-bit to 36-bit registered bus exchanger
- Status: [ ]
- Module: ttl_74x16282
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16282/ttl_74x16282.sv
- Testbench: tb/chips/ttl_74x16282/tb_ttl_74x16282.sv
- README: rtl/chips/ttl_74x16282/README.md
- Notes:
  - (none)

### 74x16292 - 12-bit 1-of-2 FET multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x16292
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16292/ttl_74x16292.sv
- Testbench: tb/chips/ttl_74x16292/tb_ttl_74x16292.sv
- README: rtl/chips/ttl_74x16292/README.md
- Notes:
  - (none)

### 74x16334 - 16-bit universal bus driver
- Status: [ ]
- Module: ttl_74x16334
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ALVC
- RTL: rtl/chips/ttl_74x16334/ttl_74x16334.sv
- Testbench: tb/chips/ttl_74x16334/tb_ttl_74x16334.sv
- README: rtl/chips/ttl_74x16334/README.md
- Notes:
  - (none)

### 74x16344 - 1-bit to 4-bit address driver
- Status: [ ]
- Module: ttl_74x16344
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16344/ttl_74x16344.sv
- Testbench: tb/chips/ttl_74x16344/tb_ttl_74x16344.sv
- README: rtl/chips/ttl_74x16344/README.md
- Notes:
  - (none)

### 74x16373 - 16-bit transparent D-type latches
- Status: [ ]
- Module: ttl_74x16373
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16373/ttl_74x16373.sv
- Testbench: tb/chips/ttl_74x16373/tb_ttl_74x16373.sv
- README: rtl/chips/ttl_74x16373/README.md
- Notes:
  - (none)

### 74x16374 - 16-bit edge-triggered D-type flip-flops
- Status: [ ]
- Module: ttl_74x16374
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16374/ttl_74x16374.sv
- Testbench: tb/chips/ttl_74x16374/tb_ttl_74x16374.sv
- README: rtl/chips/ttl_74x16374/README.md
- Notes:
  - (none)

### 74x16377 - 16-bit edge-triggered D-type flip-flops
- Status: [ ]
- Module: ttl_74x16377
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16377/ttl_74x16377.sv
- Testbench: tb/chips/ttl_74x16377/tb_ttl_74x16377.sv
- README: rtl/chips/ttl_74x16377/README.md
- Notes:
  - (none)

### 74x16390 - 16-bit to 32-bit FET multiplexer/demultiplexer bus switch
- Status: [ ]
- Module: ttl_74x16390
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16390/ttl_74x16390.sv
- Testbench: tb/chips/ttl_74x16390/tb_ttl_74x16390.sv
- README: rtl/chips/ttl_74x16390/README.md
- Notes:
  - (none)

### 74x16409 - 9-bit 4-port universal bus exchanger
- Status: [ ]
- Module: ttl_74x16409
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16409/ttl_74x16409.sv
- Testbench: tb/chips/ttl_74x16409/tb_ttl_74x16409.sv
- README: rtl/chips/ttl_74x16409/README.md
- Notes:
  - (none)

### 74x16460 - 4-to-1 multiplexed/demultiplexed registered transceiver
- Status: [ ]
- Module: ttl_74x16460
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16460/ttl_74x16460.sv
- Testbench: tb/chips/ttl_74x16460/tb_ttl_74x16460.sv
- README: rtl/chips/ttl_74x16460/README.md
- Notes:
  - (none)

### 74x16470 - 16-bit registered transceiver
- Status: [ ]
- Module: ttl_74x16470
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16470/ttl_74x16470.sv
- Testbench: tb/chips/ttl_74x16470/tb_ttl_74x16470.sv
- README: rtl/chips/ttl_74x16470/README.md
- Notes:
  - (none)

### 74x16500 - 18-bit universal bus transceiver (registered, active low clock)
- Status: [ ]
- Module: ttl_74x16500
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16500/ttl_74x16500.sv
- Testbench: tb/chips/ttl_74x16500/tb_ttl_74x16500.sv
- README: rtl/chips/ttl_74x16500/README.md
- Notes:
  - (none)

### 74x16501 - 18-bit universal bus transceiver (registered, active high clock)
- Status: [ ]
- Module: ttl_74x16501
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16501/ttl_74x16501.sv
- Testbench: tb/chips/ttl_74x16501/tb_ttl_74x16501.sv
- README: rtl/chips/ttl_74x16501/README.md
- Notes:
  - (none)

### 74x16524 - 18-bit registered bus transceiver
- Status: [ ]
- Module: ttl_74x16524
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16524/ttl_74x16524.sv
- Testbench: tb/chips/ttl_74x16524/tb_ttl_74x16524.sv
- README: rtl/chips/ttl_74x16524/README.md
- Notes:
  - (none)

### 74x16525 - 18-bit registered bus transceiver
- Status: [ ]
- Module: ttl_74x16525
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16525/ttl_74x16525.sv
- Testbench: tb/chips/ttl_74x16525/tb_ttl_74x16525.sv
- README: rtl/chips/ttl_74x16525/README.md
- Notes:
  - (none)

### 74x16540 - 16-bit inverting buffer/driver with grouped 8-bit output enables (active-low)
- Status: [ ]
- Module: ttl_74x16540
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16540/ttl_74x16540.sv
- Testbench: tb/chips/ttl_74x16540/tb_ttl_74x16540.sv
- README: rtl/chips/ttl_74x16540/README.md
- Notes:
  - (none)

### 74x16541 - 16-bit non-inverting buffer/driver with grouped 8-bit output enables (active-low)
- Status: [ ]
- Module: ttl_74x16541
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16541/ttl_74x16541.sv
- Testbench: tb/chips/ttl_74x16541/tb_ttl_74x16541.sv
- README: rtl/chips/ttl_74x16541/README.md
- Notes:
  - (none)

### 74x16543 - 16-bit registered tranceiver
- Status: [ ]
- Module: ttl_74x16543
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16543/ttl_74x16543.sv
- Testbench: tb/chips/ttl_74x16543/tb_ttl_74x16543.sv
- README: rtl/chips/ttl_74x16543/README.md
- Notes:
  - (none)

### 74x16600 - 18-bit universal bus transceiver (registered, active low clock)
- Status: [ ]
- Module: ttl_74x16600
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16600/ttl_74x16600.sv
- Testbench: tb/chips/ttl_74x16600/tb_ttl_74x16600.sv
- README: rtl/chips/ttl_74x16600/README.md
- Notes:
  - (none)

### 74x16601 - 18-bit universal bus transceiver (registered, active high clock)
- Status: [ ]
- Module: ttl_74x16601
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16601/ttl_74x16601.sv
- Testbench: tb/chips/ttl_74x16601/tb_ttl_74x16601.sv
- README: rtl/chips/ttl_74x16601/README.md
- Notes:
  - (none)

### 74x16612 - 18-bit LVTTL-to-GTL+ universal bus transceiver
- Status: [ ]
- Module: ttl_74x16612
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: GTL
- RTL: rtl/chips/ttl_74x16612/ttl_74x16612.sv
- Testbench: tb/chips/ttl_74x16612/tb_ttl_74x16612.sv
- README: rtl/chips/ttl_74x16612/README.md
- Notes:
  - (none)

### 74x16616 - 17-bit LVTTL-to-GTL+ universal bus transceiver
- Status: [ ]
- Module: ttl_74x16616
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: GTL
- RTL: rtl/chips/ttl_74x16616/ttl_74x16616.sv
- Testbench: tb/chips/ttl_74x16616/tb_ttl_74x16616.sv
- README: rtl/chips/ttl_74x16616/README.md
- Notes:
  - (none)

### 74x16620 - 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16620
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: AC
- RTL: rtl/chips/ttl_74x16620/ttl_74x16620.sv
- Testbench: tb/chips/ttl_74x16620/tb_ttl_74x16620.sv
- README: rtl/chips/ttl_74x16620/README.md
- Notes:
  - (none)

### 74x16622 - 18-bit LVTTL-to-GTL+ bus transceiver
- Status: [ ]
- Module: ttl_74x16622
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 64
- Datasheet/source: GTL
- RTL: rtl/chips/ttl_74x16622/ttl_74x16622.sv
- Testbench: tb/chips/ttl_74x16622/tb_ttl_74x16622.sv
- README: rtl/chips/ttl_74x16622/README.md
- Notes:
  - (none)

### 74x16623 - 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16623
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16623/ttl_74x16623.sv
- Testbench: tb/chips/ttl_74x16623/tb_ttl_74x16623.sv
- README: rtl/chips/ttl_74x16623/README.md
- Notes:
  - (none)

### 74x16640 - 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16640
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16640/ttl_74x16640.sv
- Testbench: tb/chips/ttl_74x16640/tb_ttl_74x16640.sv
- README: rtl/chips/ttl_74x16640/README.md
- Notes:
  - (none)

### 74x16646 - 16-bit bus transceiver and registers
- Status: [ ]
- Module: ttl_74x16646
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16646/ttl_74x16646.sv
- Testbench: tb/chips/ttl_74x16646/tb_ttl_74x16646.sv
- README: rtl/chips/ttl_74x16646/README.md
- Notes:
  - (none)

### 74x16648 - 16-bit bus transceiver and registers
- Status: [ ]
- Module: ttl_74x16648
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16648/ttl_74x16648.sv
- Testbench: tb/chips/ttl_74x16648/tb_ttl_74x16648.sv
- README: rtl/chips/ttl_74x16648/README.md
- Notes:
  - (none)

### 74x16651 - 16-bit bus transceiver and registers
- Status: [ ]
- Module: ttl_74x16651
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16651/ttl_74x16651.sv
- Testbench: tb/chips/ttl_74x16651/tb_ttl_74x16651.sv
- README: rtl/chips/ttl_74x16651/README.md
- Notes:
  - (none)

### 74x16652 - 16-bit bus transceiver and registers
- Status: [ ]
- Module: ttl_74x16652
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16652/ttl_74x16652.sv
- Testbench: tb/chips/ttl_74x16652/tb_ttl_74x16652.sv
- README: rtl/chips/ttl_74x16652/README.md
- Notes:
  - (none)

### 74x16657 - 16-bit bus transceiver with parity generators/checkers
- Status: [ ]
- Module: ttl_74x16657
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16657/ttl_74x16657.sv
- Testbench: tb/chips/ttl_74x16657/tb_ttl_74x16657.sv
- README: rtl/chips/ttl_74x16657/README.md
- Notes:
  - (none)

### 74x16721 - 3.3-V 20-bit flip-flop
- Status: [ ]
- Module: ttl_74x16721
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16721/ttl_74x16721.sv
- Testbench: tb/chips/ttl_74x16721/tb_ttl_74x16721.sv
- README: rtl/chips/ttl_74x16721/README.md
- Notes:
  - (none)

### 74x16722 - 22-bit flip-flop
- Status: [ ]
- Module: ttl_74x16722
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x16722/ttl_74x16722.sv
- Testbench: tb/chips/ttl_74x16722/tb_ttl_74x16722.sv
- README: rtl/chips/ttl_74x16722/README.md
- Notes:
  - (none)

### 74x16800 - 20-bit FET bus switch
- Status: [ ]
- Module: ttl_74x16800
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16800/ttl_74x16800.sv
- Testbench: tb/chips/ttl_74x16800/tb_ttl_74x16800.sv
- README: rtl/chips/ttl_74x16800/README.md
- Notes:
  - (none)

### 74x16811 - 24-bit FET bus switch
- Status: [ ]
- Module: ttl_74x16811
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16811/ttl_74x16811.sv
- Testbench: tb/chips/ttl_74x16811/tb_ttl_74x16811.sv
- README: rtl/chips/ttl_74x16811/README.md
- Notes:
  - (none)

### 74x16820 - 3.3-V 10-bit flip-flop with dual outputs
- Status: [ ]
- Module: ttl_74x16820
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16820/ttl_74x16820.sv
- Testbench: tb/chips/ttl_74x16820/tb_ttl_74x16820.sv
- README: rtl/chips/ttl_74x16820/README.md
- Notes:
  - (none)

### 74x16821 - 20-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x16821
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16821/ttl_74x16821.sv
- Testbench: tb/chips/ttl_74x16821/tb_ttl_74x16821.sv
- README: rtl/chips/ttl_74x16821/README.md
- Notes:
  - (none)

### 74x16823 - 18-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x16823
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16823/ttl_74x16823.sv
- Testbench: tb/chips/ttl_74x16823/tb_ttl_74x16823.sv
- README: rtl/chips/ttl_74x16823/README.md
- Notes:
  - (none)

### 74x16825 - 18-bit non-inverting bus buffer/driver
- Status: [ ]
- Module: ttl_74x16825
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16825/ttl_74x16825.sv
- Testbench: tb/chips/ttl_74x16825/tb_ttl_74x16825.sv
- README: rtl/chips/ttl_74x16825/README.md
- Notes:
  - (none)

### 74x16826 - 18-bit inverting bus buffer/driver
- Status: [ ]
- Module: ttl_74x16826
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16826/ttl_74x16826.sv
- Testbench: tb/chips/ttl_74x16826/tb_ttl_74x16826.sv
- README: rtl/chips/ttl_74x16826/README.md
- Notes:
  - (none)

### 74x16827 - 20-bit non-inverting bus buffer/driver
- Status: [ ]
- Module: ttl_74x16827
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16827/ttl_74x16827.sv
- Testbench: tb/chips/ttl_74x16827/tb_ttl_74x16827.sv
- README: rtl/chips/ttl_74x16827/README.md
- Notes:
  - (none)

### 74x16828 - 20-bit inverting bus buffer/driver
- Status: [ ]
- Module: ttl_74x16828
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16828/ttl_74x16828.sv
- Testbench: tb/chips/ttl_74x16828/tb_ttl_74x16828.sv
- README: rtl/chips/ttl_74x16828/README.md
- Notes:
  - (none)

### 74x16831 - 1-to-4 address register/driver
- Status: [ ]
- Module: ttl_74x16831
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16831/ttl_74x16831.sv
- Testbench: tb/chips/ttl_74x16831/tb_ttl_74x16831.sv
- README: rtl/chips/ttl_74x16831/README.md
- Notes:
  - (none)

### 74x16832 - 1-to-4 address register/driver
- Status: [ ]
- Module: ttl_74x16832
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16832/ttl_74x16832.sv
- Testbench: tb/chips/ttl_74x16832/tb_ttl_74x16832.sv
- README: rtl/chips/ttl_74x16832/README.md
- Notes:
  - (none)

### 74x16833 - dual 8-bit to 9-bit parity bus transceivers
- Status: [ ]
- Module: ttl_74x16833
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16833/ttl_74x16833.sv
- Testbench: tb/chips/ttl_74x16833/tb_ttl_74x16833.sv
- README: rtl/chips/ttl_74x16833/README.md
- Notes:
  - (none)

### 74x16834 - 18-bit universal bus driver
- Status: [ ]
- Module: ttl_74x16834
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x16834/ttl_74x16834.sv
- Testbench: tb/chips/ttl_74x16834/tb_ttl_74x16834.sv
- README: rtl/chips/ttl_74x16834/README.md
- Notes:
  - (none)

### 74x16835 - 18-bit universal bus driver
- Status: [ ]
- Module: ttl_74x16835
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVC
- RTL: rtl/chips/ttl_74x16835/ttl_74x16835.sv
- Testbench: tb/chips/ttl_74x16835/tb_ttl_74x16835.sv
- README: rtl/chips/ttl_74x16835/README.md
- Notes:
  - (none)

### 74x16841 - 20-bit bus interface D-type latches
- Status: [ ]
- Module: ttl_74x16841
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16841/ttl_74x16841.sv
- Testbench: tb/chips/ttl_74x16841/tb_ttl_74x16841.sv
- README: rtl/chips/ttl_74x16841/README.md
- Notes:
  - (none)

### 74x16843 - 18-bit bus interface D-type latches
- Status: [ ]
- Module: ttl_74x16843
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16843/ttl_74x16843.sv
- Testbench: tb/chips/ttl_74x16843/tb_ttl_74x16843.sv
- README: rtl/chips/ttl_74x16843/README.md
- Notes:
  - (none)

### 74x16853 - dual 8-bit to 9-bit parity bus transceiver
- Status: [ ]
- Module: ttl_74x16853
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16853/ttl_74x16853.sv
- Testbench: tb/chips/ttl_74x16853/tb_ttl_74x16853.sv
- README: rtl/chips/ttl_74x16853/README.md
- Notes:
  - (none)

### 74x16857 - 14-bit registered buffer
- Status: [ ]
- Module: ttl_74x16857
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: SSTVF
- RTL: rtl/chips/ttl_74x16857/ttl_74x16857.sv
- Testbench: tb/chips/ttl_74x16857/tb_ttl_74x16857.sv
- README: rtl/chips/ttl_74x16857/README.md
- Notes:
  - (none)

### 74x16859 - 13-bit to 26-bit registered buffer
- Status: [ ]
- Module: ttl_74x16859
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 64
- Datasheet/source: SSTVF
- RTL: rtl/chips/ttl_74x16859/ttl_74x16859.sv
- Testbench: tb/chips/ttl_74x16859/tb_ttl_74x16859.sv
- README: rtl/chips/ttl_74x16859/README.md
- Notes:
  - (none)

### 74x16861 - 20-bit FET bus switch
- Status: [ ]
- Module: ttl_74x16861
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x16861/ttl_74x16861.sv
- Testbench: tb/chips/ttl_74x16861/tb_ttl_74x16861.sv
- README: rtl/chips/ttl_74x16861/README.md
- Notes:
  - (none)

### 74x16863 - 18-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16863
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16863/ttl_74x16863.sv
- Testbench: tb/chips/ttl_74x16863/tb_ttl_74x16863.sv
- README: rtl/chips/ttl_74x16863/README.md
- Notes:
  - (none)

### 74x16901 - 18-bit universal bus transceiver with parity generators/checkers
- Status: [ ]
- Module: ttl_74x16901
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 64
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16901/ttl_74x16901.sv
- Testbench: tb/chips/ttl_74x16901/tb_ttl_74x16901.sv
- README: rtl/chips/ttl_74x16901/README.md
- Notes:
  - (none)

### 74x16903 - 3.3-V 12-bit universal bus driver with parity checker
- Status: [ ]
- Module: ttl_74x16903
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16903/ttl_74x16903.sv
- Testbench: tb/chips/ttl_74x16903/tb_ttl_74x16903.sv
- README: rtl/chips/ttl_74x16903/README.md
- Notes:
  - (none)

### 74x16912 - 18-bit LVTTL-to-GTLP universal bus transceiver
- Status: [ ]
- Module: ttl_74x16912
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: GTLPH
- RTL: rtl/chips/ttl_74x16912/ttl_74x16912.sv
- Testbench: tb/chips/ttl_74x16912/tb_ttl_74x16912.sv
- README: rtl/chips/ttl_74x16912/README.md
- Notes:
  - (none)

### 74x16916 - 17-bit LVTTL-to-GTLP universal bus transceiver
- Status: [ ]
- Module: ttl_74x16916
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 56
- Datasheet/source: GTLPH
- RTL: rtl/chips/ttl_74x16916/ttl_74x16916.sv
- Testbench: tb/chips/ttl_74x16916/tb_ttl_74x16916.sv
- README: rtl/chips/ttl_74x16916/README.md
- Notes:
  - (none)

### 74x16923 - 18-bit LVTTL-to-GTLP universal bus transceiver
- Status: [ ]
- Module: ttl_74x16923
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 64
- Datasheet/source: GTL
- RTL: rtl/chips/ttl_74x16923/ttl_74x16923.sv
- Testbench: tb/chips/ttl_74x16923/tb_ttl_74x16923.sv
- README: rtl/chips/ttl_74x16923/README.md
- Notes:
  - (none)

### 74x16945 - 16-bit LVTTL-to-GTLP bus transceiver
- Status: [ ]
- Module: ttl_74x16945
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 48
- Datasheet/source: GTLPH
- RTL: rtl/chips/ttl_74x16945/ttl_74x16945.sv
- Testbench: tb/chips/ttl_74x16945/tb_ttl_74x16945.sv
- README: rtl/chips/ttl_74x16945/README.md
- Notes:
  - (none)

### 74x16952 - 16-bit registered transceiver
- Status: [ ]
- Module: ttl_74x16952
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x16952/ttl_74x16952.sv
- Testbench: tb/chips/ttl_74x16952/tb_ttl_74x16952.sv
- README: rtl/chips/ttl_74x16952/README.md
- Notes:
  - (none)

### 74x16973 - 8-bit bus transceiver and transparent D-type latch
- Status: [ ]
- Module: ttl_74x16973
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x16973/ttl_74x16973.sv
- Testbench: tb/chips/ttl_74x16973/tb_ttl_74x16973.sv
- README: rtl/chips/ttl_74x16973/README.md
- Notes:
  - (none)

### 74x161284 - 19-bit bus interface
- Status: [ ]
- Module: ttl_74x161284
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: open-drain with internal 1.4-kΩ pull up resistors
- Pins: 48
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x161284/ttl_74x161284.sv
- Testbench: tb/chips/ttl_74x161284/tb_ttl_74x161284.sv
- README: rtl/chips/ttl_74x161284/README.md
- Notes:
  - (none)

### 74x162240 - 3.3-V ABT 16-bit buffer/driver
- Status: [ ]
- Module: ttl_74x162240
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x162240/ttl_74x162240.sv
- Testbench: tb/chips/ttl_74x162240/tb_ttl_74x162240.sv
- README: rtl/chips/ttl_74x162240/README.md
- Notes:
  - (none)

### 74x162241 - 3.3-V ABT 16-bit buffer/driver
- Status: [ ]
- Module: ttl_74x162241
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x162241/ttl_74x162241.sv
- Testbench: tb/chips/ttl_74x162241/tb_ttl_74x162241.sv
- README: rtl/chips/ttl_74x162241/README.md
- Notes:
  - (none)

### 74x162244 - 16-bit buffer/driver
- Status: [ ]
- Module: ttl_74x162244
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162244/ttl_74x162244.sv
- Testbench: tb/chips/ttl_74x162244/tb_ttl_74x162244.sv
- README: rtl/chips/ttl_74x162244/README.md
- Notes:
  - (none)

### 74x162245 - 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x162245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVCR
- RTL: rtl/chips/ttl_74x162245/ttl_74x162245.sv
- Testbench: tb/chips/ttl_74x162245/tb_ttl_74x162245.sv
- README: rtl/chips/ttl_74x162245/README.md
- Notes:
  - (none)

### 74x162260 - 12-bit to 24-bit multiplexed D-type latch
- Status: [ ]
- Module: ttl_74x162260
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162260/ttl_74x162260.sv
- Testbench: tb/chips/ttl_74x162260/tb_ttl_74x162260.sv
- README: rtl/chips/ttl_74x162260/README.md
- Notes:
  - (none)

### 74x162268 - 12-bit to 24-bit registered bus exchanger
- Status: [ ]
- Module: ttl_74x162268
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162268/ttl_74x162268.sv
- Testbench: tb/chips/ttl_74x162268/tb_ttl_74x162268.sv
- README: rtl/chips/ttl_74x162268/README.md
- Notes:
  - (none)

### 74x162280 - 16-bit to 32-bit registered bus exchanger with byte masks
- Status: [ ]
- Module: ttl_74x162280
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCHG
- RTL: rtl/chips/ttl_74x162280/ttl_74x162280.sv
- Testbench: tb/chips/ttl_74x162280/tb_ttl_74x162280.sv
- README: rtl/chips/ttl_74x162280/README.md
- Notes:
  - (none)

### 74x162282 - 18-bit to 36-bit registered bus exchanger
- Status: [ ]
- Module: ttl_74x162282
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCHG
- RTL: rtl/chips/ttl_74x162282/ttl_74x162282.sv
- Testbench: tb/chips/ttl_74x162282/tb_ttl_74x162282.sv
- README: rtl/chips/ttl_74x162282/README.md
- Notes:
  - (none)

### 74x162292 - 12-bit 1-of-2 FET multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x162292
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: internal 500-Ω pull down resistors
- Pins: 56
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x162292/ttl_74x162292.sv
- Testbench: tb/chips/ttl_74x162292/tb_ttl_74x162292.sv
- README: rtl/chips/ttl_74x162292/README.md
- Notes:
  - (none)

### 74x162334 - 16-bit universal bus driver
- Status: [ ]
- Module: ttl_74x162334
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: ALVC
- RTL: rtl/chips/ttl_74x162334/ttl_74x162334.sv
- Testbench: tb/chips/ttl_74x162334/tb_ttl_74x162334.sv
- README: rtl/chips/ttl_74x162334/README.md
- Notes:
  - (none)

### 74x162344 - 1-bit to 4-bit address driver
- Status: [ ]
- Module: ttl_74x162344
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162344/ttl_74x162344.sv
- Testbench: tb/chips/ttl_74x162344/tb_ttl_74x162344.sv
- README: rtl/chips/ttl_74x162344/README.md
- Notes:
  - (none)

### 74x162373 - 3.3-V ABT 16-bit transparent D-type latch
- Status: [ ]
- Module: ttl_74x162373
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x162373/ttl_74x162373.sv
- Testbench: tb/chips/ttl_74x162373/tb_ttl_74x162373.sv
- README: rtl/chips/ttl_74x162373/README.md
- Notes:
  - (none)

### 74x162374 - 3.3-V ABT 16-bit edge triggered D-type flip-flop
- Status: [ ]
- Module: ttl_74x162374
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x162374/ttl_74x162374.sv
- Testbench: tb/chips/ttl_74x162374/tb_ttl_74x162374.sv
- README: rtl/chips/ttl_74x162374/README.md
- Notes:
  - (none)

### 74x162460 - 4-to-1 multiplexed/demultiplexed registered transceiver
- Status: [ ]
- Module: ttl_74x162460
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x162460/ttl_74x162460.sv
- Testbench: tb/chips/ttl_74x162460/tb_ttl_74x162460.sv
- README: rtl/chips/ttl_74x162460/README.md
- Notes:
  - (none)

### 74x162500 - 18-bit universal bus transceiver
- Status: [ ]
- Module: ttl_74x162500
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x162500/ttl_74x162500.sv
- Testbench: tb/chips/ttl_74x162500/tb_ttl_74x162500.sv
- README: rtl/chips/ttl_74x162500/README.md
- Notes:
  - (none)

### 74x162501 - 18-bit registered transceiver
- Status: [ ]
- Module: ttl_74x162501
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: FCT
- RTL: rtl/chips/ttl_74x162501/ttl_74x162501.sv
- Testbench: tb/chips/ttl_74x162501/tb_ttl_74x162501.sv
- README: rtl/chips/ttl_74x162501/README.md
- Notes:
  - (none)

### 74x162525 - 18-bit registered bus transceiver
- Status: [ ]
- Module: ttl_74x162525
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162525/ttl_74x162525.sv
- Testbench: tb/chips/ttl_74x162525/tb_ttl_74x162525.sv
- README: rtl/chips/ttl_74x162525/README.md
- Notes:
  - (none)

### 74x162541 - 3.3-V ABT 16-bit buffers/drivers
- Status: [ ]
- Module: ttl_74x162541
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x162541/ttl_74x162541.sv
- Testbench: tb/chips/ttl_74x162541/tb_ttl_74x162541.sv
- README: rtl/chips/ttl_74x162541/README.md
- Notes:
  - (none)

### 74x162543 - 16-bit latched transceiver
- Status: [ ]
- Module: ttl_74x162543
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: FCT
- RTL: rtl/chips/ttl_74x162543/ttl_74x162543.sv
- Testbench: tb/chips/ttl_74x162543/tb_ttl_74x162543.sv
- README: rtl/chips/ttl_74x162543/README.md
- Notes:
  - (none)

### 74x162601 - 18-bit universal bus tranceiver
- Status: [ ]
- Module: ttl_74x162601
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162601/ttl_74x162601.sv
- Testbench: tb/chips/ttl_74x162601/tb_ttl_74x162601.sv
- README: rtl/chips/ttl_74x162601/README.md
- Notes:
  - (none)

### 74x162646 - 16-bit registered transceiver
- Status: [ ]
- Module: ttl_74x162646
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: FCT
- RTL: rtl/chips/ttl_74x162646/ttl_74x162646.sv
- Testbench: tb/chips/ttl_74x162646/tb_ttl_74x162646.sv
- README: rtl/chips/ttl_74x162646/README.md
- Notes:
  - (none)

### 74x162652 - 16-bit registered transceiver
- Status: [ ]
- Module: ttl_74x162652
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: FCT
- RTL: rtl/chips/ttl_74x162652/ttl_74x162652.sv
- Testbench: tb/chips/ttl_74x162652/tb_ttl_74x162652.sv
- README: rtl/chips/ttl_74x162652/README.md
- Notes:
  - (none)

### 74x162721 - 3.3-V 20-bit flip-flop
- Status: [ ]
- Module: ttl_74x162721
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162721/ttl_74x162721.sv
- Testbench: tb/chips/ttl_74x162721/tb_ttl_74x162721.sv
- README: rtl/chips/ttl_74x162721/README.md
- Notes:
  - (none)

### 74x162820 - 3.3-V 10-bit flip-flop
- Status: [ ]
- Module: ttl_74x162820
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162820/ttl_74x162820.sv
- Testbench: tb/chips/ttl_74x162820/tb_ttl_74x162820.sv
- README: rtl/chips/ttl_74x162820/README.md
- Notes:
  - (none)

### 74x162821 - 20-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x162821
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVT
- RTL: rtl/chips/ttl_74x162821/ttl_74x162821.sv
- Testbench: tb/chips/ttl_74x162821/tb_ttl_74x162821.sv
- README: rtl/chips/ttl_74x162821/README.md
- Notes:
  - (none)

### 74x162823 - 18-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x162823
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x162823/ttl_74x162823.sv
- Testbench: tb/chips/ttl_74x162823/tb_ttl_74x162823.sv
- README: rtl/chips/ttl_74x162823/README.md
- Notes:
  - (none)

### 74x162825 - 18-bit buffer/driver
- Status: [ ]
- Module: ttl_74x162825
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x162825/ttl_74x162825.sv
- Testbench: tb/chips/ttl_74x162825/tb_ttl_74x162825.sv
- README: rtl/chips/ttl_74x162825/README.md
- Notes:
  - (none)

### 74x162827 - 20-bit buffer/driver
- Status: [ ]
- Module: ttl_74x162827
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x162827/ttl_74x162827.sv
- Testbench: tb/chips/ttl_74x162827/tb_ttl_74x162827.sv
- README: rtl/chips/ttl_74x162827/README.md
- Notes:
  - (none)

### 74x162830 - 1-bit to 2-bit address driver
- Status: [ ]
- Module: ttl_74x162830
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162830/ttl_74x162830.sv
- Testbench: tb/chips/ttl_74x162830/tb_ttl_74x162830.sv
- README: rtl/chips/ttl_74x162830/README.md
- Notes:
  - (none)

### 74x162831 - 1-bit to 4-bit address register/driver
- Status: [ ]
- Module: ttl_74x162831
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 80
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162831/ttl_74x162831.sv
- Testbench: tb/chips/ttl_74x162831/tb_ttl_74x162831.sv
- README: rtl/chips/ttl_74x162831/README.md
- Notes:
  - (none)

### 74x162832 - 1-bit to 4-bit address register/driver
- Status: [ ]
- Module: ttl_74x162832
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162832/ttl_74x162832.sv
- Testbench: tb/chips/ttl_74x162832/tb_ttl_74x162832.sv
- README: rtl/chips/ttl_74x162832/README.md
- Notes:
  - (none)

### 74x162834 - 3.3-V CMOS 18-bit universal bus driver
- Status: [ ]
- Module: ttl_74x162834
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCF
- RTL: rtl/chips/ttl_74x162834/ttl_74x162834.sv
- Testbench: tb/chips/ttl_74x162834/tb_ttl_74x162834.sv
- README: rtl/chips/ttl_74x162834/README.md
- Notes:
  - (none)

### 74x162835 - 18-bit universal bus driver
- Status: [ ]
- Module: ttl_74x162835
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVC
- RTL: rtl/chips/ttl_74x162835/ttl_74x162835.sv
- Testbench: tb/chips/ttl_74x162835/tb_ttl_74x162835.sv
- README: rtl/chips/ttl_74x162835/README.md
- Notes:
  - (none)

### 74x162836 - 20-bit universal bus driver
- Status: [ ]
- Module: ttl_74x162836
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162836/ttl_74x162836.sv
- Testbench: tb/chips/ttl_74x162836/tb_ttl_74x162836.sv
- README: rtl/chips/ttl_74x162836/README.md
- Notes:
  - (none)

### 74x162841 - 20-bit bus interface D-type latch
- Status: [ ]
- Module: ttl_74x162841
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ALVCH
- RTL: rtl/chips/ttl_74x162841/ttl_74x162841.sv
- Testbench: tb/chips/ttl_74x162841/tb_ttl_74x162841.sv
- README: rtl/chips/ttl_74x162841/README.md
- Notes:
  - (none)

### 74x164245 - 16-bit dual supply bus transceiver
- Status: [ ]
- Module: ttl_74x164245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: AVCA
- RTL: rtl/chips/ttl_74x164245/ttl_74x164245.sv
- Testbench: tb/chips/ttl_74x164245/tb_ttl_74x164245.sv
- README: rtl/chips/ttl_74x164245/README.md
- Notes:
  - (none)

### 74x18245 - scan test devices with 18-bit bus transceivers
- Status: [ ]
- Module: ttl_74x18245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x18245/ttl_74x18245.sv
- Testbench: tb/chips/ttl_74x18245/tb_ttl_74x18245.sv
- README: rtl/chips/ttl_74x18245/README.md
- Notes:
  - (none)

### 74x18502 - scan test devices with 18-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x18502
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x18502/ttl_74x18502.sv
- Testbench: tb/chips/ttl_74x18502/tb_ttl_74x18502.sv
- README: rtl/chips/ttl_74x18502/README.md
- Notes:
  - (none)

### 74x18504 - scan test devices with 20-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x18504
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x18504/ttl_74x18504.sv
- Testbench: tb/chips/ttl_74x18504/tb_ttl_74x18504.sv
- README: rtl/chips/ttl_74x18504/README.md
- Notes:
  - (none)

### 74x18512 - scan test devices with 18-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x18512
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x18512/ttl_74x18512.sv
- Testbench: tb/chips/ttl_74x18512/tb_ttl_74x18512.sv
- README: rtl/chips/ttl_74x18512/README.md
- Notes:
  - (none)

### 74x18640 - scan test devices with 18-bit inverting bus transceivers
- Status: [ ]
- Module: ttl_74x18640
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x18640/ttl_74x18640.sv
- Testbench: tb/chips/ttl_74x18640/tb_ttl_74x18640.sv
- README: rtl/chips/ttl_74x18640/README.md
- Notes:
  - (none)

### 74x18646 - scan test devices with 18-bit transceivers and registers
- Status: [ ]
- Module: ttl_74x18646
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x18646/ttl_74x18646.sv
- Testbench: tb/chips/ttl_74x18646/tb_ttl_74x18646.sv
- README: rtl/chips/ttl_74x18646/README.md
- Notes:
  - (none)

### 74x18652 - scan test devices with 18-bit transceivers and registers
- Status: [ ]
- Module: ttl_74x18652
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x18652/ttl_74x18652.sv
- Testbench: tb/chips/ttl_74x18652/tb_ttl_74x18652.sv
- README: rtl/chips/ttl_74x18652/README.md
- Notes:
  - (none)

### 74x182502 - scan test devices with 18-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x182502
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x182502/ttl_74x182502.sv
- Testbench: tb/chips/ttl_74x182502/tb_ttl_74x182502.sv
- README: rtl/chips/ttl_74x182502/README.md
- Notes:
  - (none)

### 74x182504 - scan test devices with 20-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x182504
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x182504/ttl_74x182504.sv
- Testbench: tb/chips/ttl_74x182504/tb_ttl_74x182504.sv
- README: rtl/chips/ttl_74x182504/README.md
- Notes:
  - (none)

### 74x182512 - scan test devices with 18-bit universal bus transceivers
- Status: [ ]
- Module: ttl_74x182512
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 64
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x182512/ttl_74x182512.sv
- Testbench: tb/chips/ttl_74x182512/tb_ttl_74x182512.sv
- README: rtl/chips/ttl_74x182512/README.md
- Notes:
  - (none)

### 74x182646 - scan test devices with 18-bit transceivers and registers
- Status: [ ]
- Module: ttl_74x182646
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x182646/ttl_74x182646.sv
- Testbench: tb/chips/ttl_74x182646/tb_ttl_74x182646.sv
- README: rtl/chips/ttl_74x182646/README.md
- Notes:
  - (none)

### 74x182652 - scan test devices with 18-bit transceivers and registers
- Status: [ ]
- Module: ttl_74x182652
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (64)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x182652/ttl_74x182652.sv
- Testbench: tb/chips/ttl_74x182652/tb_ttl_74x182652.sv
- README: rtl/chips/ttl_74x182652/README.md
- Notes:
  - (none)

### 74x20245 - 20-bit dual supply bus transceiver
- Status: [ ]
- Module: ttl_74x20245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 56
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x20245/ttl_74x20245.sv
- Testbench: tb/chips/ttl_74x20245/tb_ttl_74x20245.sv
- README: rtl/chips/ttl_74x20245/README.md
- Notes:
  - (none)

### 74x22033 - 8-bit LVTTL-to-GTLP adjustable edge rate registered transceiver
- Status: [ ]
- Module: ttl_74x22033
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state, open-collector
- Pins: 48
- Datasheet/source: GTLP
- RTL: rtl/chips/ttl_74x22033/ttl_74x22033.sv
- Testbench: tb/chips/ttl_74x22033/tb_ttl_74x22033.sv
- README: rtl/chips/ttl_74x22033/README.md
- Notes:
  - (none)

### 74x22501 - 8-bit universal bus transceiver and two 1-bit bus transceivers
- Status: [ ]
- Module: ttl_74x22501
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 48
- Datasheet/source: VMEH
- RTL: rtl/chips/ttl_74x22501/ttl_74x22501.sv
- Testbench: tb/chips/ttl_74x22501/tb_ttl_74x22501.sv
- README: rtl/chips/ttl_74x22501/README.md
- Notes:
  - (none)

### 74x25244 - 25-Ω octal bus transceiver
- Status: [ ]
- Module: ttl_74x25244
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x25244/ttl_74x25244.sv
- Testbench: tb/chips/ttl_74x25244/tb_ttl_74x25244.sv
- README: rtl/chips/ttl_74x25244/README.md
- Notes:
  - (none)

### 74x25245 - 25-Ω octal bus transceiver
- Status: [ ]
- Module: ttl_74x25245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x25245/ttl_74x25245.sv
- Testbench: tb/chips/ttl_74x25245/tb_ttl_74x25245.sv
- README: rtl/chips/ttl_74x25245/README.md
- Notes:
  - (none)

### 74x25642 - 25-Ω octal bus transceiver
- Status: [ ]
- Module: ttl_74x25642
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: ABT
- RTL: rtl/chips/ttl_74x25642/ttl_74x25642.sv
- Testbench: tb/chips/ttl_74x25642/tb_ttl_74x25642.sv
- README: rtl/chips/ttl_74x25642/README.md
- Notes:
  - (none)

### 74x29821 - 10-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x29821
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: ALS
- RTL: rtl/chips/ttl_74x29821/ttl_74x29821.sv
- Testbench: tb/chips/ttl_74x29821/tb_ttl_74x29821.sv
- README: rtl/chips/ttl_74x29821/README.md
- Notes:
  - (none)

### 74x29825 - 8-bit bus interface flip-flops
- Status: [ ]
- Module: ttl_74x29825
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29825/ttl_74x29825.sv
- Testbench: tb/chips/ttl_74x29825/tb_ttl_74x29825.sv
- README: rtl/chips/ttl_74x29825/README.md
- Notes:
  - (none)

### 74x29827 - 10-bit bus buffer/driver
- Status: [ ]
- Module: ttl_74x29827
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: ALS
- RTL: rtl/chips/ttl_74x29827/ttl_74x29827.sv
- Testbench: tb/chips/ttl_74x29827/tb_ttl_74x29827.sv
- README: rtl/chips/ttl_74x29827/README.md
- Notes:
  - (none)

### 74x29828 - 10-bit bus buffer/driver
- Status: [ ]
- Module: ttl_74x29828
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29828/ttl_74x29828.sv
- Testbench: tb/chips/ttl_74x29828/tb_ttl_74x29828.sv
- README: rtl/chips/ttl_74x29828/README.md
- Notes:
  - (none)

### 74x29841 - 10-bit bus interface D-type latches
- Status: [ ]
- Module: ttl_74x29841
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29841/ttl_74x29841.sv
- Testbench: tb/chips/ttl_74x29841/tb_ttl_74x29841.sv
- README: rtl/chips/ttl_74x29841/README.md
- Notes:
  - (none)

### 74x29843 - 9-bit bus interface D-type latches
- Status: [ ]
- Module: ttl_74x29843
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29843/ttl_74x29843.sv
- Testbench: tb/chips/ttl_74x29843/tb_ttl_74x29843.sv
- README: rtl/chips/ttl_74x29843/README.md
- Notes:
  - (none)

### 74x29854 - 8-bit to 9-bit parity bus transceiver
- Status: [ ]
- Module: ttl_74x29854
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29854/ttl_74x29854.sv
- Testbench: tb/chips/ttl_74x29854/tb_ttl_74x29854.sv
- README: rtl/chips/ttl_74x29854/README.md
- Notes:
  - (none)

### 74x29863 - 9-bit bus transceiver
- Status: [ ]
- Module: ttl_74x29863
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29863/ttl_74x29863.sv
- Testbench: tb/chips/ttl_74x29863/tb_ttl_74x29863.sv
- README: rtl/chips/ttl_74x29863/README.md
- Notes:
  - (none)

### 74x29864 - 9-bit bus transceiver
- Status: [ ]
- Module: ttl_74x29864
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: 24
- Datasheet/source: BCT
- RTL: rtl/chips/ttl_74x29864/ttl_74x29864.sv
- Testbench: tb/chips/ttl_74x29864/tb_ttl_74x29864.sv
- README: rtl/chips/ttl_74x29864/README.md
- Notes:
  - (none)

### 74x32240 - 32-bit bus buffer/driver
- Status: [ ]
- Module: ttl_74x32240
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVT
- RTL: rtl/chips/ttl_74x32240/ttl_74x32240.sv
- Testbench: tb/chips/ttl_74x32240/tb_ttl_74x32240.sv
- README: rtl/chips/ttl_74x32240/README.md
- Notes:
  - (none)

### 74x32244 - 32-bit bus buffer/driver
- Status: [ ]
- Module: ttl_74x32244
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVT
- RTL: rtl/chips/ttl_74x32244/ttl_74x32244.sv
- Testbench: tb/chips/ttl_74x32244/tb_ttl_74x32244.sv
- README: rtl/chips/ttl_74x32244/README.md
- Notes:
  - (none)

### 74x32245 - 36-bit bus tranceiver
- Status: [ ]
- Module: ttl_74x32245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (100)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x32245/ttl_74x32245.sv
- Testbench: tb/chips/ttl_74x32245/tb_ttl_74x32245.sv
- README: rtl/chips/ttl_74x32245/README.md
- Notes:
  - (none)

### 74x32316 - 16-bit tri-port universal bus exchangers
- Status: [ ]
- Module: ttl_74x32316
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: (80)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x32316/ttl_74x32316.sv
- Testbench: tb/chips/ttl_74x32316/tb_ttl_74x32316.sv
- README: rtl/chips/ttl_74x32316/README.md
- Notes:
  - (none)

### 74x32318 - 18-bit tri-port universal bus exchangers
- Status: [ ]
- Module: ttl_74x32318
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: (80)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x32318/ttl_74x32318.sv
- Testbench: tb/chips/ttl_74x32318/tb_ttl_74x32318.sv
- README: rtl/chips/ttl_74x32318/README.md
- Notes:
  - (none)

### 74x32373 - 32-bit D-type latches
- Status: [ ]
- Module: ttl_74x32373
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVCH
- RTL: rtl/chips/ttl_74x32373/ttl_74x32373.sv
- Testbench: tb/chips/ttl_74x32373/tb_ttl_74x32373.sv
- README: rtl/chips/ttl_74x32373/README.md
- Notes:
  - (none)

### 74x32374 - 32-bit D-type flip-flops
- Status: [ ]
- Module: ttl_74x32374
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVCH
- RTL: rtl/chips/ttl_74x32374/ttl_74x32374.sv
- Testbench: tb/chips/ttl_74x32374/tb_ttl_74x32374.sv
- README: rtl/chips/ttl_74x32374/README.md
- Notes:
  - (none)

### 74x32501 - 36-bit universal bus transceiver
- Status: [ ]
- Module: ttl_74x32501
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (100)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x32501/ttl_74x32501.sv
- Testbench: tb/chips/ttl_74x32501/tb_ttl_74x32501.sv
- README: rtl/chips/ttl_74x32501/README.md
- Notes:
  - (none)

### 74x32543 - 36-bit registered bus transceiver
- Status: [ ]
- Module: ttl_74x32543
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (100)
- Datasheet/source: ABTH
- RTL: rtl/chips/ttl_74x32543/ttl_74x32543.sv
- Testbench: tb/chips/ttl_74x32543/tb_ttl_74x32543.sv
- README: rtl/chips/ttl_74x32543/README.md
- Notes:
  - (none)

### 74x32973 - 16-bit bus transceiver and transparent D-type latch
- Status: [ ]
- Module: ttl_74x32973
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: 
- Pins: (96)
- Datasheet/source: LVCH
- RTL: rtl/chips/ttl_74x32973/ttl_74x32973.sv
- Testbench: tb/chips/ttl_74x32973/tb_ttl_74x32973.sv
- README: rtl/chips/ttl_74x32973/README.md
- Notes:
  - (none)

### 74x322244 - 32-bit buffer/driver
- Status: [ ]
- Module: ttl_74x322244
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVCH
- RTL: rtl/chips/ttl_74x322244/ttl_74x322244.sv
- Testbench: tb/chips/ttl_74x322244/tb_ttl_74x322244.sv
- README: rtl/chips/ttl_74x322244/README.md
- Notes:
  - (none)

### 74x322374 - 32-bit D-type flip-flops
- Status: [ ]
- Module: ttl_74x322374
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (96)
- Datasheet/source: LVTH
- RTL: rtl/chips/ttl_74x322374/ttl_74x322374.sv
- Testbench: tb/chips/ttl_74x322374/tb_ttl_74x322374.sv
- README: rtl/chips/ttl_74x322374/README.md
- Notes:
  - (none)

### 74x324245 - 32-bit dual supply bus transceiver
- Status: [ ]
- Module: ttl_74x324245
- Aliases: none
- Source section: Widebus devices
- Units: 
- Input features: 
- Output features: three-state
- Pins: (120)
- Datasheet/source: AVCB
- RTL: rtl/chips/ttl_74x324245/ttl_74x324245.sv
- Testbench: tb/chips/ttl_74x324245/tb_ttl_74x324245.sv
- README: rtl/chips/ttl_74x324245/README.md
- Notes:
  - (none)


## Section: Smaller footprints

### 74x1G00 - single 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1g00
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g00/ttl_74x1g00.sv
- Testbench: tb/chips/ttl_74x1g00/tb_ttl_74x1g00.sv
- README: rtl/chips/ttl_74x1g00/README.md
- Notes:
  - (none)

### 74x1G02 - single 2-input NOR gate
- Status: [ ]
- Module: ttl_74x1g02
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g02/ttl_74x1g02.sv
- Testbench: tb/chips/ttl_74x1g02/tb_ttl_74x1g02.sv
- README: rtl/chips/ttl_74x1g02/README.md
- Notes:
  - (none)

### 74x1G04 - single inverter gate
- Status: [ ]
- Module: ttl_74x1g04
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g04/ttl_74x1g04.sv
- Testbench: tb/chips/ttl_74x1g04/tb_ttl_74x1g04.sv
- README: rtl/chips/ttl_74x1g04/README.md
- Notes:
  - (none)

### 74x1GU04 - single inverter gate
- Status: [ ]
- Module: ttl_74x1gu04
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: unbuffered
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1gu04/ttl_74x1gu04.sv
- Testbench: tb/chips/ttl_74x1gu04/tb_ttl_74x1gu04.sv
- README: rtl/chips/ttl_74x1gu04/README.md
- Notes:
  - (none)

### 74x1GX04 - single crystal oscillator driver
- Status: [ ]
- Module: ttl_74x1gx04
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1gx04/ttl_74x1gx04.sv
- Testbench: tb/chips/ttl_74x1gx04/tb_ttl_74x1gx04.sv
- README: rtl/chips/ttl_74x1gx04/README.md
- Notes:
  - (none)

### 74x1G06 - single inverter gate
- Status: [ ]
- Module: ttl_74x1g06
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: open-drain
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g06/ttl_74x1g06.sv
- Testbench: tb/chips/ttl_74x1g06/tb_ttl_74x1g06.sv
- README: rtl/chips/ttl_74x1g06/README.md
- Notes:
  - (none)

### 74x1G07 - single buffer gate
- Status: [ ]
- Module: ttl_74x1g07
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: open-drain
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g07/ttl_74x1g07.sv
- Testbench: tb/chips/ttl_74x1g07/tb_ttl_74x1g07.sv
- README: rtl/chips/ttl_74x1g07/README.md
- Notes:
  - (none)

### 74x1G08 - single 2-input AND gate
- Status: [ ]
- Module: ttl_74x1g08
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g08/ttl_74x1g08.sv
- Testbench: tb/chips/ttl_74x1g08/tb_ttl_74x1g08.sv
- README: rtl/chips/ttl_74x1g08/README.md
- Notes:
  - (none)

### 74x1G09 - single 2-input AND gate
- Status: [ ]
- Module: ttl_74x1g09
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: open-drain
- Pins: 5
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1g09/ttl_74x1g09.sv
- Testbench: tb/chips/ttl_74x1g09/tb_ttl_74x1g09.sv
- README: rtl/chips/ttl_74x1g09/README.md
- Notes:
  - (none)

### 74x1G10 - single 3-input NAND gate
- Status: [ ]
- Module: ttl_74x1g10
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g10/ttl_74x1g10.sv
- Testbench: tb/chips/ttl_74x1g10/tb_ttl_74x1g10.sv
- README: rtl/chips/ttl_74x1g10/README.md
- Notes:
  - (none)

### 74x1G11 - single 3-input AND gate
- Status: [ ]
- Module: ttl_74x1g11
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g11/ttl_74x1g11.sv
- Testbench: tb/chips/ttl_74x1g11/tb_ttl_74x1g11.sv
- README: rtl/chips/ttl_74x1g11/README.md
- Notes:
  - (none)

### 74x1G14 - single inverter gate
- Status: [ ]
- Module: ttl_74x1g14
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g14/ttl_74x1g14.sv
- Testbench: tb/chips/ttl_74x1g14/tb_ttl_74x1g14.sv
- README: rtl/chips/ttl_74x1g14/README.md
- Notes:
  - (none)

### 74x1G16 - single inverter gate
- Status: [ ]
- Module: ttl_74x1g16
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: open-drain
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g16/ttl_74x1g16.sv
- Testbench: tb/chips/ttl_74x1g16/tb_ttl_74x1g16.sv
- README: rtl/chips/ttl_74x1g16/README.md
- Notes:
  - (none)

### 74x1G17 - single buffer gate
- Status: [ ]
- Module: ttl_74x1g17
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g17/ttl_74x1g17.sv
- Testbench: tb/chips/ttl_74x1g17/tb_ttl_74x1g17.sv
- README: rtl/chips/ttl_74x1g17/README.md
- Notes:
  - (none)

### 74x1G18 - single 1-of-2 demultiplexer
- Status: [ ]
- Module: ttl_74x1g18
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g18/ttl_74x1g18.sv
- Testbench: tb/chips/ttl_74x1g18/tb_ttl_74x1g18.sv
- README: rtl/chips/ttl_74x1g18/README.md
- Notes:
  - (none)

### 74x1G19 - single 1-to-2 line decoder, active-low outputs
- Status: [ ]
- Module: ttl_74x1g19
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g19/ttl_74x1g19.sv
- Testbench: tb/chips/ttl_74x1g19/tb_ttl_74x1g19.sv
- README: rtl/chips/ttl_74x1g19/README.md
- Notes:
  - (none)

### 74x1G27 - single 3-input NOR gate
- Status: [ ]
- Module: ttl_74x1g27
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g27/ttl_74x1g27.sv
- Testbench: tb/chips/ttl_74x1g27/tb_ttl_74x1g27.sv
- README: rtl/chips/ttl_74x1g27/README.md
- Notes:
  - (none)

### 74x1G29 - single 2-to-3 line decoder, active-low outputs
- Status: [ ]
- Module: ttl_74x1g29
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g29/ttl_74x1g29.sv
- Testbench: tb/chips/ttl_74x1g29/tb_ttl_74x1g29.sv
- README: rtl/chips/ttl_74x1g29/README.md
- Notes:
  - (none)

### 74x1G32 - single 2-input OR gate
- Status: [ ]
- Module: ttl_74x1g32
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g32/ttl_74x1g32.sv
- Testbench: tb/chips/ttl_74x1g32/tb_ttl_74x1g32.sv
- README: rtl/chips/ttl_74x1g32/README.md
- Notes:
  - (none)

### 74x1G34 - single buffer gate
- Status: [ ]
- Module: ttl_74x1g34
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g34/ttl_74x1g34.sv
- Testbench: tb/chips/ttl_74x1g34/tb_ttl_74x1g34.sv
- README: rtl/chips/ttl_74x1g34/README.md
- Notes:
  - (none)

### 74x1G38 - single 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1g38
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: open-drain
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g38/ttl_74x1g38.sv
- Testbench: tb/chips/ttl_74x1g38/tb_ttl_74x1g38.sv
- README: rtl/chips/ttl_74x1g38/README.md
- Notes:
  - (none)

### 74x1G57 - single configurable 7-function gate
- Status: [ ]
- Module: ttl_74x1g57
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g57/ttl_74x1g57.sv
- Testbench: tb/chips/ttl_74x1g57/tb_ttl_74x1g57.sv
- README: rtl/chips/ttl_74x1g57/README.md
- Notes:
  - (none)

### 74x1G58 - single configurable 7-function gate
- Status: [ ]
- Module: ttl_74x1g58
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g58/ttl_74x1g58.sv
- Testbench: tb/chips/ttl_74x1g58/tb_ttl_74x1g58.sv
- README: rtl/chips/ttl_74x1g58/README.md
- Notes:
  - (none)

### 74x1G66 - single SPST analog switch
- Status: [ ]
- Module: ttl_74x1g66
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: analog
- Output features: analog
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g66/ttl_74x1g66.sv
- Testbench: tb/chips/ttl_74x1g66/tb_ttl_74x1g66.sv
- README: rtl/chips/ttl_74x1g66/README.md
- Notes:
  - (none)

### 74x1G74 - single positive-edge D flip-flop, asynchronous preset & clear, Q & /Q outputs
- Status: [ ]
- Module: ttl_74x1g74
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g74/ttl_74x1g74.sv
- Testbench: tb/chips/ttl_74x1g74/tb_ttl_74x1g74.sv
- README: rtl/chips/ttl_74x1g74/README.md
- Notes:
  - (none)

### 74x1G79 - single positive-edge D flip-flop, Q output
- Status: [ ]
- Module: ttl_74x1g79
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g79/ttl_74x1g79.sv
- Testbench: tb/chips/ttl_74x1g79/tb_ttl_74x1g79.sv
- README: rtl/chips/ttl_74x1g79/README.md
- Notes:
  - (none)

### 74x1G80 - single positive-edge D flip-flop, /Q output
- Status: [ ]
- Module: ttl_74x1g80
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g80/ttl_74x1g80.sv
- Testbench: tb/chips/ttl_74x1g80/tb_ttl_74x1g80.sv
- README: rtl/chips/ttl_74x1g80/README.md
- Notes:
  - (none)

### 74x1G86 - single 2-input XOR gate (a.k.a. 2-bit even-parity generator)
- Status: [ ]
- Module: ttl_74x1g86
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g86/ttl_74x1g86.sv
- Testbench: tb/chips/ttl_74x1g86/tb_ttl_74x1g86.sv
- README: rtl/chips/ttl_74x1g86/README.md
- Notes:
  - (none)

### 74x1G97 - single configurable 7-function gate
- Status: [ ]
- Module: ttl_74x1g97
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g97/ttl_74x1g97.sv
- Testbench: tb/chips/ttl_74x1g97/tb_ttl_74x1g97.sv
- README: rtl/chips/ttl_74x1g97/README.md
- Notes:
  - (none)

### 74x1G98 - single configurable 7-function gate
- Status: [ ]
- Module: ttl_74x1g98
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g98/ttl_74x1g98.sv
- Testbench: tb/chips/ttl_74x1g98/tb_ttl_74x1g98.sv
- README: rtl/chips/ttl_74x1g98/README.md
- Notes:
  - (none)

### 74x1G99 - single configurable 15-function gate, active-low enable
- Status: [ ]
- Module: ttl_74x1g99
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: three-state
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g99/ttl_74x1g99.sv
- Testbench: tb/chips/ttl_74x1g99/tb_ttl_74x1g99.sv
- README: rtl/chips/ttl_74x1g99/README.md
- Notes:
  - (none)

### 74x1G123 - single retriggerable monostable multivibrator
- Status: [ ]
- Module: ttl_74x1g123
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g123/ttl_74x1g123.sv
- Testbench: tb/chips/ttl_74x1g123/tb_ttl_74x1g123.sv
- README: rtl/chips/ttl_74x1g123/README.md
- Notes:
  - (none)

### 74x1G125 - single bus buffer gate, active-low enable
- Status: [ ]
- Module: ttl_74x1g125
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g125/ttl_74x1g125.sv
- Testbench: tb/chips/ttl_74x1g125/tb_ttl_74x1g125.sv
- README: rtl/chips/ttl_74x1g125/README.md
- Notes:
  - (none)

### 74x1G126 - single bus buffer gate, active-high enable
- Status: [ ]
- Module: ttl_74x1g126
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g126/ttl_74x1g126.sv
- Testbench: tb/chips/ttl_74x1g126/tb_ttl_74x1g126.sv
- README: rtl/chips/ttl_74x1g126/README.md
- Notes:
  - (none)

### 74x1G132 - single 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1g132
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g132/ttl_74x1g132.sv
- Testbench: tb/chips/ttl_74x1g132/tb_ttl_74x1g132.sv
- README: rtl/chips/ttl_74x1g132/README.md
- Notes:
  - (none)

### 74x1G139 - single 2-to-4 line decoder, active-low outputs
- Status: [ ]
- Module: ttl_74x1g139
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g139/ttl_74x1g139.sv
- Testbench: tb/chips/ttl_74x1g139/tb_ttl_74x1g139.sv
- README: rtl/chips/ttl_74x1g139/README.md
- Notes:
  - (none)

### 74x1G157 - single 2-to-1 data selector/multiplexer
- Status: [ ]
- Module: ttl_74x1g157
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g157/ttl_74x1g157.sv
- Testbench: tb/chips/ttl_74x1g157/tb_ttl_74x1g157.sv
- README: rtl/chips/ttl_74x1g157/README.md
- Notes:
  - (none)

### 74x1G158 - single 2-input multiplexer, active-low outputs
- Status: [ ]
- Module: ttl_74x1g158
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1g158/ttl_74x1g158.sv
- Testbench: tb/chips/ttl_74x1g158/tb_ttl_74x1g158.sv
- README: rtl/chips/ttl_74x1g158/README.md
- Notes:
  - (none)

### 74x1G175 - single positive-edge D flip-flop, asynchronous clear, Q output
- Status: [ ]
- Module: ttl_74x1g175
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g175/ttl_74x1g175.sv
- Testbench: tb/chips/ttl_74x1g175/tb_ttl_74x1g175.sv
- README: rtl/chips/ttl_74x1g175/README.md
- Notes:
  - (none)

### 74x1G240 - single bus buffer gate, active-low enable
- Status: [ ]
- Module: ttl_74x1g240
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 5
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g240/ttl_74x1g240.sv
- Testbench: tb/chips/ttl_74x1g240/tb_ttl_74x1g240.sv
- README: rtl/chips/ttl_74x1g240/README.md
- Notes:
  - (none)

### 74x1G332 - single 3-input OR gate
- Status: [ ]
- Module: ttl_74x1g332
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g332/ttl_74x1g332.sv
- Testbench: tb/chips/ttl_74x1g332/tb_ttl_74x1g332.sv
- README: rtl/chips/ttl_74x1g332/README.md
- Notes:
  - (none)

### 74x1G373 - single D-type transparent latch, Q output, active-low output enable
- Status: [ ]
- Module: ttl_74x1g373
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g373/ttl_74x1g373.sv
- Testbench: tb/chips/ttl_74x1g373/tb_ttl_74x1g373.sv
- README: rtl/chips/ttl_74x1g373/README.md
- Notes:
  - (none)

### 74x1G374 - single positive-edge D flip-flop, Q output, active-low output enable
- Status: [ ]
- Module: ttl_74x1g374
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g374/ttl_74x1g374.sv
- Testbench: tb/chips/ttl_74x1g374/tb_ttl_74x1g374.sv
- README: rtl/chips/ttl_74x1g374/README.md
- Notes:
  - (none)

### 74x1G384 - single FET bus switch
- Status: [ ]
- Module: ttl_74x1g384
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: three-state
- Pins: 5
- Datasheet/source: CBT
- RTL: rtl/chips/ttl_74x1g384/ttl_74x1g384.sv
- Testbench: tb/chips/ttl_74x1g384/tb_ttl_74x1g384.sv
- README: rtl/chips/ttl_74x1g384/README.md
- Notes:
  - (none)

### 74x1G386 - single 3-input XOR gate (a.k.a. 3-bit even-parity generator)
- Status: [ ]
- Module: ttl_74x1g386
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g386/ttl_74x1g386.sv
- Testbench: tb/chips/ttl_74x1g386/tb_ttl_74x1g386.sv
- README: rtl/chips/ttl_74x1g386/README.md
- Notes:
  - (none)

### 74x1G0832 - single 3-input AND-OR combo gate (2-input AND into 2-input OR)
- Status: [ ]
- Module: ttl_74x1g0832
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g0832/ttl_74x1g0832.sv
- Testbench: tb/chips/ttl_74x1g0832/tb_ttl_74x1g0832.sv
- README: rtl/chips/ttl_74x1g0832/README.md
- Notes:
  - (none)

### 74x1G3157 - single SPDT analog switch
- Status: [ ]
- Module: ttl_74x1g3157
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: analog
- Output features: analog
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g3157/ttl_74x1g3157.sv
- Testbench: tb/chips/ttl_74x1g3157/tb_ttl_74x1g3157.sv
- README: rtl/chips/ttl_74x1g3157/README.md
- Notes:
  - (none)

### 74x1G3208 - single 3-input OR-AND combo gate (2-input OR into 2-input AND)
- Status: [ ]
- Module: ttl_74x1g3208
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x1g3208/ttl_74x1g3208.sv
- Testbench: tb/chips/ttl_74x1g3208/tb_ttl_74x1g3208.sv
- README: rtl/chips/ttl_74x1g3208/README.md
- Notes:
  - (none)

### 74x2G00 - dual 2-input NAND gate
- Status: [ ]
- Module: ttl_74x2g00
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g00/ttl_74x2g00.sv
- Testbench: tb/chips/ttl_74x2g00/tb_ttl_74x2g00.sv
- README: rtl/chips/ttl_74x2g00/README.md
- Notes:
  - (none)

### 74x2G02 - dual 2-input NOR gate
- Status: [ ]
- Module: ttl_74x2g02
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g02/ttl_74x2g02.sv
- Testbench: tb/chips/ttl_74x2g02/tb_ttl_74x2g02.sv
- README: rtl/chips/ttl_74x2g02/README.md
- Notes:
  - (none)

### 74x2G04 - dual inverter gate
- Status: [ ]
- Module: ttl_74x2g04
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g04/ttl_74x2g04.sv
- Testbench: tb/chips/ttl_74x2g04/tb_ttl_74x2g04.sv
- README: rtl/chips/ttl_74x2g04/README.md
- Notes:
  - (none)

### 74x2GU04 - dual inverter gate
- Status: [ ]
- Module: ttl_74x2gu04
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: unbuffered
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2gu04/ttl_74x2gu04.sv
- Testbench: tb/chips/ttl_74x2gu04/tb_ttl_74x2gu04.sv
- README: rtl/chips/ttl_74x2gu04/README.md
- Notes:
  - (none)

### 74x2G06 - dual inverter gate
- Status: [ ]
- Module: ttl_74x2g06
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: open-drain
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g06/ttl_74x2g06.sv
- Testbench: tb/chips/ttl_74x2g06/tb_ttl_74x2g06.sv
- README: rtl/chips/ttl_74x2g06/README.md
- Notes:
  - (none)

### 74x2G07 - dual buffer gate
- Status: [ ]
- Module: ttl_74x2g07
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: open-drain
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g07/ttl_74x2g07.sv
- Testbench: tb/chips/ttl_74x2g07/tb_ttl_74x2g07.sv
- README: rtl/chips/ttl_74x2g07/README.md
- Notes:
  - (none)

### 74x2G08 - dual 2-input AND gate
- Status: [ ]
- Module: ttl_74x2g08
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g08/ttl_74x2g08.sv
- Testbench: tb/chips/ttl_74x2g08/tb_ttl_74x2g08.sv
- README: rtl/chips/ttl_74x2g08/README.md
- Notes:
  - (none)

### 74x2G14 - dual inverter gate
- Status: [ ]
- Module: ttl_74x2g14
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g14/ttl_74x2g14.sv
- Testbench: tb/chips/ttl_74x2g14/tb_ttl_74x2g14.sv
- README: rtl/chips/ttl_74x2g14/README.md
- Notes:
  - (none)

### 74x2G17 - dual buffer gate
- Status: [ ]
- Module: ttl_74x2g17
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g17/ttl_74x2g17.sv
- Testbench: tb/chips/ttl_74x2g17/tb_ttl_74x2g17.sv
- README: rtl/chips/ttl_74x2g17/README.md
- Notes:
  - (none)

### 74x2G32 - dual 2-input OR gate
- Status: [ ]
- Module: ttl_74x2g32
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g32/ttl_74x2g32.sv
- Testbench: tb/chips/ttl_74x2g32/tb_ttl_74x2g32.sv
- README: rtl/chips/ttl_74x2g32/README.md
- Notes:
  - (none)

### 74x2G34 - dual buffer gate
- Status: [ ]
- Module: ttl_74x2g34
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g34/ttl_74x2g34.sv
- Testbench: tb/chips/ttl_74x2g34/tb_ttl_74x2g34.sv
- README: rtl/chips/ttl_74x2g34/README.md
- Notes:
  - (none)

### 74x2G38 - dual 2-input NAND gate
- Status: [ ]
- Module: ttl_74x2g38
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: open-drain
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g38/ttl_74x2g38.sv
- Testbench: tb/chips/ttl_74x2g38/tb_ttl_74x2g38.sv
- README: rtl/chips/ttl_74x2g38/README.md
- Notes:
  - (none)

### 74x2G53 - single SPDT analog switch, 2:1 analog multiplexer/demultiplexer
- Status: [ ]
- Module: ttl_74x2g53
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: analog
- Output features: analog
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g53/ttl_74x2g53.sv
- Testbench: tb/chips/ttl_74x2g53/tb_ttl_74x2g53.sv
- README: rtl/chips/ttl_74x2g53/README.md
- Notes:
  - (none)

### 74x2G57 - dual configurable 7-function gate
- Status: [ ]
- Module: ttl_74x2g57
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 10
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g57/ttl_74x2g57.sv
- Testbench: tb/chips/ttl_74x2g57/tb_ttl_74x2g57.sv
- README: rtl/chips/ttl_74x2g57/README.md
- Notes:
  - (none)

### 74x2G58 - dual configurable 7-function gate
- Status: [ ]
- Module: ttl_74x2g58
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 10
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g58/ttl_74x2g58.sv
- Testbench: tb/chips/ttl_74x2g58/tb_ttl_74x2g58.sv
- README: rtl/chips/ttl_74x2g58/README.md
- Notes:
  - (none)

### 74x2G66 - dual SPST analog switch
- Status: [ ]
- Module: ttl_74x2g66
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: analog
- Output features: analog
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g66/ttl_74x2g66.sv
- Testbench: tb/chips/ttl_74x2g66/tb_ttl_74x2g66.sv
- README: rtl/chips/ttl_74x2g66/README.md
- Notes:
  - (none)

### 74x2G74 - single positive-edge D flip-flop, asynchronous preset & clear, Q & /Q outputs
- Status: [ ]
- Module: ttl_74x2g74
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g74/ttl_74x2g74.sv
- Testbench: tb/chips/ttl_74x2g74/tb_ttl_74x2g74.sv
- README: rtl/chips/ttl_74x2g74/README.md
- Notes:
  - (none)

### 74x2G79 - dual positive-edge D flip-flop, Q output
- Status: [ ]
- Module: ttl_74x2g79
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g79/ttl_74x2g79.sv
- Testbench: tb/chips/ttl_74x2g79/tb_ttl_74x2g79.sv
- README: rtl/chips/ttl_74x2g79/README.md
- Notes:
  - (none)

### 74x2G80 - dual positive-edge D flip-flop, /Q output
- Status: [ ]
- Module: ttl_74x2g80
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g80/ttl_74x2g80.sv
- Testbench: tb/chips/ttl_74x2g80/tb_ttl_74x2g80.sv
- README: rtl/chips/ttl_74x2g80/README.md
- Notes:
  - (none)

### 74x2G86 - dual 2-input XOR gate (a.k.a. 2-bit even-parity generator)
- Status: [ ]
- Module: ttl_74x2g86
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g86/ttl_74x2g86.sv
- Testbench: tb/chips/ttl_74x2g86/tb_ttl_74x2g86.sv
- README: rtl/chips/ttl_74x2g86/README.md
- Notes:
  - (none)

### 74x2G97 - dual configurable 7-function gate
- Status: [ ]
- Module: ttl_74x2g97
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 10
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g97/ttl_74x2g97.sv
- Testbench: tb/chips/ttl_74x2g97/tb_ttl_74x2g97.sv
- README: rtl/chips/ttl_74x2g97/README.md
- Notes:
  - (none)

### 74x2G98 - dual configurable 7-function gate
- Status: [ ]
- Module: ttl_74x2g98
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 10
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g98/ttl_74x2g98.sv
- Testbench: tb/chips/ttl_74x2g98/tb_ttl_74x2g98.sv
- README: rtl/chips/ttl_74x2g98/README.md
- Notes:
  - (none)

### 74x2G125 - dual bus buffer, active-low enable
- Status: [ ]
- Module: ttl_74x2g125
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g125/ttl_74x2g125.sv
- Testbench: tb/chips/ttl_74x2g125/tb_ttl_74x2g125.sv
- README: rtl/chips/ttl_74x2g125/README.md
- Notes:
  - (none)

### 74x2G126 - dual bus buffer, active-high enable
- Status: [ ]
- Module: ttl_74x2g126
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g126/ttl_74x2g126.sv
- Testbench: tb/chips/ttl_74x2g126/tb_ttl_74x2g126.sv
- README: rtl/chips/ttl_74x2g126/README.md
- Notes:
  - (none)

### 74x2G132 - dual 2-input NAND gate
- Status: [ ]
- Module: ttl_74x2g132
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: schmitt-trigger
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g132/ttl_74x2g132.sv
- Testbench: tb/chips/ttl_74x2g132/tb_ttl_74x2g132.sv
- README: rtl/chips/ttl_74x2g132/README.md
- Notes:
  - (none)

### 74x2G157 - single 2-to-1 data selector/multiplexer
- Status: [ ]
- Module: ttl_74x2g157
- Aliases: none
- Source section: Smaller footprints
- Units: 1
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g157/ttl_74x2g157.sv
- Testbench: tb/chips/ttl_74x2g157/tb_ttl_74x2g157.sv
- README: rtl/chips/ttl_74x2g157/README.md
- Notes:
  - (none)

### 74x2G240 - dual inverting bus buffer gate, active-low enable
- Status: [ ]
- Module: ttl_74x2g240
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g240/ttl_74x2g240.sv
- Testbench: tb/chips/ttl_74x2g240/tb_ttl_74x2g240.sv
- README: rtl/chips/ttl_74x2g240/README.md
- Notes:
  - (none)

### 74x2G241 - dual bus buffer gate, active-low and active-high enables
- Status: [ ]
- Module: ttl_74x2g241
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: three-state
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x2g241/ttl_74x2g241.sv
- Testbench: tb/chips/ttl_74x2g241/tb_ttl_74x2g241.sv
- README: rtl/chips/ttl_74x2g241/README.md
- Notes:
  - (none)

### 74x2G0604 - dual inverter gate (one open-drain)
- Status: [ ]
- Module: ttl_74x2g0604
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: open-drain
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g0604/ttl_74x2g0604.sv
- Testbench: tb/chips/ttl_74x2g0604/tb_ttl_74x2g0604.sv
- README: rtl/chips/ttl_74x2g0604/README.md
- Notes:
  - (none)

### 74x2G3404 - single buffer and single inverter
- Status: [ ]
- Module: ttl_74x2g3404
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g3404/ttl_74x2g3404.sv
- Testbench: tb/chips/ttl_74x2g3404/tb_ttl_74x2g3404.sv
- README: rtl/chips/ttl_74x2g3404/README.md
- Notes:
  - (none)

### 74x2G3407 - dual buffer gate (one open-drain)
- Status: [ ]
- Module: ttl_74x2g3407
- Aliases: none
- Source section: Smaller footprints
- Units: 2
- Input features: 
- Output features: open-drain
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x2g3407/ttl_74x2g3407.sv
- Testbench: tb/chips/ttl_74x2g3407/tb_ttl_74x2g3407.sv
- README: rtl/chips/ttl_74x2g3407/README.md
- Notes:
  - (none)

### 74x3G04 - triple inverter gate
- Status: [ ]
- Module: ttl_74x3g04
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g04/ttl_74x3g04.sv
- Testbench: tb/chips/ttl_74x3g04/tb_ttl_74x3g04.sv
- README: rtl/chips/ttl_74x3g04/README.md
- Notes:
  - (none)

### 74x3GU04 - triple inverter gate
- Status: [ ]
- Module: ttl_74x3gu04
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: unbuffered
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3gu04/ttl_74x3gu04.sv
- Testbench: tb/chips/ttl_74x3gu04/tb_ttl_74x3gu04.sv
- README: rtl/chips/ttl_74x3gu04/README.md
- Notes:
  - (none)

### 74x3G06 - triple inverter gate
- Status: [ ]
- Module: ttl_74x3g06
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: open-drain
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g06/ttl_74x3g06.sv
- Testbench: tb/chips/ttl_74x3g06/tb_ttl_74x3g06.sv
- README: rtl/chips/ttl_74x3g06/README.md
- Notes:
  - (none)

### 74x3G07 - triple buffer gate
- Status: [ ]
- Module: ttl_74x3g07
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: open-drain
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g07/ttl_74x3g07.sv
- Testbench: tb/chips/ttl_74x3g07/tb_ttl_74x3g07.sv
- README: rtl/chips/ttl_74x3g07/README.md
- Notes:
  - (none)

### 74x3G14 - triple inverter gate
- Status: [ ]
- Module: ttl_74x3g14
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g14/ttl_74x3g14.sv
- Testbench: tb/chips/ttl_74x3g14/tb_ttl_74x3g14.sv
- README: rtl/chips/ttl_74x3g14/README.md
- Notes:
  - (none)

### 74x3G16 - triple buffer gate
- Status: [ ]
- Module: ttl_74x3g16
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g16/ttl_74x3g16.sv
- Testbench: tb/chips/ttl_74x3g16/tb_ttl_74x3g16.sv
- README: rtl/chips/ttl_74x3g16/README.md
- Notes:
  - (none)

### 74x3G17 - triple buffer gate
- Status: [ ]
- Module: ttl_74x3g17
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g17/ttl_74x3g17.sv
- Testbench: tb/chips/ttl_74x3g17/tb_ttl_74x3g17.sv
- README: rtl/chips/ttl_74x3g17/README.md
- Notes:
  - (none)

### 74x3G34 - triple buffer gate
- Status: [ ]
- Module: ttl_74x3g34
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g34/ttl_74x3g34.sv
- Testbench: tb/chips/ttl_74x3g34/tb_ttl_74x3g34.sv
- README: rtl/chips/ttl_74x3g34/README.md
- Notes:
  - (none)

### 74x3G57 - triple configurable 7-function gate
- Status: [ ]
- Module: ttl_74x3g57
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 14
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g57/ttl_74x3g57.sv
- Testbench: tb/chips/ttl_74x3g57/tb_ttl_74x3g57.sv
- README: rtl/chips/ttl_74x3g57/README.md
- Notes:
  - (none)

### 74x3G58 - triple configurable 7-function gate
- Status: [ ]
- Module: ttl_74x3g58
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 14
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g58/ttl_74x3g58.sv
- Testbench: tb/chips/ttl_74x3g58/tb_ttl_74x3g58.sv
- README: rtl/chips/ttl_74x3g58/README.md
- Notes:
  - (none)

### 74x3G97 - triple configurable 7-function gate
- Status: [ ]
- Module: ttl_74x3g97
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 14
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g97/ttl_74x3g97.sv
- Testbench: tb/chips/ttl_74x3g97/tb_ttl_74x3g97.sv
- README: rtl/chips/ttl_74x3g97/README.md
- Notes:
  - (none)

### 74x3G98 - triple configurable 7-function gate
- Status: [ ]
- Module: ttl_74x3g98
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: schmitt-trigger
- Output features: 
- Pins: 14
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x3g98/ttl_74x3g98.sv
- Testbench: tb/chips/ttl_74x3g98/tb_ttl_74x3g98.sv
- README: rtl/chips/ttl_74x3g98/README.md
- Notes:
  - (none)

### 74x3G0434 - dual inverter and single buffer
- Status: [ ]
- Module: ttl_74x3g0434
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x3g0434/ttl_74x3g0434.sv
- Testbench: tb/chips/ttl_74x3g0434/tb_ttl_74x3g0434.sv
- README: rtl/chips/ttl_74x3g0434/README.md
- Notes:
  - (none)

### 74x3G3404 - dual buffer and single inverter
- Status: [ ]
- Module: ttl_74x3g3404
- Aliases: none
- Source section: Smaller footprints
- Units: 3
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x3g3404/ttl_74x3g3404.sv
- Testbench: tb/chips/ttl_74x3g3404/tb_ttl_74x3g3404.sv
- README: rtl/chips/ttl_74x3g3404/README.md
- Notes:
  - (none)


## Section: Voltage translation

### 74x1T00 - single-supply 2-input NAND gate
- Status: [ ]
- Module: ttl_74x1t00
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t00/ttl_74x1t00.sv
- Testbench: tb/chips/ttl_74x1t00/tb_ttl_74x1t00.sv
- README: rtl/chips/ttl_74x1t00/README.md
- Notes:
  - (none)

### 74x1T02 - single-supply 2-input NOR gate
- Status: [ ]
- Module: ttl_74x1t02
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t02/ttl_74x1t02.sv
- Testbench: tb/chips/ttl_74x1t02/tb_ttl_74x1t02.sv
- README: rtl/chips/ttl_74x1t02/README.md
- Notes:
  - (none)

### 74x1T04 - single-supply inverter
- Status: [ ]
- Module: ttl_74x1t04
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t04/ttl_74x1t04.sv
- Testbench: tb/chips/ttl_74x1t04/tb_ttl_74x1t04.sv
- README: rtl/chips/ttl_74x1t04/README.md
- Notes:
  - (none)

### 74x1T08 - single-supply 2-input AND gate
- Status: [ ]
- Module: ttl_74x1t08
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t08/ttl_74x1t08.sv
- Testbench: tb/chips/ttl_74x1t08/tb_ttl_74x1t08.sv
- README: rtl/chips/ttl_74x1t08/README.md
- Notes:
  - (none)

### 74x1T14 - single-supply schmitt-trigger inverter
- Status: [ ]
- Module: ttl_74x1t14
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t14/ttl_74x1t14.sv
- Testbench: tb/chips/ttl_74x1t14/tb_ttl_74x1t14.sv
- README: rtl/chips/ttl_74x1t14/README.md
- Notes:
  - (none)

### 74x1T17 - single-supply schmitt-trigger buffer
- Status: [ ]
- Module: ttl_74x1t17
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t17/ttl_74x1t17.sv
- Testbench: tb/chips/ttl_74x1t17/tb_ttl_74x1t17.sv
- README: rtl/chips/ttl_74x1t17/README.md
- Notes:
  - (none)

### 74x1T32 - single-supply 2-input OR gate
- Status: [ ]
- Module: ttl_74x1t32
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t32/ttl_74x1t32.sv
- Testbench: tb/chips/ttl_74x1t32/tb_ttl_74x1t32.sv
- README: rtl/chips/ttl_74x1t32/README.md
- Notes:
  - (none)

### 74x1T34 - dual-supply unidirectional buffer/driver
- Status: [ ]
- Module: ttl_74x1t34
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t34/ttl_74x1t34.sv
- Testbench: tb/chips/ttl_74x1t34/tb_ttl_74x1t34.sv
- README: rtl/chips/ttl_74x1t34/README.md
- Notes:
  - (none)

### 74x1T45 - dual-supply 1-bit bus transceiver
- Status: [ ]
- Module: ttl_74x1t45
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AXCAXPLVC
- RTL: rtl/chips/ttl_74x1t45/ttl_74x1t45.sv
- Testbench: tb/chips/ttl_74x1t45/tb_ttl_74x1t45.sv
- README: rtl/chips/ttl_74x1t45/README.md
- Notes:
  - (none)

### 74x1T50 - single-supply schmitt-trigger buffer
- Status: [ ]
- Module: ttl_74x1t50
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t50/ttl_74x1t50.sv
- Testbench: tb/chips/ttl_74x1t50/tb_ttl_74x1t50.sv
- README: rtl/chips/ttl_74x1t50/README.md
- Notes:
  - (none)

### 74x1T57 - single-supply configurable 9-function gate
- Status: [ ]
- Module: ttl_74x1t57
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t57/ttl_74x1t57.sv
- Testbench: tb/chips/ttl_74x1t57/tb_ttl_74x1t57.sv
- README: rtl/chips/ttl_74x1t57/README.md
- Notes:
  - (none)

### 74x1T58 - single-supply configurable 9-function gate
- Status: [ ]
- Module: ttl_74x1t58
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t58/ttl_74x1t58.sv
- Testbench: tb/chips/ttl_74x1t58/tb_ttl_74x1t58.sv
- README: rtl/chips/ttl_74x1t58/README.md
- Notes:
  - (none)

### 74x1T86 - single-supply 2-input XOR gate
- Status: [ ]
- Module: ttl_74x1t86
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUPLV
- RTL: rtl/chips/ttl_74x1t86/ttl_74x1t86.sv
- Testbench: tb/chips/ttl_74x1t86/tb_ttl_74x1t86.sv
- README: rtl/chips/ttl_74x1t86/README.md
- Notes:
  - (none)

### 74x1T87 - single-supply 2-input XNOR gate
- Status: [ ]
- Module: ttl_74x1t87
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t87/ttl_74x1t87.sv
- Testbench: tb/chips/ttl_74x1t87/tb_ttl_74x1t87.sv
- README: rtl/chips/ttl_74x1t87/README.md
- Notes:
  - (none)

### 74x1T97 - single-supply configurable 9-function gate
- Status: [ ]
- Module: ttl_74x1t97
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t97/ttl_74x1t97.sv
- Testbench: tb/chips/ttl_74x1t97/tb_ttl_74x1t97.sv
- README: rtl/chips/ttl_74x1t97/README.md
- Notes:
  - (none)

### 74x1T98 - single-supply configurable 9-function gate
- Status: [ ]
- Module: ttl_74x1t98
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t98/ttl_74x1t98.sv
- Testbench: tb/chips/ttl_74x1t98/tb_ttl_74x1t98.sv
- README: rtl/chips/ttl_74x1t98/README.md
- Notes:
  - (none)

### 74x1T125 - single-supply single buffer/driver with 3-state output
- Status: [ ]
- Module: ttl_74x1t125
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LV
- RTL: rtl/chips/ttl_74x1t125/ttl_74x1t125.sv
- Testbench: tb/chips/ttl_74x1t125/tb_ttl_74x1t125.sv
- README: rtl/chips/ttl_74x1t125/README.md
- Notes:
  - (none)

### 74x1T126 - single-supply single buffer/driver with 3-state output
- Status: [ ]
- Module: ttl_74x1t126
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 5
- Datasheet/source: LV
- RTL: rtl/chips/ttl_74x1t126/ttl_74x1t126.sv
- Testbench: tb/chips/ttl_74x1t126/tb_ttl_74x1t126.sv
- README: rtl/chips/ttl_74x1t126/README.md
- Notes:
  - (none)

### 74x1T157 - single-supply 2-input schmitt-trigger multiplexer (non-inverted)
- Status: [ ]
- Module: ttl_74x1t157
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t157/ttl_74x1t157.sv
- Testbench: tb/chips/ttl_74x1t157/tb_ttl_74x1t157.sv
- README: rtl/chips/ttl_74x1t157/README.md
- Notes:
  - (none)

### 74x1T158 - single-supply 2-input schmitt-trigger multiplexer (inverted)
- Status: [ ]
- Module: ttl_74x1t158
- Aliases: none
- Source section: Voltage translation
- Units: 1
- Input features: 
- Output features: 
- Pins: 6
- Datasheet/source: AUP
- RTL: rtl/chips/ttl_74x1t158/ttl_74x1t158.sv
- Testbench: tb/chips/ttl_74x1t158/tb_ttl_74x1t158.sv
- README: rtl/chips/ttl_74x1t158/README.md
- Notes:
  - (none)

### 74x2T45 - dual-supply 2-bit bus transceiver
- Status: [ ]
- Module: ttl_74x2t45
- Aliases: none
- Source section: Voltage translation
- Units: 2
- Input features: 
- Output features: 
- Pins: 8
- Datasheet/source: AXCAXPLVC
- RTL: rtl/chips/ttl_74x2t45/ttl_74x2t45.sv
- Testbench: tb/chips/ttl_74x2t45/tb_ttl_74x2t45.sv
- README: rtl/chips/ttl_74x2t45/README.md
- Notes:
  - (none)

### 74x4T234 - dual-supply 4-bit bus transceiver
- Status: [ ]
- Module: ttl_74x4t234
- Aliases: none
- Source section: Voltage translation
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x4t234/ttl_74x4t234.sv
- Testbench: tb/chips/ttl_74x4t234/tb_ttl_74x4t234.sv
- README: rtl/chips/ttl_74x4t234/README.md
- Notes:
  - (none)

### 74x4T245 - dual-supply 4-bit bus transceiver
- Status: [ ]
- Module: ttl_74x4t245
- Aliases: none
- Source section: Voltage translation
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: AXCAXP
- RTL: rtl/chips/ttl_74x4t245/ttl_74x4t245.sv
- Testbench: tb/chips/ttl_74x4t245/tb_ttl_74x4t245.sv
- README: rtl/chips/ttl_74x4t245/README.md
- Notes:
  - (none)

### 74x4T774 - dual-supply 4-bit bus transceiver
- Status: [ ]
- Module: ttl_74x4t774
- Aliases: none
- Source section: Voltage translation
- Units: 4
- Input features: 
- Output features: 
- Pins: 16
- Datasheet/source: AXC
- RTL: rtl/chips/ttl_74x4t774/ttl_74x4t774.sv
- Testbench: tb/chips/ttl_74x4t774/tb_ttl_74x4t774.sv
- README: rtl/chips/ttl_74x4t774/README.md
- Notes:
  - (none)

### 74x8T245 - dual-supply 8-bit bus transceiver
- Status: [ ]
- Module: ttl_74x8t245
- Aliases: none
- Source section: Voltage translation
- Units: 8
- Input features: 
- Output features: 
- Pins: 24
- Datasheet/source: AXCAXPLVC
- RTL: rtl/chips/ttl_74x8t245/ttl_74x8t245.sv
- Testbench: tb/chips/ttl_74x8t245/tb_ttl_74x8t245.sv
- README: rtl/chips/ttl_74x8t245/README.md
- Notes:
  - (none)

### 74x16T245 - dual-supply 16-bit bus transceiver
- Status: [ ]
- Module: ttl_74x16t245
- Aliases: none
- Source section: Voltage translation
- Units: 16
- Input features: 
- Output features: 
- Pins: 48
- Datasheet/source: LVC
- RTL: rtl/chips/ttl_74x16t245/ttl_74x16t245.sv
- Testbench: tb/chips/ttl_74x16t245/tb_ttl_74x16t245.sv
- README: rtl/chips/ttl_74x16t245/README.md
- Notes:
  - (none)

### 74x20T245 - dual-supply 20-bit bus transceiver
- Status: [ ]
- Module: ttl_74x20t245
- Aliases: none
- Source section: Voltage translation
- Units: 20
- Input features: 
- Output features: 
- Pins: 56
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x20t245/ttl_74x20t245.sv
- Testbench: tb/chips/ttl_74x20t245/tb_ttl_74x20t245.sv
- README: rtl/chips/ttl_74x20t245/README.md
- Notes:
  - (none)

### 74x24T245 - dual-supply 24-bit bus transceiver
- Status: [ ]
- Module: ttl_74x24t245
- Aliases: none
- Source section: Voltage translation
- Units: 24
- Input features: 
- Output features: 
- Pins: (83)
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x24t245/ttl_74x24t245.sv
- Testbench: tb/chips/ttl_74x24t245/tb_ttl_74x24t245.sv
- README: rtl/chips/ttl_74x24t245/README.md
- Notes:
  - (none)

### 74x32T245 - dual-supply 32-bit bus transceiver
- Status: [ ]
- Module: ttl_74x32t245
- Aliases: none
- Source section: Voltage translation
- Units: 32
- Input features: 
- Output features: 
- Pins: (120)
- Datasheet/source: AVC
- RTL: rtl/chips/ttl_74x32t245/ttl_74x32t245.sv
- Testbench: tb/chips/ttl_74x32t245/tb_ttl_74x32t245.sv
- README: rtl/chips/ttl_74x32t245/README.md
- Notes:
  - (none)
