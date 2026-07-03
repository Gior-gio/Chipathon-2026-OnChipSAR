
# Sample & Hold (S/H) – GF180MCU




## Overview

This repository contains the design, layout, and verification files for a bootstrapped Sample & Hold (S/H) circuit implemented using the GlobalFoundries GF180MCU Process Design Kit (PDK).

The Sample & Hold serves as the front-end sampling stage of a Successive Approximation Register (SAR) Analog-to-Digital Converter (SAR ADC). The design has been developed and verified using the open-source analog IC design flow.

---

## Features


- Layout design (in progress)

---

## Verification Status

The design has successfully completed the following verification stages:

| Verification | Status |
|--------------|:------:|
| Schematic Verification | ✅ |
| Functional Transient Simulation | ✅ |
| Process, Voltage and Temperature (PVT) Analysis | ✅ |
| Monte Carlo Mismatch Analysis | ✅ |
| DRC |Planned|
| LVS |Planned|

---

## Performance Summary

The Sample & Hold was evaluated under nominal operating conditions.
| Parameter | Low-Frequency Test | Near-Nyquist Test |
|-----------|-------------------:|------------------:|
| Technology | GF180MCU | GF180MCU |
| Supply Voltage | 3.3 V | 3.3 V |
| Sampling Frequency | 5 MS/s | 5 MS/s |
| Input Frequency | 502.9296 kHz | 2.4853 MHz |
| Output Load | 0.25 pF | 0.25 pF |
| SNDR | 81.73 dB | 73.06 dB |
| SFDR | 88.39 dB | 73.60 dB |
| ENOB | 13.28 bits | 11.84 bits |
| Average Power | 2.11 µW | 2.09 µW |

> The reported results demonstrate the dynamic performance of the Sample & Hold under both low-frequency and near-Nyquist input conditions.

---
## Repository Structure

```text
samplehold/
├── bootstrapped/
│   ├── cace/                   # Circuit characterization files
│   ├── gds/                    
│   └── xschem/
│       ├── bootstrapped.sch    # Bootstrapped Sample & Hold schematic
│       ├── bootstrapped.sym    # Xschem symbol
│       ├── tb_bootstrapped.sch # Transient simulation testbench
│       └── tb_bootstrapped.ipynb # FFT and data analysis
│
├── gate_inv_sh/
│   └── xschem/
│       ├── gate_inv_sh.sch     # Gate driver inverter schematic
│       └── gate_inv_sh.sym     # Xschem symbol
│
├── gate_inv_L0d28/             
│
└── tb_resistencia/
    └── xschem/
        └── tb_resistencia.sch  # Switch ON-resistance characterization
```
## Directory Description



### `bootstrapped/`

Contains the complete schematic implementation of the bootstrapped Sample & Hold switch, including the Xschem schematic and symbol, circuit characterization files, transient simulation testbench, and generated simulation outputs.

### `gate_inv_sh/`

Contains the schematic and Xschem symbol of the inverter used to drive the gate of the bootstrapped switch.



### `tb_resistencia/`

Contains the testbench used to characterize the switch ON resistance (Ron) under different operating conditions.

## Required Tools

- GF180MCU PDK
- Xschem
- NGSPICE
- KLayout
- Python 3
- Jupyter Notebook

---

## Running Simulations

Open the desired schematic using Xschem:

```bash
xschem bootstrapped.sch
```

or

```bash
xschem tb_resistencia.sch
```

Generate the netlist and execute the simulation using NGSPICE.

---

## Applications

This Sample & Hold circuit is intended for integration into the front-end of a high-performance SAR ADC implemented in the GF180MCU technology.

---

## Authors

OnCHIP Integrated Systems Research Group-Universidad Industrial de Santander (UIS)
