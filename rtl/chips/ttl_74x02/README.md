# ttl_74x02 — Quad 2-input NOR gate

| Field         | Value                                              |
| ------------- | -------------------------------------------------- |
| Original part | 74x02 (74LS02, 74HC02, 74AS02, …)                  |
| Function      | Quad 2-input NOR                                   |
| Package       | DIP-14                                             |
| Datasheet     | [TI SN74LS02](https://www.ti.com/lit/gpn/sn74ls02) |

## Behavior

```
y[i] = ~(a[i] | b[i])    for i in 0..3
```

| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Ports

| Signal | Width | Direction | Description                            |
| ------ | ----- | --------- | -------------------------------------- |
| `a`    | [3:0] | in        | A input of each gate                   |
| `b`    | [3:0] | in        | B input of each gate                   |
| `y`    | [3:0] | out       | Output of each gate                    |

## DIP-14 pin mapping

Note the output-first ordering — 74x02 puts Y before A/B on every gate.

| Pin | Signal | Pin | Signal |
|-----|--------|-----|--------|
| 1   | y[0]   | 14  | Vcc    |
| 2   | a[0]   | 13  | y[3]   |
| 3   | b[0]   | 12  | b[3]   |
| 4   | y[1]   | 11  | a[3]   |
| 5   | a[1]   | 10  | y[2]   |
| 6   | b[1]   | 9   | b[2]   |
| 7   | GND    | 8   | a[2]   |

## What is *not* modeled

No analog, tri-state, or open-collector behavior on this part.

## Testbench

Exhaustive 256-vector walk (`tb/chips/ttl_74x02/tb_ttl_74x02.sv`).
