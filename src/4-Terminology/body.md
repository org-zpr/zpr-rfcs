# Introduction

This document defines the approved names for various ZPR concepts. They are grouped into
general categories: top-level, components, policies, connections, protocols and
addresses. ZPR RFCs should use these names when referencing the corresponding concept.

Whenever possible standard names are used for existing, standard concepts, but since ZPR
does things differently it often uses a new name for a new concept that is similar to an
existing concept. For example, a Docking Session is often a secure tunnel with multiple
streams, but not always. It always has multiple streams and additional properties, so it
has a name of its own, So, even though all the new vocabulary can be confusing, there is
reason for it.

# Top-Level

These names are used with the main concepts of ZPR.

Zero Trust

:   "Zero Trust" is a widely used term in the network and security industries, so lacks a
    precise, widely agreed upon definition. We use the term in a way that is generally
    aligned with the industry.

    Zero Trust is a network architecture where every component of the network must
    postively, strongly, and securely identify itself, and can perform only those
    operations that are explicitly permitted by policies.

    Core principles of a Zero Trust Network are:

    1) Explicit Verification

       All components of the network must establish their identity and other parameters
       (such as location or time of day) in order be permitted to perform network
       activity,

    2) Least Privilege Access

       Network components are granted the minimum level of permission necessary to
       perform their task. Furthermore, a component has no permission unless it is
       explicitly granted.

    3) Assume the worst

       Security is designed assuming bad actors are already inside the network.
       Components trust other components only as far as needed to perform their permitted
       tasks,

ZPR

