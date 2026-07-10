# Sample & Hold (S/H) – GF180MCU

This repository contains the design, layout, and verification files for a bootstrapped Sample & Hold (S/H) circuit implemented using the GlobalFoundries GF180MCU Process Design Kit (PDK).

The Sample & Hold serves as the front-end sampling stage of a Successive Approximation Register (SAR) Analog-to-Digital Converter (SAR ADC). The design has been developed and verified using the open-source analog IC design flow.

---

## Verification Status

The design has successfully completed the following verification stages.

| Verification | Status |
|--------------|:------:|
| Schematic Verification | ✅ |
| Functional Transient Simulation | ✅ |
| Process, Voltage and Temperature (PVT) Analysis | ✅ |
| Monte Carlo Mismatch Analysis | ✅ |
| Layout |  In Progress |
| DRC |  Planned |
| LVS |  Planned |

---

## Simulation Results

The Sample & Hold was evaluated under nominal operating conditions.

| Parameter | Low-Frequency Test | Near-Nyquist Test |
|-----------|-------------------:|------------------:|
| Technology | GF180MCU | GF180MCU |
| Supply Voltage | 3.3 V | 3.3 V |
| Sampling Frequency | 5 MS/s | 5 MS/s |
| Input Frequency | 502.93 kHz | 2.485 MHz |
| Output Load | 0.25 pF | 0.25 pF |
| SNDR | 81.73 dB | 73.06 dB |
| SFDR | 88.39 dB | 73.60 dB |
| ENOB | 13.28 bits | 11.84 bits |
| Average Power | 2.11 µW | 2.09 µW |

> The reported results demonstrate the dynamic performance of the Sample & Hold under both low-frequency and near-Nyquist input conditions.

---

## Directory Structure

```text
samplehold/
├── bootstrapped/
│   ├── cace/
│   ├── gds/
│   └── xschem/
│       ├── bootstrapped.sch
│       ├── bootstrapped.sym
│       ├── tb_bootstrapped.sch
│       └── tb_bootstrapped.ipynb
│
├── gate_inv_sh/
│   └── xschem/
│       ├── gate_inv_sh.sch
│       └── gate_inv_sh.sym
│
├── gate_inv_L0d28/
│
└── tb_resistencia/
    └── xschem/
        └── tb_resistencia.sch
```

---

## Directory Details

### `bootstrapped/`

Contains the complete schematic implementation of the bootstrapped Sample & Hold switch, including the Xschem schematic and symbol, characterization files, transient simulation testbench, and simulation outputs.

### `gate_inv_sh/`

Contains the schematic and Xschem symbol of the inverter used to drive the bootstrapped switch.

### `gate_inv_L0d28/`

Reserved for the future layout implementation of the gate driver inverter.

### `tb_resistencia/`

Contains the testbench used to characterize the switch ON resistance (Ron) under different operating conditions.

---

## How to Simulate

Open the desired schematic using Xschem:

```bash
xschem bootstrapped.sch
```

or

```bash
xschem tb_resistencia.sch
```

Open the Jupyter Notebook for post-processing and analysis

```bash

jupyter notebook tb_bootstrapped.ipynb

```

Generate the netlist and execute the simulation using NGSPICE.

The generated simulation data can be post-processed using the provided Jupyter Notebook for FFT analysis and performance evaluation.

---

## Required Tools

- GF180MCU PDK
- Xschem
- NGSPICE
- KLayout
- Python 3
- Jupyter Notebook

---
