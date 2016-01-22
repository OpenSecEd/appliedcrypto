SUBDIR=
SUBDIR+= 	./crypto
SUBDIR+= 	./symcrypt
SUBDIR+= 	./pubkey
SUBDIR+= 	./hashsign
SUBDIR+= 	./bitcoin

SUBDIR+=	./cryptoproofs

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
