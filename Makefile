SUBDIR=
SUBDIR+= 	./crypto
SUBDIR+= 	./hashsign
SUBDIR+= 	./bitcoin


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
