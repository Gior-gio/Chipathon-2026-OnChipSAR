# Overview
This work presents a SAR ADC that combines several techniques to reduce area and implementation complexity while maintaining good linearity. A fully passive single-ended-to-differential conversion (SDC) stage is integrated into the capacitive DAC, eliminating the need for an active front-end. To mitigate common-mode voltage variations during the successive approximation process, a modified monotonic switching scheme is employed, requiring only two reference voltages while improving common-mode stability. In addition, the DAC is implemented using a hybrid RC architecture, significantly reducing the total capacitance and silicon area compared to conventional binary-weighted implementations.

# Team members
| Name | Discord | Github | Affiliation (experience) | Role |
|---|---|---|---|---|
| Jorge Angarita-Pérez | jangper | @Gior-gio | Onchip - Universidad Industrial de Santander (post-graduate) | Team lead |
| Jeison Acevedo | Jeison Acevedo | @JHacevedo| Onchip - Universidad Industrial de Santander (post-graduate) | Circuit Design |

*And some occasional contributors

# Links

_Repository_: https://github.com/Gior-gio/Chipathon-2026-OnChipSAR
_Proposal_: https://drive.google.com/file/d/1aagTFaf6xT5bQSnxiDM6Otcf1aaIS6N0/view?usp=sharing

# References

[1] Y. Chae and G. Han, "Low Voltage, Low Power, Inverter-Based Switched-Capacitor Delta-Sigma Modulator," in IEEE Journal of Solid-State Circuits, vol. 44, no. 2, pp. 458-472, Feb. 2009, doi: 10.1109/JSSC.2008.2010973
[2] J. Lagos, B. P. Hershberg, E. Martens, P. Wambacq and J. Craninckx, "A 1-GS/s, 12-b, Single-Channel Pipelined ADC With Dead-Zone-Degenerated Ring Amplifiers," in IEEE Journal of Solid-State Circuits, vol. 54, no. 3, pp. 646-658, March 2019, doi: 10.1109/JSSC.2018.2889680
[3] J. Angarita-Pérez, N. Orcasitas-García, H. Hernandez-Herrera, and J. Ardila, “A Novel Common-Mode Compensation Technique for a Monotonic 10-bit 10-MS/s SAR ADC in a 28-nm CMOS Node,” Journal of Integrated Circuits and Systems, vol. 21, no. 1, 2026, doi: 10.29292/jics.v21i1.1018.
