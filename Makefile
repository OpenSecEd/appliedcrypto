SUBDIR+=	./overview
SUBDIR+= 	./bitcoin

SUBDIR+=	./cryptoproofs

SUBDIR+= 	./spuriouslab


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
