Wrong questions:

22: Unlike symmetric cryptography, which focuses on encrypting data to ensure 
confidentiality, ZKPKs are designed to show possession of a secret without 
exposing any part of it, even though both approaches are fundamental to secure 
cryptographic systems.

9: If k_AB is chosen randomly, then no matter how the message m (which fits in 
one block) is chosen, the ciphertext c will be just as random as k_AB.

9: Clarified scenario:

  "Alice sends a message c = Enc(k_AB, m) to Bob. Bob receives c', computes m' 
  = Dec(k_AB, c'). Enc is an algorithm such as AES. Select all statements that 
  are true."
  
Clarified statement:

  "If Enc is a secure scheme, it ensures that when Alice sends her second 
  message c_2 = Enc(k_AB, m_2), the ciphertext c_2 reveals no useful 
  information about the plaintexts m and m_2 to an attacker."

Clarified statement:

  "Alice and Bob must have securely shared the key k_AB before Bob can run 
  Dec."
  
16: Clarify by adding "be part of".

# Quiz development

The purpose of INL1Quiz is to establish a good intuition in line with Dolev-Yao 
analysis in the protocols section.

# Part I

Slide 5: "Literature" with two t.

Slide 7: "is in general be context" (remove be).

# Part II

Emphasize more why we shouldn't reuse a key for different purposes. For 
example: same key for encryption and digital signatures, or same key for 
signatures as for authentication.

Slide 18: "blocs" should be "blocks".

# Part III

Slides 10: Since you say that they should use a standard and preferably 
existing libraries, why do we want them to implement AES? Because it's good 
first-hand experience of how difficult it is to get right. Imagine doing it 
without all the Kattis tests. Also, to reflect on how to handle side channels 
in the side channels lab.

# Part IV

Wouldn't part IV be the perfect place to talk about initialization vectors? ;-)

# Ideas for questions from lecture

## Symmetric encryption

Alice sends a message c = Enc(k_AB, m) to Bob. Bob computes m' = Dec(k_AB, c).

1. Statement: The encryption algorithm used is symmetric.  
   True. Explanation: The same key (k_AB) is used for both encryption and decryption, which characterizes symmetric-key cryptography.

2. Statement: Alice and Bob must have securely shared the key k_AB prior to communication.  
   True. Explanation: For symmetric-key cryptography, a secure key exchange or prior sharing of the key is necessary to ensure secure communication.

3. Statement: An eavesdropper who intercepts the ciphertext c can easily recover the plaintext m.  
   False. Explanation: Without knowledge of the secret key k_AB, the ciphertext should be computationally infeasible to decrypt, assuming a secure encryption scheme.

4. Statement: Bob’s decryption process correctly inverts the encryption process, yielding m' equal to m under normal conditions.  
   True. Explanation: If the encryption and decryption algorithms are implemented correctly and no tampering occurs, Dec(k_AB, Enc(k_AB, m)) should return the original message m.

5. Statement: This scenario is an example of public-key, or asymmetric, cryptography.  
   False. Explanation: The scenario employs a shared symmetric key (k_AB) for both encryption and decryption, not a pair of public and private keys.

6. Statement: The confidentiality of message m depends on the secrecy of the key k_AB.  
   True. Explanation: If k_AB is compromised, an adversary could decrypt c to obtain m; hence, the key’s secrecy is fundamental to the confidentiality provided by symmetric encryption.

7. Statement: A secure encryption scheme ensures that the ciphertext c reveals no useful information about the plaintext m to an attacker.  
   True. Explanation: Under a secure encryption scheme, c is pseudorandom and does not leak information about m to anyone who does not possess k_AB.

8. Statement: The encryption process automatically guarantees the integrity and authenticity of the message m.  
   False. Explanation: Basic symmetric encryption primarily provides confidentiality; without additional mechanisms like message authentication codes (MACs) or authenticated encryption, integrity and authenticity are not assured.

9. Statement: Bob must reject the message if the ciphertext c has been tampered with during transit.  
   True. Explanation: In secure communication, if integrity verification is implemented (e.g., via MAC or authenticated encryption), Bob should be able to detect alterations and reject the message accordingly.

10. Statement: Using a deterministic encryption algorithm without randomness is always secure for encrypting m.  
    False. Explanation: Deterministic encryption can be vulnerable to known-plaintext attacks and does not provide semantic security; incorporating randomness is generally recommended to enhance security.


## Asymmetric encryption for authentication

Alice has RSA key pair (pk_A, sk_A). Bob knows that pk_A belongs to Alice and 
wants to verify Alice’s identity.

1. Statement: Alice’s RSA key pair consists of a public key (pk_A) and a private key (sk_A).  
Answer: True  
Explanation: An RSA key pair always comprises a public key used for encryption or signature verification and a private key used for decryption or digital signature creation.

2. Statement: Bob can verify a digital signature from Alice by using her public key pk_A to check that the signature was created with her private key sk_A.  
Answer: True  
Explanation: In RSA, a valid digital signature is verified by decrypting it with the public key, ensuring that only someone with the corresponding private key (Alice) could have generated it.

3. Statement: Anyone with access to pk_A can forge a signature in Alice’s name without needing her private key sk_A.  
Answer: False  
Explanation: The security of RSA is based on the fact that the private key cannot be feasibly derived from the public key, so only Alice can produce a valid signature.

4. Statement: If Bob receives a message and the signature verification using pk_A fails, he can conclude that the message did not originate from Alice.  
Answer: True  
Explanation: A failed signature verification indicates that the message was either tampered with or not signed by the holder of the corresponding private key (Alice).

5. Statement: Bob must trust that the provided pk_A actually belongs to Alice; otherwise, an attacker could substitute their own public key.  
Answer: True  
Explanation: Identity verification relies on the assurance that the public key is correctly bound to its owner; without a trusted certificate or verification mechanism, this binding could be compromised.

6. Statement: The RSA algorithm guarantees that if a signature verifies correctly using pk_A, then it was produced by the holder of sk_A with no chance of a different key producing the same signature.  
Answer: True  
Explanation: Under properly implemented RSA and secure key sizes, a correctly verified signature uniquely confirms the use of the corresponding private key.

7. Statement: It is computationally easy to derive Alice’s private key sk_A from her public key pk_A.  
Answer: False  
Explanation: The security of RSA relies on the difficulty of factoring large prime numbers, making it computationally infeasible to derive the private key from the public key.

8. Statement: To confirm her identity, Alice can encrypt a challenge from Bob using her private key, and Bob can verify it with pk_A.  
Answer: True  
Explanation: This is the essence of a digital signature scheme where encrypting the challenge with the private key proves ownership, and decryption with the public key validates the signature.

8.2. Statement: To confirm her identity, Alice can encrypt a challenge from Bob 
using her private key, and Bob can verify it with pk_A. Bob can maliciously 
choose the challenge to get a signature from Alice on any message he wants.
Answer: True
Explanation: As long as the message fits the size of the challenge. Can be the 
hash of a message, which is shorter.

9. Statement: When Bob verifies Alice’s digital signature on a message, he can be confident that the message has not been altered after signing.  
Answer: True  
Explanation: Digital signatures provide integrity checks; any alteration in the message would result in a signature mismatch during verification.

10. Statement: If an attacker intercepts a signed message from Alice, they can modify the message without affecting the validity of the signature.  
Answer: False  
Explanation: Any modification to the message would change its hash, and consequently the digital signature verification would fail, indicating tampering.


# Ideas for questions on prerequisites

Must cover the topics

- symmetric encryption
- asymmetric encryption
- hash functions
- MACs
- digital signatures
- public key infrastructure
- random number generators
- ZKPK
- MPC

Asymmetric Encryption
3. What is one key benefit of asymmetric encryption?
   a. It simplifies key distribution in large networks.
   b. It removes the need for any encryption keys.
   c. It only supports encryption and not decryption.
   d. It eliminates the need for digital certificates.

4. In asymmetric encryption, if a message is encrypted with a public key, which key must be used for decryption?
   a. The same public key.
   b. A symmetric key.
   c. A randomly generated key.
   d. The corresponding private key.

Hash Functions
1. What is the primary purpose of a hash function in cryptographic applications?
   a. To encrypt data.
   b. To produce a fixed-size output from input data.
   c. To distribute keys.
   d. To generate digital signatures.

2. Which property is most desired in a cryptographic hash function?
   a. Reversibility.
   b. Deterministic output with collision resistance.
   c. Variable output length.
   d. Dependency on symmetric keys.

3. A collision in a hash function occurs when:
   a. Two different inputs produce different hash outputs.
   b. Two different inputs produce the same hash output.
   c. The hash function returns variable-length outputs.
   d. The function becomes reversible.

4. Which of the following hash functions has been widely used despite recent vulnerabilities?
   a. MD5
   b. RSA
   c. AES
   d. Blowfish

5. One major limitation of hash functions in security applications is:
   a. Their inability to provide high-speed encryption.
   b. Their vulnerability to collision attacks.
   c. Their requirement for digital certificates.
   d. Their dependence on symmetric key algorithms.
   
   
The main property of a hash function is that it is deterministic, easily 
computable, but hard to invert. Create a questions with 10 true/false 
statements about uses of hash functions. For example: to prevent the system 
from leaking passwords, we hash them before storing them in the database.
Then we can still verify them, but can't find them.

1. Hash functions provide a deterministic transformation from input data to a fixed-size output. True
2. Cryptographic hash functions are designed to be easily invertible so that the original input can be recovered from the output. False
3. Hash functions are widely used to verify data integrity by comparing a computed hash with a known value. True
4. One common use of hash functions is to securely store passwords by hashing them before saving in a database. True
5. Collision resistance means that it is computationally infeasible for two different inputs to produce the same hash output. True
6. Hash functions are primarily used for encrypting sensitive data, ensuring that the output can be decrypted later. False
7. In blockchain technology, hash functions are used to link blocks together and secure the chain from tampering. True
8. Digital signature schemes often rely on hash functions to create a digest of the message before signing. True
9. Hash functions can be used to generate unique identifiers for large files, making it easier to detect duplicates. True
10. A challenge in designing hash functions is that they must be slow to compute in order to resist brute-force attacks. False

MACs (Message Authentication Codes)
1. What does MAC stand for in cryptographic contexts?
   a. Message Authentication Code.
   b. Media Access Control.
   c. Multiple Access Channel.
   d. Message Authorization Component.

2. What is the primary purpose of a MAC?
   a. To encrypt messages.
   b. To verify the authenticity and integrity of a message.
   c. To generate public and private keys.
   d. To establish a secure communication channel.

3. Which algorithm is a common construction used for MACs?
   a. HMAC
   b. RSA
   c. AES
   d. ECC

4. A MAC typically requires which of the following elements?
   a. A public key.
   b. A shared secret key.
   c. A digital certificate.
   d. A random nonce only.

5. Which property is essential for ensuring a secure MAC?
   a. Its ability to be reversed.
   b. Its resistance to forgery.
   c. Its use of public key infrastructure.
   d. Its variable output length.

Message authentication codes (MACs) primarily provide two essential security guarantees:

1. Authenticity: Only someone who knows the shared secret key can generate a valid MAC. This means that if a received MAC verifies correctly, the receiver can be confident that the message came from a legitimate sender with access to that key.

2. Integrity: If any part of the message is altered during transit, the MAC computed by the receiver will not match the original MAC. This ensures that the message has not been tampered with.

Additionally, MACs are typically designed to be computationally efficient and produce fixed-size outputs regardless of the input length. They are also structured to resist forgery; an adversary without knowledge of the secret key should not be able to produce a valid MAC for any new or modified message.

MACs and hash functions share some cryptographic properties but are designed with different goals in mind. A hash function is a one‐way function that maps an arbitrary-length input into a fixed-length output and is expected to be collision resistant (hard to find two different inputs that produce the same output), preimage resistant (hard to invert), and second preimage resistant (hard to find a different input that produces the same output for any given input).

A MAC (Message Authentication Code), on the other hand, is essentially a keyed function used to both ensure data integrity and authenticate the sender. While many MACs (such as HMAC) are built on underlying hash functions, a MAC requires additional properties beyond what is provided by the hash: it must be unforgeable (an adversary without the secret key should not be able to produce a valid MAC for any new message), even if they can compute MACs for messages of their choosing. In that sense, while hash functions focus on collision resistance and one-wayness, MACs focus on resisting forgery under chosen-message attacks.

Thus, although MACs may leverage hash functions, the security properties required in the MAC context (authenticity and unforgeability via a secret key) are distinct from the basic properties (collision resistance, preimage resistance, and second preimage resistance) expected from a cryptographic hash function.


1. MACs ensure both data integrity and sender authenticity when the correct secret key is used. (True)
2. Anyone can generate a valid MAC for a message, regardless of whether they know the shared secret key. (False)
3. Any alteration to a message will result in a MAC that does not match the original, thus detecting tampering. (True)
4. A valid MAC guarantees that a message has not been altered and that it comes from a sender with knowledge of the secret key. (True)
5. MACs produce a fixed-size output regardless of the length of the input message. (True)
6. Although many MACs (like HMAC) are based on hash functions, they add the use of a secret key to provide unforgeability. (True)
7. Cryptographic hash functions and MACs have identical security goals since both focus solely on collision resistance. (False)
8. The security of a MAC depends on the secrecy of the shared key, not on keeping the algorithm itself secret. (True)
9. An attacker with access to several valid message-MAC pairs can easily compute a valid MAC for a new message. (False)
10. MACs are designed to be computationally efficient to generate and verify, making them suitable for real-time applications. (True)


Digital Signatures
1. What is the main purpose of a digital signature?
   a. To provide data encryption.
   b. To verify the authenticity and integrity of a digital message.
   c. To generate random keys.
   d. To perform hashing operations.

2. Which key is used by a signer to create a digital signature?
   a. A public key.
   b. A private key.
   c. A symmetric key.
   d. A session key.

3. How does a digital signature provide non-repudiation?
   a. By encrypting the message.
   b. By ensuring the signer cannot deny having signed the message.
   c. By using a symmetric encryption algorithm.
   d. By masking the contents of a message.

4. Which algorithm is commonly used for creating digital signatures?
   a. RSA
   b. DES
   c. AES
   d. MD5

5. Which component is essential for verifying a digital signature?
   a. The signer’s private key.
   b. The signer’s public key.
   c. The symmetric key used during signing.
   d. The hash function only.
   

Properties of digital signatures:

Authenticity – a digital signature confirms the identity of the signer, 
assuring the recipient that the message or document really originates from the 
signer.

Integrity – it guarantees that the signed data has not been altered in transit. Any modification to the original content will cause the signature verification to fail.

Non-repudiation – once a digital signature is applied, the signer cannot deny having signed the document, providing evidence for later disputes.

Additional aspects like efficiency and the robustness of the underlying cryptographic algorithms also play roles in ensuring that digital signatures are secure and practical in real-world applications.


Digital signatures and MACs (Message Authentication Codes) both provide data integrity and authentication, but they do so in fundamentally different ways:

1. Key Usage:  
   • Digital signatures rely on asymmetric key cryptography, using a private key to sign and a public key to verify.  
   • MACs use symmetric key cryptography, where the same secret key is shared between the sender and recipient for both creating and verifying the MAC.

2. Public Verifiability:  
   • Digital signatures allow any party to verify the signature using the signer’s public key.  
   • With MACs, verification is only possible by someone who possesses the shared secret key, limiting verification to trusted parties.

3. Non-repudiation:  
   • Digital signatures provide non-repudiation, meaning the signer cannot deny having signed the message.  
   • MACs do not offer non-repudiation since all parties who know the secret key could produce a valid MAC, leaving ambiguity about who exactly generated it.

4. Application Scenarios:  
   • Digital signatures are preferred in open environments where public verification and legal non-repudiation are desired.  
   • MACs are typically used in closed systems where confidentiality of the key and performance efficiency are priorities.


1. Digital signatures provide non-repudiation because they use asymmetric cryptography. True
2. MACs provide non-repudiation since the same secret key is used by both the sender and the receiver. False
3. Any party can verify a digital signature with the signer's public key, ensuring public verifiability. True
4. MACs allow public verification of the message integrity and authenticity without the shared key. False
5. A change in the digitally signed data will cause signature verification to fail, thus guaranteeing data integrity. True
6. MACs can guarantee data integrity and authenticity only when the secret key remains confidential. True
7. The security of a digital signature is based on robust asymmetric cryptographic algorithms, while the security of a MAC relies on the secrecy of a symmetric key. True
8. Digital signature algorithms are typically less efficient on resource-constrained devices compared to MAC algorithms. True
9. In open, untrusted environments where legal non-repudiation is required, MACs are preferred over digital signatures. False
10. Digital signatures use a private key for signing and a corresponding public key for verification, whereas MACs use a single, shared key for both operations. True

Public Key Infrastructure (PKI)
1. What is Public Key Infrastructure (PKI)?
   a. A system used solely for symmetric encryption.
   b. A framework for managing digital certificates and public/private keys.
   c. A method to create hash functions.
   d. A protocol for secure file transfers.

2. What is the role of a Certificate Authority (CA) in PKI?
   a. To generate symmetric keys.
   b. To validate and issue digital certificates.
   c. To perform hash computations.
   d. To act as a firewall.

3. Which of the following is a key component of a PKI system?
   a. Digital certificates.
   b. Virtual Private Networks.
   c. Intrusion detection systems.
   d. Pseudorandom number generators.

4. How does PKI contribute to secure communications?
   a. By providing secure key exchange without certificates.
   b. By enabling secure identity verification through digital certificates.
   c. By eliminating the need for encryption.
   d. By providing a simple hash function.

5. A common challenge associated with PKI is:
   a. Encrypting data with symmetric ciphers.
   b. Managing certificate revocation and public key distribution.
   c. Increasing the speed of digital signatures.
   d. Preventing hash collisions.


PKI (Public Key Infrastructure) is built on several core properties that ensure secure communications and trust in digital environments. These include:

1. Authentication – Verifies the identity of users or systems through digital certificates issued by trusted Certificate Authorities (CAs).

2. Confidentiality – Uses public-key cryptography to encrypt data so that only intended recipients with the correct private key can decrypt and read the information.

3. Integrity – Provides mechanisms for ensuring data is not tampered with during transmission. Digital signatures, for example, help recipients verify that the received data is exactly what was sent.

4. Non-repudiation – Prevents individuals from denying their actions. Digital signatures and certificates provide proof of origin, ensuring that the sender cannot later repudiate the message.

5. Trust and scalability – Relies on a hierarchical trust model with CAs and Registration Authorities (RAs), making it scalable to manage many users and systems. This model helps establish and maintain trusted relationships across large networks.

6. Key management – Encompasses the processes for generating, distributing, storing, and revoking keys and certificates to maintain the overall security of the cryptographic system.

These properties work together to create an environment in which secure, authenticated, and legally binding digital communications can take place.


Symmetric key management relies on a single secret key used for both encryption and decryption. Because the same key is used on both ends, it requires a secure channel or mechanism to exchange the key before any secure communication can occur. In contrast, PKI uses asymmetric cryptography where each entity has a public key for encryption and a private key for decryption. This approach avoids the need for secure key exchange because the public key can be openly distributed, while the private key remains confidential.

The key differences include:

1. Key Distribution: With symmetric key systems, every pair of communicating parties needs a unique secret key, which can become impractical in large networks. PKI leverages trusted Certificate Authorities (CAs) to distribute and validate public keys, making it easier to manage keys on a large scale.

2. Authentication: PKI provides a built-in method for authentication through digital certificates and signatures, ensuring that the entity on the other end is who they claim to be. In symmetric systems, authentication is typically achieved through additional mechanisms or protocols since the shared key does not inherently verify identity.

3. Performance: Symmetric encryption is generally computationally faster and more efficient, making it well-suited for encrypting large volumes of data. Asymmetric operations in PKI are slower, so they are often used to exchange a symmetric session key, which then handles the bulk encryption.

4. Scalability: Due to the exponential growth of shared keys needed in symmetric systems, key management becomes increasingly complex with more users. PKI, with its hierarchical trust model and certificate-based approach, scales more gracefully in environments with many users and devices.

In summary, while symmetric key management offers efficiency and simplicity for smaller or more controlled environments, PKI provides robust authentication, scalability, and secure key distribution suited for larger and more dynamic digital ecosystems.


1. PKI relies on asymmetric cryptography, which uses separate keys for encryption and decryption, making the public key safe for open distribution. True
2. In symmetric key management, the same key is used for encryption and decryption, so a secure channel is required to share the key initially. True
3. Digital certificates in a PKI system provide authentication by confirming the identity of the certificate holder. True
4. In symmetric key systems, a single shared key can be used safely by all users in a large network without posing any security risks. False
5. Digital signatures in PKI offer non-repudiation by ensuring that the sender cannot deny having sent the message. True
6. Asymmetric operations in PKI are computationally slower than symmetric encryption, which is why a symmetric session key is often exchanged using PKI. True
7. The hierarchical trust model of PKI, which includes Certificate Authorities (CAs), makes it scalable for managing secure communications in large networks. True
8. PKI ensures confidentiality by encrypting data with the sender’s private key, allowing any recipient with the public key to decrypt it. False
9. Effective symmetric key management requires a secure channel for key distribution since both encryption and decryption use the same key. True
10. Authentication in symmetric key systems is inherently provided by the shared key without needing additional verification methods. False

Random Number Generators
1. What is the primary purpose of a random number generator in cryptographic applications?
   a. To generate predictable sequences for keys.
   b. To produce unpredictable numbers for cryptographic operations.
   c. To encrypt data directly.
   d. To verify digital signatures.

2. Which type of random number generator (RNG) is preferred for cryptographic applications?
   a. A deterministic algorithm with no seed.
   b. A hardware-based random number generator.
   c. A simple mathematical function like a linear congruential generator.
   d. A pseudo-random generator without entropy sources.

3. What characteristic is crucial for a secure RNG?
   a. Low entropy.
   b. High unpredictability and sufficient entropy.
   c. Fixed output patterns.
   d. Reproducibility without a seed.

4. Why is sufficient entropy important in cryptographic RNGs?
   a. It ensures that outputs are consistent.
   b. It prevents attackers from predicting the generated values.
   c. It allows easier synchronization between devices.
   d. It reduces the need for digital signatures.

5. One major vulnerability associated with poorly implemented RNGs is:
   a. Generation of predictable outputs.
   b. Excessive consumption of memory.
   c. Overuse of symmetric encryption algorithms.
   d. Dependence on digital certificates.

The Handbook of Applied Cryptography emphasizes that random number generators 
(RNGs) are a critical component in cryptographic systems. It points out that 
the security of many cryptographic algorithms depends on the quality of the 
random numbers used—particularly their unpredictability and statistical 
soundness. In the text, RNGs are discussed in the context of both 
hardware‐based “true” random number generators and algorithmic (pseudorandom) 
generators. The Handbook explains that while pseudorandom number generators 
(PRNGs) can be engineered to mimic true randomness, they must be designed 
carefully to be cryptographically secure; this means that even if part of their 
internal state or output is revealed, an adversary should not be able to infer 
past or future values.

A key point the Handbook makes is the importance of proper seeding. Even a 
cryptographically strong PRNG can be rendered insecure if its initial seed has 
insufficient entropy or is predictable. The Handbook cautions against using 
simple deterministic methods (such as elementary linear congruential 
generators) that may pass basic statistical tests but lack the unpredictability 
required in cryptographic applications.

In summary, according to the Handbook of Applied Cryptography, a sound random 
number generator for cryptographic use must:
 • Produce outputs that are statistically indistinguishable from true randomness.
 • Be unpredictable, even if partial information about previous outputs is known.
 • Be carefully seeded using high-entropy inputs.
 • Undergo thorough analysis to guard against subtle vulnerabilities that could 
compromise the security of cryptographic protocols.

1. True – Cryptographic RNGs include both hardware-based true random number generators and algorithmic pseudorandom number generators (PRNGs).
2. True – A cryptographically secure PRNG is designed so that even if part of its internal state or output is revealed, its past and future values remain unpredictable.
3. True – Even a strong, cryptographically secure PRNG can become insecure if 
   it is seeded with insufficient entropy or predictable values.
4. True – Simple deterministic methods, like elementary linear congruential generators, may pass basic statistical tests but are not considered secure for cryptographic applications.
5. False – Statistical indistinguishability from true randomness is necessary but not sufficient; a secure RNG must also be unpredictable and properly seeded.
6. True – Proper seeding using high-entropy inputs is critical; without it, even a well-designed PRNG can be compromised.
7. True – The security of a cryptographic RNG depends on thorough analysis to guard against subtle vulnerabilities that could compromise cryptographic protocols.
8. False – Hardware-based true RNGs and cryptographically secure PRNGs serve different roles, and both can be secure if appropriately implemented; neither is inherently the only secure option.
9. True – The Handbook emphasizes that secure RNG outputs must be statistically indistinguishable from true randomness and remain secure even if partial internal state information is exposed.
10. False – The unpredictability of cryptographic RNGs depends on both the design of the algorithm and the quality of its initial seeding; neither aspect alone guarantees security.


ZKPK (Zero-Knowledge Proof of Knowledge)
1. What is the primary goal of a Zero-Knowledge Proof of Knowledge (ZKPK)?
   a. To reveal all details of a secret.
   b. To prove possession of knowledge without revealing the actual secret.
   c. To encrypt data using a secret key.
   d. To verify digital signatures.

2. In a ZKPK protocol, what is typically exchanged between the prover and the verifier?
   a. The complete secret information.
   b. Evidence that the prover knows the secret without exposing it.
   c. A symmetric key.
   d. A digital certificate.

3. Which properties are essential for a valid zero-knowledge proof?
   a. Efficiency and reversibility.
   b. Completeness, soundness, and zero-knowledge.
   c. Confidentiality and public verifiability.
   d. Determinism and fixed output.

4. Zero-Knowledge proofs are particularly useful in scenarios where:
   a. Full credential details must be disclosed.
   b. Sensitive information needs to remain private while proving knowledge.
   c. Large amounts of data must be encrypted.
   d. Only symmetric keys are used.

5. A real-world example of ZKPK usage is:
   a. Proving a user’s identity without revealing their password.
   b. Sending an encrypted email.
   c. Generating a digital signature.
   d. Distributing public certificates.

MPC (Multi-Party Computation)
1. What is the primary purpose of Multi-Party Computation (MPC)?
   a. To allow multiple parties to jointly compute a function while keeping their individual inputs private.
   b. To generate public and private key pairs.
   c. To create digital signatures collaboratively.
   d. To manage symmetric key distribution.

2. In an MPC protocol, what is the desired outcome regarding the computation result?
   a. Only one party learns the result.
   b. All parties learn the result without disclosing their individual inputs.
   c. Every party learns all individual inputs.
   d. The inputs are made public.

3. Which of the following is a common application of MPC?
   a. Secure multi-party voting.
   b. Single-party digital signing.
   c. Broadcast encryption.
   d. Public key distribution.

4. What is one of the main challenges in implementing MPC?
   a. Achieving efficient encryption speeds.
   b. Balancing computational efficiency with robust privacy guarantees.
   c. Managing digital certificates.
   d. Avoiding hash collisions during encryption.

5. A significant advantage of using MPC is:
   a. Eliminating the need for encryption algorithms.
   b. Enabling computation on private data without revealing sensitive inputs.
   c. Simplifying one-party computations.
   d. Increasing the speed of symmetric encryption processes.


Zero-knowledge proofs of knowledge (ZKPK) are cryptographic protocols that 
allow a prover to demonstrate knowledge of a secret without revealing the 
secret itself. The main properties of ZKPK include:

Completeness – If the statement is true and both prover and verifier follow the protocol, then the verifier will be convinced by the proof.

Soundness – A cheating prover, who does not know a valid witness, will not be able to convince the verifier except with only negligible probability.

Zero-knowledge – The verifier learns nothing beyond the fact that the statement is true; the proof reveals no additional information about the secret witness.

Secure multiparty computation (MPC) is designed to let multiple parties jointly compute a function over their private inputs without revealing those inputs to each other. Its main properties include:

1. Privacy – Each party’s input remains confidential, revealing nothing beyond the agreed-upon output.

2. Correctness – The computed output is guaranteed to be correct as long as the protocol is followed properly, even under adversarial conditions.

3. Independence of Inputs – Each participant's input is chosen independently and is not influenced by knowing the other inputs.

4. Fairness – Ideally, all parties receive the output simultaneously; if one party does not receive the result, none do, although achieving full fairness can be challenging in practice.

5. Robustness (or Guaranteed Output) – The protocol is designed to produce the correct output even if some parties deviate from the protocol, within certain adversarial models.

6. Verifiability – In many protocols, parties can verify that the computation was performed correctly, providing a check against misbehavior.

These properties work together to ensure that the joint computation is secure even in the presence of potentially adversarial participants.

1. True or False: In a zero‐knowledge proof of knowledge protocol, the soundness property guarantees that a cheating prover cannot convince a verifier of a false statement with more than negligible probability. (True)
2. True or False: The completeness property of a ZKPK protocol ensures that if the prover knows the secret and follows the protocol, the verifier will always be convinced that the statement is true. (True)
3. True or False: The zero‐knowledge property in a ZKPK protocol permits the verifier to learn some partial information about the secret witness as long as the overall statement is verified. (False)
4. True or False: In secure multiparty computation, the privacy property guarantees that aside from the agreed-upon output, no additional information about any party’s input is revealed to others. (True)
5. True or False: The correctness property in an MPC protocol is maintained only if all participating parties are honest and strictly adhere to the protocol. (False)
6. True or False: The fairness property in MPC protocols ensures that either every party receives the computed output simultaneously or none of them do. (True)
7. True or False: In MPC, verifiability allows participants to confirm that the output was correctly computed according to the protocol, without exposing any party’s private input. (True)
8. True or False: Cryptographic hash functions are often used in both ZKPK and MPC to create commitment schemes that provide binding and hiding properties during the protocol execution. (True)
9. True or False: Asymmetric cryptography can be combined with zero‐knowledge proofs, enabling a prover to demonstrate knowledge of the private key corresponding to a public key without revealing the private key itself. (True)
10. True or False: Unlike symmetric cryptography, which focuses on encrypting data to ensure confidentiality, zero‐knowledge proofs are designed to show possession of a secret without exposing any part of it, even though both approaches are fundamental to secure cryptographic systems. (True)
