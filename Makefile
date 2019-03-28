SUBDIR+= 	overview
SUBDIR+= 	intro
SUBDIR+= 	shared-key

SUBDIR+= 	./bitcoin
SUBDIR+= 	./sidechannels

SUBDIR+=	./cryptoproofs

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
