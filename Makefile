SUBDIR+= 	intro
SUBDIR+= 	shared-key
SUBDIR+= 	one-way
SUBDIR+= 	pub-key
SUBDIR+= 	zkp-smc
SUBDIR+= 	sidechannels

SUBDIR+= 	./bitcoin

#SUBDIR+=	cryptoproofs

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
