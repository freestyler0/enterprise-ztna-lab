\# Network Design



\## Overview



The Enterprise Zero Trust Architecture network provides the foundation for secure communication between users, enterprise services, and cloud security platforms.



The environment is designed to simulate a production-inspired enterprise network while maintaining a clear separation between user devices, management systems, and server infrastructure.



The network supports hybrid identity, Zero Trust Network Access (ZTNA), centralized monitoring, and Infrastructure as Code.



\---



\# Network Topology



The environment consists of the following infrastructure:



Internet



↓



Cisco ASA 5500 Firewall



↓



Cisco ISR 2911 Router



↓



Cisco Catalyst 2960 Switch



↓



VMware ESXi Host



↓



Enterprise Virtual Machines



\---



\# Core Infrastructure



| Component | Role |

|------------|------|

| Cisco ASA 5500 | Internet edge firewall |

| Cisco ISR 2911 | Enterprise router |

| Cisco Catalyst 2960 | Layer 2 switching |

| VMware ESXi | Virtualization platform |

| Windows Server | Active Directory, DNS |

| IIS | Internal web application |

| Wazuh | Security monitoring |

| ZPA App Connector | Secure application access |



\---



\# IP Addressing



\## Management Network (VLAN 20)



| Device | IP Address |

|----------|------------|

| Cisco Router | 10.10.20.1 |

| Cisco Switch | 10.10.20.2 |

| ESXi Host | 10.10.20.5 |

| Domain Controller | 10.10.20.10 |

| IIS Server | 10.10.20.50 |

| Wazuh Server | 10.10.20.60 |



\---



\## User Network (VLAN 10)



| Network | Purpose |

|----------|----------|

| 10.10.10.0/24 | User workstations |



\---



\# VLAN Design



\## VLAN 10



Purpose:



\- User workstations

\- Client Connector devices

\- Administrative workstations



Subnet:



10.10.10.0/24



\---



\## VLAN 20



Purpose:



\- Server infrastructure

\- VMware ESXi

\- Active Directory

\- DNS

\- IIS

\- Wazuh



Subnet:



10.10.20.0/24



\---



\# Routing



Routing between VLANs is provided by the Cisco ISR 2911.



The router is responsible for:



\- Inter-VLAN routing

\- Default gateway services

\- Enterprise network connectivity



\---



\# Switching



The Cisco Catalyst 2960 provides Layer 2 connectivity for:



\- User VLANs

\- Server VLANs

\- ESXi uplinks



The switch separates user and server traffic using VLAN segmentation.



\---



\# Virtual Infrastructure Connectivity



VMware ESXi hosts all enterprise virtual machines.



Virtual networking provides connectivity between:



\- Active Directory

\- DNS

\- IIS

\- Wazuh

\- ZPA App Connector



The ESXi host connects to the physical network through the Cisco switch.



\---



\# Network Security



Several security mechanisms are implemented:



\- VLAN segmentation

\- Enterprise firewall

\- Identity-based authentication

\- Zero Trust application access

\- Centralized monitoring

\- Least privilege access



These controls reduce lateral movement and minimize exposure of internal services.



\---



\# Future Enhancements



Potential improvements include:



\- Layer 3 switching

\- High Availability firewall

\- Dynamic routing (OSPF)

\- Network Access Control (NAC)

\- IPv6 support

\- Redundant Internet connectivity



\---



\# Related Documentation



\- Active Directory

\- Microsoft Entra ID

\- ZPA Deployment

\- Wazuh SIEM

\- Terraform Infrastructure as Code

