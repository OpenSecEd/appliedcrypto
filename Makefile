SUBDIR+= 	intro
SUBDIR+= 	shared-key
SUBDIR+= 	one-way
SUBDIR+= 	pub-key
SUBDIR+= 	zkp-smc
SUBDIR+= 	sidechannels

SUBDIR+= 	spuriouslab

SUBDIR+= 	bitcoin
#SUBDIR+=	cryptoproofs


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
