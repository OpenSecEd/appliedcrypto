SUBDIR+= 	intro
SUBDIR+= 	shared-key
SUBDIR+= 	one-way
SUBDIR+= 	pub-key
SUBDIR+= 	zkp-smc

SUBDIR+= 	./bitcoin
SUBDIR+= 	./sidechannels

#SUBDIR+=	cryptoproofs

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
