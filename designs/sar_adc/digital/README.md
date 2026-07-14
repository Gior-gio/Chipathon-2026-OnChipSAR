# SAR ADC Digital Logic – GF180MCU

This repository contains the design, verification, and ongoing layout development of the digital logic for a Successive Approximation Register (SAR) Analog-to-Digital Converter (SAR ADC), implemented using the GlobalFoundries GF180MCU Process Design Kit (PDK).

The project includes the fundamental digital building blocks required for SAR operation, such as logic gates, flip-flops, edge detectors, transmission gates, delay cells, and the top-level digital logic. The design has been developed using the open-source analog and mixed-signal IC design flow.

---

## Verification Status

The design has successfully completed the following verification stages.

| Verification | Status |
|--------------|:------:|
| Schematic Verification | ✅ |
| Functional Transient Simulation | ✅ |
| Layout |  In Progress |
| DRC |  Planned |
| LVS |  Planned |

---

## Directory Structure

```text
digital/
├── edge_detector/
│   └── xschem/
│       ├── edge_detector.sch
│       ├── edge_detector.sym
│       └── edge_detector_tb.sch
│
├── flip_flop/
│   └── xschem/
│       ├── FF_D.sch
│       ├── FF_D.sym
│       └── FF_tb.sch
│
├── flip_flop_set/
│   └── xschem/
│       ├── FF_SET.sch
│       ├── FF_SET.sym
│       └── FF_SET_tb.sch
│
├── gate_buf_x1/
│   └── xschem/
│       ├── gate_buf_x1.sch
│       └── gate_buf_x1.sym
│
├── gate_delay_edge/
│   └── xschem/
│       ├── gate_delay_edge.sch
│       └── gate_delay_edge.sym
│
├── gate_inv_edge/
│   └── xschem/
│       ├── gate_inv_edge.sch
│       └── gate_inv_edge.sym
│
├── gate_inv_x1/
│   └── xschem/
│       ├── gate_inv_x1.sch
│       └── gate_inv_x1.sym
│
├── gate_inv_x2/
│   └── xschem/
│       ├── gate_inv_x2.sch
│       └── gate_inv_x2.sym
│
├── gate_nand_x1/
│   └── xschem/
│       ├── gate_nand_x1.sch
│       └── gate_nand_x1.sym
│
├── gate_tg_x1/
│   └── xschem/
│       ├── gate_tg_x1.sch
│       └── gate_tg_x1.sym
│
└── logica_digital_TOP/
    └── xschem/
        ├── logica_digital_TOP.sch
        ├── logica_digital_TOP.sym
        └── logica_digital_TOP_tb.sch
```


---

## Directory Details

### `logica_digital_TOP/`

Contains the top-level implementation of the SAR ADC digital logic, integrating all the required digital building blocks. The directory includes the complete schematic, Xschem symbol, and functional testbench for system-level verification.

### `flip_flop/`

Contains the D Flip-Flop used for data storage during the SAR conversion process. The directory includes the schematic, Xschem symbol, and functional testbench.

### `flip_flop_set/`

Contains the Set/Reset Flip-Flop used for initialization and control logic. The directory includes the schematic, Xschem symbol, and verification testbench.

### `edge_detector/`

Contains the edge detector used for timing and control signal generation. The directory includes the schematic, Xschem symbol, and transient simulation testbench.

### `gate_delay_edge/`

Contains the delay cell used to synchronize digital signals and generate the required timing relationships. The directory includes the schematic and Xschem symbol.

### `gate_inv_x1/`

Contains the standard inverter cell used as a reusable building block across multiple circuits within the project, including the SAR ADC digital logic and other mixed-signal modules such as the bootstrapped Sample & Hold. The directory includes the schematic and Xschem symbol.

### `gate_inv_x2/`

Contains a higher-drive inverter used when increased driving capability is required. The directory includes the schematic and Xschem symbol.

### `gate_inv_edge/`

Contains the inverter used as part of the edge detector circuitry. The directory includes the schematic and Xschem symbol.

### `gate_buf_x1/`

Contains the buffer cell used to improve signal driving capability within the digital logic. The directory includes the schematic and Xschem symbol.

### `gate_nand_x1/`

Contains the two-input NAND gate used by the SAR digital logic. The directory includes the schematic, Xschem symbol, and functional testbench.

### `gate_tg_x1/`

Contains the transmission gate cell used for digital signal switching. The directory includes the schematic and Xschem symbol.

## How to Simulate

Open the desired schematic using Xschem:

```bash
xschem logica_digital_TOP.sch
```

or open the corresponding testbench for any individual digital block, for example:

```bash
xschem logica_digital_TOP_tb.sch
```

Generate the netlist and execute the simulation using NGSPICE.

---


## Required Tools

- GF180MCU PDK
- Xschem
- NGSPICE
- KLayout
---