:   ZPR is an acronym for Zero-Trust Packet Routing. (Pronounced as Zip'er)

ZPR Network, AKA ZPRnet

:   A network comprised of ZPR nodes, links, and various services that enforce a common
    network-wide set of policies. It is often an internetwork, implemented across many
    interconnected substrate networks.

ZPR System

:   A ZPR network plus actors, adapters, and services that are not a part of the core ZPR
    network.

Configuration, ZPR Configuration

:   A ZPR System–wide set of values that specifies a configuration of the ZPR System. The
    configuration specifies parameters such as:

    - Policy
    - Network Topology
    - Length of fields in ZDP packet

    Multiple configurations may be installed and available at any one time. A ZDP packet
    specifies which configuration should be used to process it.

Active Configuration

:   A ZPR configuration under which new packets are sent in a ZPR network.

# Components

These terms name specific components comprising a ZPR Network.

Adapter

:   An adapter sits between an actor and a dock and interfaces the actor to the ZPR
    network. An adapter may provide various proxy services for the actor, such as
    actually doing the authentication procedures or obtaining redirect addresses and
    translating addresses in actor packets as needed. The ingress adapter receives actor
    packets from the source actor and forwards them to the ingress dock. The egress
    adapter receives packets from the egress dock and sends them to the destination
    actor. Adapters are not part of the network itself (…and should be considered
    untrustworthy?).

Administration Service

:   The Administration Service is a ZPR network component that administers the ZPR
    network. It includes, among other things, tools for network administrators to develop
    and manage policies, compile the policies, and inject them into the network. It is
    normally implemented in a distributed manner across multiple servers. The
    administration service communicates with the individual ZPR entities via ZPR,
    ensuring that the communications are protected.

Actor

:   An actor is a permissioned communicator. An actor is composed of a device and may
    also include a user and one or more services, and it inherits the attributes of its
    component elements. ZPR exists to forward data from one actor to another in a secure,
    policy-controlled, manner. Packets are sent from source actors to destination actors.
    Actors are defined by their attributes.

Actor Application, Application

:   Piece of software that either is the actor or is representing the actor (e.g., the
    software in an ATM, where the human using the ATM is the actual actor). Actor
    applications may be client/server (in the normal sense of the terms) or peer-to-peer
    or any other network application structure.

Actor Identity, Identity

:   The collection of an actor's authenticated identity attributes, with a unique
    immutable attribute value associated with each component of the actor's identity.

Attributes

:   A set of name/value pairs associated with part or all of an actor's identity that may
    have associated authentications. Attribute values can come from the authentication
    process or from a trusted service. The schema of supported data types is described
    elsewhere.

Authentication

:   The process in which a user, machine, OS, process, etc. proves that they have certain
    attributes, usually by presenting credentials. This process can be as simple as a
    username/password challenge or certificate challenge to the complexity of multifactor
    authentication and zero-knowledge proofs.

Trusted Service

:   A ZPR connected service that supports a ZPR specified API standard. This includes
    authentication, attributes, logging, and monitoring.

Authentication Service

:   A service of the ZPR network that authenticates actors by serving as a trusted source
    of identity attributes. It is normally implemented in a distributed manner across
    multiple servers.

Dock

:   The component of a node with which an actor establishes a connection to a ZPR
    network, called a docking session. A dock may support multiple docking sessions.
    Packets enter a ZPR network at the ingress dock and leave it at the egress dock.
    Docks may be internal or external. Internal docks are used to connect internal ZPR
    actors to the network. External docks are used to connect the external actors that
    communicate through the ZPR network. All nodes contain at least one internal dock and
    contain zero or more external docks.

Docking Session

:   A secure communication session between an actor and a dock where each has
    authenticated to the other. If the actor and dock are connected via an IP network,
    the docking session is a secure tunnel through the IP network. Docking sessions have
    multiple streams, including at least one control stream and one or more tethers.

Forwarder

:   A functional component of a node that forwards traffic through the ZPR network.
    Forwarders are joined to each other via links. All nodes contain at least one
    forwarder.

Gateway

:   A point at which a network connects to a network outside it. The outside network may
    be a conventional (non-ZPR) network or another, independently administered ZPRnet. A
    gateway that joins two ZPRnets bridges two independently administered policy domains.
    It re-admits traffic from one ZPRnet into the other under the receiving ZPRnet's own
    policy and trusted sources, rather than under any shared end-to-end policy (see
    ZPR-RFC-1).

Node

:   Component of a ZPR network that is responsible for forwarding packets from their
    source to their destination. A node contains at least one forwarder and one internal
    dock. A node may also provide gateway functionality, connecting adapters to the ZPR
    network, in which case it must have one or more external docks. Nodes have node
    addresses.

Service, Internal Service

:   A component of the ZPR network that performs tasks other than the forwarding of
    transit packets. Services perform tasks such as authenticating actors, evaluating
    policies, granting visas, and so on.

Substrate Network

:   A ZPR network is constructed as a virtual network on top of another network or set of
    communication links. The underlying networks and/or links over which the ZPR network
    has been constructed is referred to as the Substrate Network. Substrates may be any
    packet-carrying network, such as IPv4, IPv6, IEEE802 (Ethernet), and so on. For
    ZPR-2020 this is IP (v4 and v6).

Tether

:   An individual stream of a docking session that can carry a compliant flow between an
    adapter and a dock. Tethers have tether addresses, which include the dock address of
    the dock supporting the docking session.

Visa

:   A permission that allows actor packets that match a specific pattern to traverse the
    ZPR network before a specified termination condition (such as expiration time or data
    transfer limit). A visa specifies limits on the rate and volume of allowed
    communications, the destination(s) of the message etc. Additional information
    associated with the visa includes things like the applicability pattern (e.g. a
    5-tuple), and endorsements of the visa, although this is not part of the visa.

    Visas include the following components:

    Visa Serial Number

    :   A value that uniquely identifies the visa in the entire ZPR net.

    Visa Expiration Time

    :   Is a time when the visa expires and is no longer valid for permitting transit
        packets to transit the ZPR network.

    Visa Key

    :   The visa key is cryptographic keying material known only by the visa service,
        ingress dock, and egress dock. It is used to secure the transit packet's payload,
        ensuring that it is not altered or redirected by an attacker. The visa key
        provides material for encryption, authentication, and integrity protection of the
        transit packet payload.

    Visa Processing Procedure

    :   The processing procedures define how to forward a transit packet that is allowed
        by the visa to transit the ZPR network.

    Visa management includes the following operations:

    Heralding & Acceptance

    :   The process by which a visa is installed along a path to be used by a particular
        traffic flow. Visas are either A) explicitly installed in each forwarder along the
        path by the visa service or B) included in the visa heralding operation. In the
        heralding operation, each forwarder either A) sends the visa serial number (in the
        explicit installation case) or B) the actual visa to the next forwarder in the
        path and, in turn, receives either an acceptance (indicating that the downstream
        forwarder accepts the visa and will continue to herald it) or refusal (indicating
        that the downstream does not accept the visa for some reason). The acceptance
        includes the visa ID to use when sending ZDP packets.

    Retraction

    :   A positive action taken by the visa service to remove a visa from the network.

        Deacceptance

        :   A forwarder removing a previously accepted visa from service (for example, if
            the link used by the visa goes down). Deacceptance is signaled upstream.
            Upstream forwarders may continue the deacceptance process or attempt to herald
            a visa via a new path.

    Refusal

    :   An indication that the downstream forwarder does not accept a visa.

    Expiration

    :   Visas have explicit expiration conditions (such as times or data transfer limits),
        after which they are removed from service. Each forwarder tracks its visas'
        expiration conditions and acts accordingly.

    Visa Service

    :   A service of the ZPR network that generates and distributes visas to enable
        allowed flows. The visa service is normally implemented in a distributed manner by
        a set of visa servers. The visa service communicates with the ZPR network's
        entities through the ZPRnet, ensuring that the communications are protected.

