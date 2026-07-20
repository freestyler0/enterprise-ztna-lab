\# Solution Architecture



\## Overview



Enterprise Zero Trust Architecture is designed around the principle that no user, device, or network connection should be trusted by default.



Instead of relying on traditional perimeter-based security, the solution verifies every access request using identity, device posture, access policies, and continuous authorization.



The architecture combines enterprise networking, hybrid identity, Zero Trust Network Access (ZTNA), centralized security monitoring, and Infrastructure as Code (IaC) into a single security platform.



\---



\# Architecture Principles



The solution is based on the following principles:



\- Never Trust, Always Verify

\- Least Privilege Access

\- Identity-Centric Security

\- Secure by Default

\- Defense in Depth

\- Continuous Monitoring

\- Infrastructure as Code

\- Comprehensive Documentation



\---



\# High-Level Architecture



The architecture consists of six major layers:



\## 1. Network Infrastructure



Provides enterprise connectivity between users, servers, and the Internet.



Components include:



\- Cisco ASA Firewall

\- Cisco ISR 2911 Router

\- Cisco Catalyst 2960 Switch



\---



\## 2. Virtual Infrastructure



Hosts all enterprise services inside VMware ESXi.



Virtual machines include:



\- Domain Controller

\- DNS Server

\- IIS Web Server

\- Wazuh Server

\- ZPA App Connector



\---



\## 3. Identity Layer



Responsible for authentication and authorization.



Components:



\- Microsoft Active Directory

\- Microsoft Entra ID



Identity synchronization enables hybrid authentication between on-premises and cloud services.



\---



\## 4. Zero Trust Access Layer



Secure application access is provided through Zscaler Private Access (ZPA).



Instead of exposing servers through VPNs or public IP addresses, applications are published securely through App Connectors.



Users authenticate before any connection is established.



\---



\## 5. Security Monitoring Layer



All security events are centralized within Wazuh.



Collected information includes:



\- Authentication events

\- System logs

\- Windows Events

\- Linux Logs

\- Security Alerts



This enables centralized monitoring and incident investigation.



\---



\## 6. Automation Layer



Terraform automates supported ZPA resources including:



\- Application Segments

\- Segment Groups

\- Server Groups



Infrastructure as Code improves consistency, repeatability, and change management.



\---



\# Trust Boundaries



The architecture separates trust into multiple security zones.



\## External Zone



\- Internet

\- Remote Users



\## Edge Zone



\- Cisco ASA Firewall



\## Internal Network



\- Enterprise LAN

\- Active Directory

\- DNS

\- IIS

\- Wazuh

\- VMware ESXi



\## Cloud Services



\- Microsoft Entra ID

\- Zscaler Cloud



Each boundary applies authentication, authorization, and policy enforcement before granting access.



\---



\# Security Architecture



The solution applies multiple security controls:



\- Network Segmentation

\- Identity Verification

\- MFA (when configured)

\- Least Privilege Access

\- Zero Trust Policies

\- Secure Application Publishing

\- Centralized Logging

\- Infrastructure Automation



These controls reduce attack surface while improving visibility.



\---



\# Authentication Flow



The authentication process follows these high-level steps:



1\. User signs in.

2\. Identity is verified by Microsoft Entra ID.

3\. ZPA evaluates access policies.

4\. App Connector establishes an outbound connection.

5\. Secure application session is created.

6\. Security events are forwarded to Wazuh.



No inbound firewall rules are required for published applications.



\---



\# Network Flow



Typical traffic flow:



Internet



↓



Cisco ASA Firewall



↓



Cisco Router



↓



Cisco Switch



↓



VMware ESXi



↓



Enterprise Services



Zero Trust application traffic is brokered through ZPA rather than direct network connectivity.



\---



\# Architecture Benefits



The architecture provides:



\- Reduced attack surface

\- Identity-based access control

\- Secure remote access

\- Improved visibility

\- Centralized monitoring

\- Infrastructure consistency

\- Simplified administration

\- Enterprise scalability



\---



\# Next Steps



The following documents describe each architectural domain in detail:



\- Network Design

\- Active Directory

\- Microsoft Entra ID

\- ZPA Deployment

\- Wazuh SIEM

\- Terraform Infrastructure as Code

