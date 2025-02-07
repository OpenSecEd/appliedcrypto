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
1. Which statement is true regarding asymmetric encryption?
   a. It uses the same key for encryption and decryption.
   b. It uses a pair of keys: one public and one private.
   c. It is inherently faster than symmetric encryption.
   d. It does not require any form of key management.

2. What is a widely used asymmetric encryption algorithm?
   a. DES
   b. AES
   c. RSA
   d. Blowfish

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

5. One major drawback of asymmetric encryption is:
   a. It requires extensive key distribution.
   b. It is generally slower than symmetric encryption.
   c. It does not support secure key exchange.
   d. It relies solely on hash functions.

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
