\# Business Requirements

![alt text](AD-Users.png)

\## Purpose



The purpose of this project is to design and implement a production-inspired Enterprise Zero Trust Architecture that improves the security posture of a hybrid enterprise environment.



The architecture demonstrates how modern identity-based security, Zero Trust Network Access (ZTNA), centralized monitoring, and Infrastructure as Code (IaC) can replace traditional perimeter-based security models.



\---



\# Business Problem



Traditional enterprise networks often assume that users inside the corporate network are trusted by default.



This approach introduces several security risks:



\- Excessive network trust

\- Lateral movement after compromise

\- VPN overexposure

\- Weak identity verification

\- Limited visibility into security events

\- Manual infrastructure management



As organizations adopt cloud services and hybrid work models, these risks become increasingly difficult to manage.



\---



\# Business Objectives



The project aims to achieve the following objectives:



\- Reduce implicit trust within the enterprise network.

\- Protect internal applications using Zero Trust principles.

\- Strengthen identity verification through Microsoft Entra ID.

\- Provide secure remote access without exposing the internal network.

\- Centralize security monitoring and log collection.

\- Automate infrastructure deployment and configuration.

\- Produce comprehensive technical documentation.



\---



\# Functional Requirements



The solution shall provide:



\- Enterprise network segmentation

\- Hybrid identity integration

\- Secure application access through ZPA

\- Continuous user authentication

\- Role-based access control

\- Security event collection

\- Centralized monitoring

\- Infrastructure automation

\- Administrative documentation



\---



\# Non-Functional Requirements



The solution should provide:



\- Scalability

\- High availability

\- Maintainability

\- Documentation

\- Security by design

\- Infrastructure consistency

\- Auditability

\- Automation where possible



\---



\# Security Requirements



The architecture follows Zero Trust principles by ensuring:



\- Every user is authenticated.

\- Every device is verified.

\- Every session is authorized.

\- Access is granted using least privilege.

\- Internal applications are never directly exposed to the Internet.

\- Security events are centrally monitored.

\- Administrative actions are documented.



\---



\# Assumptions



The project assumes:



\- Enterprise users authenticate using Active Directory.

\- Microsoft Entra ID provides cloud identity services.

\- ZPA brokers secure application access.

\- VMware ESXi hosts the virtual infrastructure.

\- Cisco networking provides enterprise connectivity.

\- Wazuh collects security telemetry.

\- Terraform automates supported infrastructure resources.



\---



\# Constraints



The implementation is performed in a virtual lab environment.



Some production capabilities such as hardware redundancy, clustering, disaster recovery, and enterprise licensing are outside the scope of this project.



However, the overall architecture is designed to closely resemble a real-world enterprise deployment.



\---



\# Success Criteria



The project is considered successful when:



\- Zero Trust access is operational.

\- Identity integration functions correctly.

\- Internal applications are securely accessible.

\- Security monitoring is centralized.

\- Infrastructure deployment is reproducible.

\- Documentation accurately reflects the implementation.



\---



\# Conclusion



These business requirements establish the foundation for the technical architecture presented throughout the remainder of this documentation.



Each subsequent document explains how the proposed architecture satisfies these objectives while following modern Zero Trust security principles.

