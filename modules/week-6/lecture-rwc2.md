---
title: 'Lecture 16/2: Real-world crypto, part II (Daniel) on ZOOM+CAMPUS'
url: lecture-16-slash-2-real-world-crypto-part-ii-daniel-on-zoom+campus
published: true
front_page: false
editing_roles: teachers
modules:
- Week 6
---
The lecture will be interactive. We will work in groups to design two
systems. First, we'll (re)design a secure electronic postbox (think
[Kivra](https://kivra.se/en/private)). Second, if time permits, we'll
(re)design a secure and private [BankID](https://www.bankid.com/en/)
remake that fits our needs for our Kivra redesign.

We build on your first postbox designs from Week 4.
Bring up your group's tab in the shared design document and iterate from what
you wrote then:

<https://docs.google.com/document/d/1eRv-ekY04tdTCvwss4dK3juKlUez4CnoZihcC4J9mKc/edit>

## During the lecture: redesign with protocol scaffolding

For the postbox service, use the protocol tools from the protocol lecture
series (Week 5) to make your design explicit and robust.
In particular, write down (and update) for your chosen sub-protocols:

- Parties and trust assumptions
- Attacker model and what is in/out of scope
- Security properties (what is protected from whom)
- Message flow (who sends what to whom, in what order)
- Cryptographic material (keys, certificates, identifiers)
- Key lifecycle and recovery (lost device/keys, compromise, key rotation)
- Metadata exposure (what the service learns vs what outsiders learn)

Deliverable: an updated design in your group's tab plus a short note on what
you changed compared to Week 4 and why.

## Watching and reading to do

It's good if you watch these videos and read the papers before the
lecture, but it's not crucial, you can watch and read them afterwards.

These materials are provided as interactive learning material through
FeedbackFruits. See [Access to
videos](https://canvas.kth.se/courses/59543/pages/access-to-videos "Access to videos"){api-endpoint="https://canvas.kth.se/api/v1/courses/59543/pages/access-to-videos"
api-returntype="Page"}.

## Signal protocol

Overview of Signal:

-   [Video: How Signal \[X3DH\] Instant Messaging Protocol
    Works](https://canvas.kth.se/courses/59543/assignments/349975 "Video: How Signal [X3DH] Instant Messaging Protocol Works"){course-type="assignments"
    published="true"
    api-endpoint="https://canvas.kth.se/api/v1/courses/59543/assignments/349975"
    api-returntype="Assignment"}
-   [X3DH: Extended Triple
    Diffie-Hellman](https://canvas.kth.se/courses/59543/assignments/349976 "X3DH: Extended Triple Diffie-Hellman"){course-type="assignments"
    published="true"
    api-endpoint="https://canvas.kth.se/api/v1/courses/59543/assignments/349976"
    api-returntype="Assignment"}
-   [Video: Double Ratchet Messaging
    Encryption](https://canvas.kth.se/courses/59543/assignments/349974 "Video: Double Ratchet Messaging Encryption"){course-type="assignments"
    published="true"
    api-endpoint="https://canvas.kth.se/api/v1/courses/59543/assignments/349974"
    api-returntype="Assignment"}
-   [The Double Ratchet
    Algorithm](https://canvas.kth.se/courses/59543/assignments/349972 "The Double Ratchet Algorithm"){course-type="assignments"
    published="true"
    api-endpoint="https://canvas.kth.se/api/v1/courses/59543/assignments/349972"
    api-returntype="Assignment"}

[Another protocol (standard) and some discussion about
groups:]{style="color: var(--ic-brand-font-color-dark); font-family: inherit; font-size: 1rem;"}

-   Messaging Layer Security: Towards a New Era of Secure Group
    Messaging (interactive
    [video](https://eu.feedbackfruits.com/groups/activity-group/6d09f4f4-ab0f-46b2-ac42-4e31daec7823),
    [document](https://eu.feedbackfruits.com/groups/activity-group/bc3448d5-9c1d-41e9-96d3-d8eff3613ea7))

## Tor and Onion Routing

-   Tor: The second generation onion router (interactive
    [video](https://eu.feedbackfruits.com/courses/activity-course/8ec49fde-601e-4b72-9788-d2a5fc1cc256),
    [paper](https://eu.feedbackfruits.com/groups/activity-group/07021bc5-60af-406f-9941-dfdfe1070f55))

-   Website Fingerprinting with Website Oracles (interactive
    [video](https://eu.feedbackfruits.com/groups/activity-group/bc865246-a460-4761-9122-2f9b1c9eee3c),
    [paper](https://eu.feedbackfruits.com/groups/activity-group/cb1d8fcb-1660-417f-969f-2787a8f80521))
