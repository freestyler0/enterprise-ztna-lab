\# IP Addressing Plan



\## Overview



The environment is divided into separate network segments to isolate management services from user devices.



| Network | Purpose |

|----------|----------|

| 10.10.10.0/24 | User VLAN |

| 10.10.20.0/24 | Server \& Infrastructure VLAN |



\---



\## Infrastructure



| Device | Address |

|----------|----------|

| Cisco Router | 10.10.20.1 |

| Cisco Switch | 10.10.20.2 |

| VMware ESXi | 10.10.20.5 |

| Domain Controller | 10.10.20.10 |

| IIS Server | 10.10.20.50 |

| Wazuh Server | 10.10.20.60 |



\---



\## Design Principles



\- Separate user and server traffic

\- Centralized infrastructure network

\- Simplified routing

\- Easy future expansion

