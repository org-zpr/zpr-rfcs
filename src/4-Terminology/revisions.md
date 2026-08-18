# Revision History

1.  Revision 4.1 as of October 26, 2020, updates to improve and add terminology.

    a.  Editorial Changes

    b.  Changed "ZPR Address" to "ZPR Identifier Number" (or ZIN).

2.  Revision 4.2 as of August 16, 2021, updates for consistency with current vocabulary of RFC-1 and 6.

3.  Revisions 4.3 and 4.4 as of July and August 2023 including a number of new terms as well as revising some definitions to reflect current practice.

    a.  Revised definitions of Attribute, Authentication, Trusted Service and identity, per input from Mickey.

4.  Revision 4.5 as of June 10, 2026, adopting Option 6 naming conventions.

    a.  Renamed "Actor" (and all compounds: Actor Application, Actor Identity, Actor Packets, source/destination actor, actor-to-actor) from "Agent." An actor is a permissioned communicator, typically composed of a device and optionally a user and services. Definition aligned with ZPR-RFC-16.

    b.  Removed the "ZPR Node Endpoint" entry; such in-node processors are treated as part of the ZPR Node.

    c.  Added a "Gateway" entry: a point at which a network connects to a network outside it, including a gateway that joins two ZPRnets and re-admits traffic under the receiving ZPRnet's own policy (see ZPR-RFC-1).

5.  Revision 4.6 as of June 11, 2026.

    a.  Tightened the Actor entry: an actor is composed of a device (a required component) and may also include a user and one or more services, and it inherits the attributes of its component elements. Aligned with ZPR-RFC-1 and ZPR-RFC-16.