## Modifiers

The following words are used above as modifiers to specific components:

Source, Destination

:   Used with actors to distinguish whether it is the originator of a packet (source) or
    its intended receiver (destination).

Ingress, Egress

:   Used with adapters and docks to distinguish whether they connected to the source
    (ingress) or destination (egress) actor.

Internal, External

:   Used with docks to distinguish whether its associated actor is a ZPR network
    component (internal) or a "user" of the network (external).

# Policies

Policy

:   A set of rules that are enforced by the ZPR network. There are:

    Authentication Policies

    :   Define how actors must authenticate themselves in order to obtain identity
        attributes.

    Communications Policies

    :   Control what actor-to-actor communications are allowed based on, among other
        things, how the actors have authenticated themselves.

    Connection Policies

    :   Define what links and docking sessions are allowed, the conditions under which
        they are created, and how they operate.

    Reporting Policies

    :   Define how nodes report significant events.

Policy Adoption

:   A policy is adopted by activating a configuration that has the policy. The
    consistency of the policy with the current set of attribute values is always verified
    before it is adopted.

Policy Compilation

:   Policy compilation verifies that the policy definition is internally consistent and
    converts it from ZPL format to a policy descriptor in ZPF format. Policies can be
    compiled only after they are defined and must be compiled before they are adopted.

Policy Definition

:   Parts of policy can be defined in different places, but the entire policy is not
    defined until all the parts are combined into a single policy definition.

Policy Enforcement

:   Takes place inside every ZPR node. It begins as soon as a policy is adopted and
    continues as long as a configuration that uses policy is active, or any packets sent
    under such a configuration are in transit.

Policy Verification

:   ZPR verifies the internal consistency of policy at the time of policy compilation. It
    also allows the verification of the consistency of policy internally and with a given
    set of attribute values at any other time, such as just before it is adopted.

ZPL

:   ZPR Policy Language. The human-readable language for specifying ZPR policies.

ZPF (ZPR Policy Format)

:   A machine-readable language used in the Policy Descriptor for distributing policies
    to the various entities in the ZPR network.

Permission, Permission Statement

