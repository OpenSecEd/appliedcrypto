Module: Applied Cryptography (appliedcrypto)
===============================================================================

This is a learning module for Applied Cryptography.  It's aim is to cover 
high-level cryptography --- mechanisms and their properties --- such that the 
students are aware of the possibilities and (if desired) can apply them when 
designing secure systems.

The module is part of the [Open Security Education][OpenSecEd] project and the 
maintainer is [Daniel Bosk][Maintainer].  The latest release can be found under 
[releases][Releases].  You can safely link directly to the PDFs found there.

[OpenSecEd]: https://github.com/OpenSecEd
[Maintainer]: https://github.com/dbosk
[Releases]: https://github.com/OpenSecEd/appliedcrypto/releases


File Structure and Building
-------------------------------------------------------------------------------

*To build* the PDFs, after cloning the repository you must clone its required 
submodules:
```shell
$ git submodule update --recursive --init
```
Then you can go into the directory of the desired document and run `make`.
The source files are structured as follows:

- `overview` contains slides for a high-level overview of encryption.
- `cryptoproofs` is a learning module on proof techniques in cryptography and 
  security.
- `crypto` is an old overview of crypto.
- `symcrypt` (old) is an introduction to symmetric crypto, very similar to 
  `crypto`.
- `pubkey` (old) is an introduction to public-key crypto, very similar to 
  `hashsign`.
- `hashsign` (old) contains slides for a high-level overview of signatures and 
  hash functions.
- `bitcoin` contains slides for how to analyse properties and design a system 
  using proper crypto mechanisms.
- `spuriouslab` contains the instruction for a lab on brute forcing and 
  spurious keys.

In each directory the files are structured as follows:

- `<name>.tex` contains the main content.
- `aims.tex` is an itemized list of the intended learning outcomes, as such it 
  can be included in another document summarizing the list of intended learning 
  outcomes.
- `abstract.tex` is an abstract of the lecture, assignment, or similar, and 
  covers the required reading instructions, thus you can include these in 
  a study guide containing all reading instructions for the course.
- `<name>.bib` contains the bibliography entries, thus this file can be 
  included along with the reading instructions.


*To contribute*, please [fork the repository][ForkARepo], make your changes, 
commit them and then create a [pull request][PullRequest] in the original 
repository.

[ForkARepo]: https://help.github.com/articles/fork-a-repo/
[PullRequest]: https://help.github.com/articles/using-pull-requests/
