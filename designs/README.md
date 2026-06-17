# Designs

This directory contains the hardware designs developed within the repository.

Each design is organized as an independent project with its own documentation, circuit hierarchy, verification infrastructure, and implementation files.

## Available Designs

### SAR ADC

Location:

```text
designs/sar_adc/
```

The SAR ADC is the main design currently developed in this repository for Chipathon 2026.

The architecture combines:

* Passive single-ended-to-differential conversion integrated into the DAC
* Modified monotonic switching using only two reference voltages
* Hybrid RC-DAC architecture for capacitance and area reduction

The design is divided into the following functional blocks:

```text
sar_adc/
├── samplehold/
├── comparator/
├── digital/
├── dac/
└── top/
```

Additional information regarding circuit organization, naming conventions, and verification flows can be found in:

```text
designs/sar_adc/README.md
```

## Design Philosophy

Design source files, layout data, and verification collateral are organized within each design project.

Generated simulation results and temporary artifacts should not be committed unless explicitly required by the project workflow.

Refer to the corresponding design documentation for project-specific organization rules.