:   A statement in ZPL that explicitly allows a permissioned communication. A
    permission statement may specify that multiple actors may communicate (for example,
    by explicitly listing actors, by including wildcards, or by saying "Any actor with
    property P"). When the actors express that desire, the permission allows a visa to be
    issued.

    Note that ZPR policies only include permissions to communicate. They do not include
    denials, making the policies easier to understand and audit.

Local Circumstances

:   Local circumstances are type/value pairs that indicate current conditions at one or
    more entities (e.g., "Actor is currently located outside of the office"). Local
    circumstances may frequently change and thus are frequently evaluated to ensure that
    a granted visa is still valid.

Assertion, Assertion of Intent

:   A statement in the policies that describes what the goal of the policy is (e.g., "no
    classified information should be allowed to be communicated to actors located outside
    of a classified facility"). Policies and permissions are checked against the
    assertions, ensuring that the overall goal is met.

# Connections

Compliant Flow, AKA Flow, Traffic Flow

:   A stream of data between two actor applications that has been evaluated and approved
    for transport across a ZPR network. A compliant flow may be associated with one or
    more visas. These may change over time.

Link

:   A connection between two nodes that carries ZDP traffic from node to node. Links are
    secure. Links may span multiple hops of the substrate (e.g., routers and subnets for
    ZPR-2020). A link is between two forwarders.

Path

:   A sequence of links from an ingress dock to an egress dock. A packet travels over a
    path. Often, all the packets in a flow travel over the same path.

# Protocols

ZDP

:   ZPR Data Protocol.

    This is the underlying data protocol used to carry Actor and Management Packets. ZDP
    consists of several packet types:

    ZDP Management, Management

    :   ZDP Management is a protocol used to manage the operation of ZDP. It performs
        services such as heralding Visas and signaling operational errors. It operates
        between adjacent entities such as Forwarders, Docks, and Adapters. ZDP Management
        packets control individual Flows and Links.

    Actor Packets

    :   Actor Packets are the packets that flow between Actors across tethers and the ZPR
        Network.

    Transit Packets

    :   Transit packets carry compressed Actor Packets through the ZPR network from
        ingress dock to egress dock.

    Data Attribute Tag

    :   An optional component of the ZDP transit packet. It contains a value that is
        evaluated by intermediate forwarders in making forward/drop decisions for a
        specific transit packet. For example, a particular ZPR Network may encode the
        data's security level in the tag; the forwarders would forward transit packets
        only if they have links with a corresponding security attribute.

# Addresses, Numbers

Docking-Session Prefix

:   A 2-tuple of the node number and docking session number. It uniquely identifies the
    docking session in the entire ZPR network.

Docking-Session Number

:   A numerical identifier assigned to a docking session by a dock. The docking session
    number is unique within a dock. Tethers within the docking session are assigned
    tether numbers associated with the docking session number.

Link Address

:   A network address assigned to one end of a specific link. It is created as the tuple
    of node number and link number. It is primarily used in calculating paths and next
    hops through the network graph.

Link Number

:   A number assigned by a node to a link. The link number is unique within the node.

Node Number (also Node Address and Node Prefix)

:   A number that uniquely identifies a specific node within a ZPR network. They are used
    in calculating paths through the graph. Nodes allocate docking session, tether, and
    link numbers associated with the node number (typically using the node number as a
    prefix). (As an implementation strategy, node numbers may be IP address prefixes.)
    Sometimes "node address" or "node prefix" are used where the context uses the term as
    an address or prefix, however these terms are deprecated.

Substrate Address

:   A network address taken from the substrate address space. As a general rule, most
    entities in a ZPR network have an underlying substrate address. Substrate addresses
    are used when sending packets across the substrate (e.g., a forwarder sends a ZDP
    packet to the next-hop forwarder, across a link, by specifying one of the next-hop
    forwarder's substrate addresses as the DA in the packet).

    Applicable if and only if the substrate actually has addresses.

Substrate Address Space

:   The network address space used by the substrate. In ZPR2020 these are the IP
    addresses used in an underlying IP network.

Tether Address

:   A 3-tuple consisting of a node number, docking-session number and tether number
    (equivalently, a 2-tuple of docking-session prefix and tether number). It uniquely
    identifies the tether within the entire ZPR network.

Tether Number

:   A number assigned to identify a specific tether within a specific docking session.
    Tether numbers are assigned by docks and are unique within the docking session of
    which the tether is a component.

ZPR Identifier Number (ZIN)

:   The number used to identify the destination of a packet to be delivered by a ZPR
    network. In other contexts, outside of the ZPR network, the ZIN may also be treated
    as an IP address.

ZIN Namespace

:   A set of globally reserved IPv6 addresses (or locally reserved IPv4 addresses) that
    use one or more ZIN Reserved Prefixes, making ZINs indistinguishable from IP
    addresses.

ZIN Reserved Prefixes

:   Prefixes in the IP address space reserved for use as ZINs.

Unique Local ZINs

:   ZINs reserved for use within private ZPR Networks.

ZPRnet Identifier Space

:   The set of ZINs accepted by a particular ZPRnet as destinations, defined by the set
    of prefixes associated with that network.

Visa Identifier

:   A value carried in a ZDP packet (sometimes used as a Stream ID in ZDP) that
    identifies the specific flow, (and therefore the specific visa enabling the flow)
    that the packet belongs to.
