# ttl_74x42 — BCD-to-decimal decoder (1-of-10), active-low outputs

| Field         | Value                       |
| ------------- | --------------------------- |
| Original part | 74x42                       |
| Function      | BCD-to-decimal (1-of-10) decoder |
| Outputs       | Active-low                  |
| Package       | DIP-16                      |

## Behavior

For `bcd` in 0..9: `y_n[bcd] = 0` and all other `y_n` bits are 1.
For `bcd` in 10..15: all `y_n` bits are 1 (no decode).

## Ports

| Signal | Width  | Direction | Description                          |
| ------ | ------ | --------- | ------------------------------------ |
| `bcd`  | [3:0]  | in        | BCD input (`bcd[3]`=A3 MSB)         |
| `y_n`  | [9:0]  | out       | Active-low decimal outputs           |

## Testbench

Exhaustive 16-vector walk over all input combinations.
