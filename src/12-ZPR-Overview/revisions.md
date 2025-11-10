# Revision History

1.  Revision as of June 12, 2023

    a.  Explain the problem ZPR solves.

    b.  Reorder sections to describe policy before enforcement mechanisms.

    c.  Delete "network" as example of actor type because it is a confusing special case. The definition remains true as stated because networks can be treated as devices.

    d.  Make a more precise distinction between an attribute and its name and explain type definition.

    e.  Describe ZPR endpoints.

    f.  Postpone explicit mention of the communications system that enables nodes to communicate. This should be in more precise descriptions, but not this overview.

    g.  Describe a private cloud as an example of a node.

    h.  Describe distinction between policy language and complied policy representation.

    i.  Add section on Attributes and trusted services.

    j.  Remove description of visa distribution which is described in other RFCs.

    k.  Figure 1 modified to add data attribute tag and move MICV to header.

2.  Revision as of June 20, 2023

    a.  Change title and introduction of section 2.5.

    b.  Rename ZPR endpoints to ZPR-node endpoints to clarify that they exist only within a node.

    c.  Add example in section 3.2.

    d.  Explain how visas simplify enforcement in section 3.3.

    e.  Explain how MICV is checked for ZPR-node endpoints in section 3.

3.  Revision as of June 22, 2023

    a.  Point out that identities are primarily used for authentication and logging.

    b.  Explain adapters in more detail in section 3.1.1.

    c.  Retitle section 3.2.

4.  Revision as of June 30, 2023

    a.  Update policy language example.

    b.  Explain how visas bind authentication to packets.

    c.  Explain that assertions can specify alerts when unintended patterns of communication are attempted.

5.  Revision as of March 8, 2025

    a.  Rename people to users.

    b.  Remove permissions based on type of data transmitted.

    c.  Clarify definition of identity.

    d.  Update Figure 1 to new vocabulary

    e.  Simplify ZPL examples.

    f.  Move configurations to section 3.

    g.  Take out ZPR-node endpoints, as they are distracting.

6.  Revision as of May 21, 2025

    a.  Incorporate new endpoint, user, service identity concept.

    b.  Add reference to ZPR-RFC-16.
