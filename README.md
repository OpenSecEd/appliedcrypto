Module: Applied Cryptography (appliedcrypto)
===============================================================================

This is a learning module on Applied Cryptography.  It's aim is to cover 
high-level cryptography --- mechanisms and their properties --- such that the 
students are aware of the possibilities and (if desired) can apply them when 
designing secure systems.

Each subdirectory has a README containing a link to the video recording, a 
short summary, the intended learning outcomes and reading instructions. Apart 
from this README are the sources for the material.

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

*To contribute*, please [fork the repository][ForkARepo], make your changes, 
commit them and then create a [pull request][PullRequest] in the original 
repository.

[ForkARepo]: https://help.github.com/articles/fork-a-repo/
[PullRequest]: https://help.github.com/articles/using-pull-requests/
