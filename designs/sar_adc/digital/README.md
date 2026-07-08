# SAR ADC Digital Logic – GF180MCU

## Overview

This repository contains the design and verification files for the digital control logic of a Successive Approximation Register (SAR) Analog-to-Digital Converter (SAR ADC), implemented using the GlobalFoundries GF180MCU Process Design Kit (PDK).

The project includes the fundamental digital building blocks required for SAR operation, such as logic gates, flip-flops, edge detectors, delay cells, buffers. The design has been developed using the open-source analog and mixed-signal IC design flow.

---

## Features

- Digital control logic for SAR ADC
- Top-level digital controller
- D Flip-Flops
- Set/Reset Flip-Flops
- Edge detector
- Delay cell
- Inverters
- Buffers
- NAND gates
- Functional verification through transient simulations


---

## Verification Status

| Verification | Status |
|--------------|:------:|
| Schematic Verification | ✅ |
| Functional Transient Simulation | ✅ |
| Layout  | Planned |
| DRC |  Planned |
| LVS |  Planned |

---

## Repository Structure

```text
digital/
├── buffer_inv_x1/         # Inverter buffer
├── buffer_x1/             # Buffer cells
├── delay_cell/            # Delay cell
├── digital_logic/         # Digital logic layout and top-level files
├── edge_detector/         # Edge detector
├── edge_inv_x1/           # Edge detector inverter
├── flip_flop/             # D Flip-Flop
├── flip_flop_set/         # Set/Reset Flip-Flop
├── gate_buf_x1/           # Gate buffer
├── gate_inv_edge/         # Edge inverter
├── gate_inv_x1/           # Standard inverter
├── inverter/              # Basic inverter
├── logica_digital_TOP/    # Complete SAR digital logic
└── NAND/                  # NAND gate
```

---

## Directory Description

### `logica_digital_TOP/`

Contains the top-level implementation of the SAR ADC digital logic, integrating all the required digital building blocks.

### `flip_flop/`

Contains the D Flip-Flop schematic, symbol, and simulation testbench.

### `flip_flop_set/`

Contains the Set/Reset Flip-Flop implementation.

### `edge_detector/`

Implements the edge detection circuit used for clock and control signal generation.

### `delay_cell/`

Contains the delay cell used for timing synchronization.

### `buffer_x1/`

Contains digital buffer cells and their associated symbols.

### `buffer_inv_x1/`

Contains the inverter-based buffer implementation.

### `gate_inv_x1/`

Contains the standard inverter cell.

### `gate_buf_x1/`

Contains the gate buffer implementation.

### `gate_inv_edge/`

Contains the inverter used inside the edge detector.

### `NAND/`

Contains the NAND gate implementation and its functional verification.

### `digital_logic/`

Contains the integrated digital logic layout files and generated GDS.

---

## Required Tools

- GF180MCU PDK
- Xschem
- NGSPICE
- Magic
- Netgen
- KLayout

---

## Running Simulations

Open the desired testbench using Xschem:

```bash
xschem logica_digital_TOP_tb.sch
```

or execute the corresponding testbench for each individual digital block.

Generate the netlist and run the simulation using NGSPICE.

---

## Applications

This digital logic is intended to control the conversion process of a SAR ADC implemented in GF180MCU technology.

---

## Authors

OnCHIP Integrated Systems Research Group-Universidad Industrial de Santander (UIS)


