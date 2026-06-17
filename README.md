# Overview
This work presents a SAR ADC that combines several techniques to reduce area and implementation complexity while maintaining good linearity. A fully passive single-ended-to-differential conversion (SDC) stage is integrated into the capacitive DAC, eliminating the need for an active front-end. To mitigate common-mode voltage variations during the successive approximation process, a modified monotonic switching scheme is employed, requiring only two reference voltages while improving common-mode stability. In addition, the DAC is implemented using a hybrid RC architecture, significantly reducing the total capacitance and silicon area compared to conventional binary-weighted implementations.

# Repository Structure

```text
designs/
└── sar_adc/
    ├── samplehold/
    ├── comparator/
    ├── digital/
    └── dac/

docs/
├── README.md           # Team Git workflow
└── ...

.githooks/              # Repository safety hooks
first_setup.sh          # Initial repository setup
```

# Getting Started

Clone the repository and run the setup script:

```bash
git clone git@github.com:Gior-gio/Chipathon-2026-OnChipSAR.git
cd Chipathon-2026-OnChipSAR
./first_setup.sh
```

# Links

_Repository_: https://github.com/Gior-gio/Chipathon-2026-OnChipSAR

_Proposal_: https://drive.google.com/file/d/1aagTFaf6xT5bQSnxiDM6Otcf1aaIS6N0/view?usp=sharing

# References

[1] A. Peña-Pérez et al., "A Low-Power Single-Ended SAR ADC With Energy-Efficient Differential Switching for Ultrafast X-Ray Imagers," in IEEE Open Journal of Circuits and Systems, vol. 7, pp. 255-268, 2026, doi: 10.1109/OJCAS.2025.3628857.

[2] Y.-Z. Lin et al. “A 0.9-V 11-bit 25-MS/s Binary-Search SAR ADC in 90-nm CMOS”. in: IEEE Asian Solid-State Circuits Conference 2011. Jeju, Korea (South), 2011, pp. 69–72. DOI: 10.1109/ASSCC.2011.6123606.

[3] J. Angarita-Pérez, N. Orcasitas-García, H. Hernandez-Herrera, and J. Ardila, “A Novel Common-Mode Compensation Technique for a Monotonic 10-bit 10-MS/s SAR ADC in a 28-nm CMOS Node,” Journal of Integrated Circuits and Systems, vol. 21, no. 1, 2026, doi: 10.29292/jics.v21i1.1018.
