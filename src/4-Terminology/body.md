# Introduction

This document defines terms used when discussing ZPR and its various components.

# ZPR Glossary

| Term | Definition |
|------|------------|
| Actor | A device, user, or service with an authenticated identity participating in communication via ZPRnet. |
| Adapter | Software that allows standard IP-based applications to connect to a ZPRnet through a secure docking session. |
| Assertion | A declarative statement of policy intent in ZPL used to ensure permissions align with intended security goals and do not permit unintended communication. |
| Attribute | A property of an identity (device, user, or service); may be a tag, a name/value pair, or a name/multi-value set. |
| Authentication | The process of verifying the association between an identity and its device, user, or service. |
| Authentication Service | A service that validates the identities of devices, users, or services; multiple may exist in ZPRnet. |
| Byzantine Fault Tolerance | A method of building fault-tolerant services that can withstand component failures or compromises. |
| Certificate | A cryptographic document proving the association of a service identity with a specific actor and ports. |
| Circumstance | A runtime condition (e.g., time of day, data volume, recent usage) that can influence permissions. |
| Class | A defined group of entities (e.g., users, services) with shared attributes; can be subclassed. |
| Compliant Flow | A secure, policy-compliant communication path between actors, guided by visas. |
| Configuration | A complete, testable set of policies and network settings that define how ZPRnet operates. |
| Configuration Description | A ZPL component defining network-specific settings such as topology and IP addresses. |
| Device Identity | An identity for a device, typically associated with a MAC address, TPM, or certificate. |
| Dock | An interface on a node that connects to adapters using IP protocols. |
| Flow | A unidirectional communication stream between actors, which may be governed by policies based on identity. |
| Identity | A unique key used to retrieve attributes associated with an device, user, or service. |
| Identity Attribute | A specific attribute value, such as a serial number, used to validate an identity association. |
| Incremental Compilation | The ability to independently compile and combine parts of policy for modular policy management. |
| Management Packet | An internal packet used for control-plane functions such as visa distribution. |
| MICV | Message Integrity Check Value; a cryptographic hash ensuring the integrity of a transit packet. |
| Name | A string used for identifying attributes, identities, or classes; may include a namespace prefix. |
| Namespace | A context in which names are defined; names in different namespaces are not equivalent. |
| Node | A ZPR component that forwards packets and enforces policy. |
| Paranoid Design Principles | Four core security principles underlying ZPR’s trust-minimized network design. |
| Permission | A positive policy statement in ZPL that allows communication under certain attribute-based conditions and circumstances. |
| Port Attribute | An attribute of a service identity indicating the ports on which it communicates. |
| Service | An application that sends/receives packets; has an identity and attributes, and is bound to actors by port. |
| Service Identity | An identity for a service, authenticated through certificates and tied to port numbers. |
| Signal | A message triggered by a matching policy statement to notify another service (e.g., a logger). |
| Statement | A line of ZPL defining permissions, assertions, class definitions, or other policy elements. |
| Tag | An attribute with a name but no associated value. |
| Transit Packet | A packet that carries actor data through the ZPRnet. |
| Trusted Source | A verified system (e.g., LDAP, Active Directory) used to retrieve attribute values. |
| User | A person connecting to the ZPRnet. |
| User Identity | An identity tied to a user via authentication. |
| Visa | A cryptographic certificate authorizing packet travel; defines authentication, permissions, and routing. |
| ZDP | ZPR Data Protocol; allows secure tunnels through IP networks to connect adapters with docks. |
| ZPL | Zero-Trust Policy Language; a human-readable language used to define, audit, and enforce communication policies in ZPRnet, including permissions, assertions, and class definitions. |
| ZPL Compiler | The component that checks consistency of permissions and assertions and generates enforcement rules. |
| ZPR | Zero-Trust Packet Routing; a network architecture that enforces communication policies within the network. |
| ZPRnet | A network or group of interconnected ZPR nodes that enforce communication policies using visas, compliant flows, and ZPL rules. |
