SUBDIR=
SUBDIR+= 	./crypto
SUBDIR+= 	./hashsign
SUBDIR+= 	./bitcoin

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
