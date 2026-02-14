---
title: 'Lecture 16/2: Real-world crypto, part II (Daniel) on ZOOM+CAMPUS'
regex: 'Lecture.*Real-world crypto, part II'
published: true
front_page: false
editing_roles: teachers
modules:
- Week 6
---
We will continue our design of the postbox system. We'll connect back to what 
Mats has talked about during the protocol design lecture series and revise the 
designs and what to consider. We build on your first postbox designs from Week 4.

For your sub-protocols in the design, think about:

- Parties and trust assumptions
- Attacker model and what is in/out of scope
- Security properties (what is protected from whom)
- Message flow (who sends what to whom, in what order)
- Cryptographic material (keys, certificates, identifiers)
- Key lifecycle and recovery (lost device/keys, compromise, key rotation)
- Metadata exposure (what the service learns vs what outsiders learn)

