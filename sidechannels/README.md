[![Side 
Channels](https://img.youtube.com/vi/mVAWapvf33Y/hqdefault.jpg)](https://youtu.be/mVAWapvf33Y) 

*Summary:* When looking at secure systems it is easy to assume they are
safe just because the secret keys are not directly reachable. This is
not always true. Even if the key storage is unreachable, there is some
information that can be extracted anyway. For instance, the time an
operation takes to perform reveals some information about the operands.
This is what is called side-channel information.

*Intended learning outcomes:* You are able

-   to *reflect* on the security of implementations, or lack thereof,
    from the aspect of side-channels.

*Reading:* The topci is covered by

-   Chapter 17 of (Anderson 2008),

-    (Genkin, Shamir, and Tromer 2013) where the authors extract RSA
    keys using acoustic side-channels, they analyse the sound emitted by
    the electrical circuitry to find the computations done and hence
    derive the RSA key used.

Anderson, Ross J. 2008. *Security Engineering: A Guide to Building
Dependable Distributed Systems*. 2nd ed. Indianapolis, IN: Wiley.
<http://www.cl.cam.ac.uk/~rja14/book.html>.

Genkin, Daniel, Adi Shamir, and Eran Tromer. 2013. “RSA Key Extraction
via Low-Bandwidth Acoustic Cryptanalysis.” Cryptology ePrint Archive,
Report 2013/857, 2013. <http://eprint.iacr.org/2013/857>.
