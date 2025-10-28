# Revision History

1.  Revision as of June 12, 2023

    1.  Explain the problem ZPR solves.

    2.  Reorder sections to describe policy before enforcement mechanisms.

    3.  Delete "network" as example of actor type because it is a confusing special case. The definition remains true as stated because networks can be treated as devices.

    4.  Make a more precise distinction between an attribute and its name and explain type definition.

    5.  Describe ZPR endpoints.

    6.  Postpone explicit mention of the communications system that enables nodes to communicate. This should be in more precise descriptions, but not this overview.

    7.  Describe a private cloud as an example of a node.

    8.  Describe distinction between policy language and complied policy representation.

    9.  Add section on Attributes and trusted services.

    10. Remove description of visa distribution which is described in other RFCs.

    11. Figure 1 modified to add data attribute tag and move MICV to header.

2.  Revision as of June 20, 2023

    1.  Change title and introduction of section 2.5.

    2.  Rename ZPR endpoints to ZPR-node endpoints to clarify that they exist only within a node.

    3.  Add example in section 3.2.

    4.  Explain how visas simplify enforcement in section 3.3.

    5.  Explain how MICV is checked for ZPR-node endpoints in section 3.

3.  Revision as of June 22, 2023

    1.  Point out that identities are primarily used for authentication and logging.

    2.  Explain adapters in more detail in section 3.1.1.

    3.  Retitle section 3.2.

4.  Revision as of June 30, 2023

    1.  Update policy language example.

    2.  Explain how visas bind authentication to packets.

    3.  Explain that assertions can specify alerts when unintended patterns of communication are attempted.

5.  Revision as of March 8, 2025

    1.  Rename people to users.

    2.  Remove permissions based on type of data transmitted.

    3.  Clarify definition of identity.

    4.  Update Figure 1 to new vocabulary

    5.  Simplify ZPL examples.

    6.  Move configurations to section 3.

    7.  Take out ZPR-node endpoints, as they are distracting.

6.  Revision as of May 21, 2025

    1.  Incorporate new endpoint, user, service identity concept.

    2.  Add reference to ZPR-RFC-16.
