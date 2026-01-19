# Last year's scenario/system description

Due to the recent changes at twitter and Slack, and security problems with
Mastodon (e.g Links to an external site.), KTH decided to commission
a new system for KTH students and staff to communicate in various
constellations: individually, in closed groups according to topics or
roles, KTH wide, and open to the public, with configurable duration
of how long messages are stored. There is a prototype with all the
functionality except security by cryptography, which is your task. For
instance, access rights work correctly but nothing is encrypted or hashed.

# Scenario/system description 2024, alternative 1

KTH wants to improve the security and usability of the access card system. The 
cards should be optional, it should be possible to use a smartphone instead 
(changes usability, whether the smartphone increases usability is up for 
discussion).

The access system handles both staff and students. Different individuals should 
have different access rights. Access rights might be changed at any time 
(including expiring at termination of studies or employment).

Your task is to design the crypto that secures this system.

# Scenario/system description 2024, alternative 2

KTH wants to improve the security and usability of the access card system. The 
(passive) cards should be replaced by (active) key fobs that can be kept in the 
pocket while opening a door (as is quite popular on modern cars, see [Smart 
key][smartkey]). Possibly a smartphone can act as such an active key fob.

Your task is to design the crypto that secures this system.

[smartkey]: https://en.wikipedia.org/wiki/Smart_key

# Scenario/system description 2024, alternative 3

People have trouble distinguishing between AI-generated and camera-recorded 
photographic images. We want to be able to cryptographically verify the 
authenticity of images captured by camera, thus ensuring that the images are 
real and not AI-generated.

Any photographic output from a camera should be signed by the camera. It should 
not be possible to get a camera signature on an image or video it didn't 
capture, so the image sensor outputs signed data that the camera then writes to 
storage.

Any image viewer/video player (like a web browser) should be able to add a 
warning to the user (e.g. a red border) if the signature is missing or invalid 
(i.e. it might be AI generated).

Outline the needed crypto. Discuss the properties needed and any obstacles. 
Remember to cover all relevant areas that we've covered in the course.

## Things to think about

Key revocation: adversarial environment, must revoke leaked keys.

What to do with a camera if a key is revoked? Useless camera, recovery?

Extracting the crypto HW from the camera to use it to sign other things.

Use sidechannel attacks to extract the key.

How to generate randomness, what source of entropy? If the HW can be tricked to 
reuse the same randomness twice (zero entropy in the pool) for the same 
message, we can extract the key. (For some schemes, such as Schnorr.)

Image editing? Can sign the raw image and change image format to provide raw 
(signed) and edits. Same for compression, if the compression runs in a secure 
environment, it can sign the compressed image and still be trusted that it 
verified the signature and that the results is still "the same".

Taking a photo of an AI generated image? Can include a depth sensor and sign 
that data with the image, to tie them together.

Strong randomness when keys are generated, "non-overlapping" keys.

Can track the camera by the signature, privacy concerns. 
Can also use the signature to track illegal images (eg 
child pornography) back to the camera and its owner.

If only some cameras have this capability, we'll still get the problem that 
people might believe pictures that are taken by "ordinary people" but censored 
by the "elite journalists with an agenda" who can afford the expensive cameras 
that can sign images. This is a social problem, not a technical one.

## Alternative solutions

Using MACs with the camera manufacturer. Manufacturer resigns it. For privacy.

# Scenario/system description 2024, alternative 4

People have trouble distinguishing between bots and humans on platforms such as 
Twitter (now that the real service is called X, we can actually use Twitter as 
a figurative example service). The problem with bots is that one person may 
appear as thousands of persons by having bot accounts act like other humans 
liking tweets and posting new tweets propagating similar opinions. Thus someone 
might believe that many more people share a certain opinion than is actually 
the case.

To approach this problem, we want to be able to cryptographically detect if two 
users on Twitter are the same person or not, thus detecting networks of bots 
belonging to the same person. For this reason we will force all users to 
digitally sign all their tweets. A person making a bot network will have to 
sign all tweets (or likes) with the same key.

Someone reading a twitter feed can then detect if two tweets are signed by the 
same key, and thus the same person. This can be used to detect bot networks.

Outline the needed crypto. Discuss the properties needed and any obstacles. 
Remember to cover all relevant areas that we've covered in the course.

