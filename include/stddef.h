/* stddef.h — minimal freestanding <stddef.h> for the -nostdinc build.
 *
 * The build compiles with -nostdinc, so the compiler's own stddef.h is not on
 * the include path. GS-headers' global.h needs size_t + offsetof (the GPTR
 * macro). Classic offsetof form (gcc-2.96 predates __builtin_offsetof). NULL is
 * intentionally not defined here — gba/types.h already provides it.
 */
#ifndef _STDDEF_H
#define _STDDEF_H

typedef unsigned int size_t;
#define offsetof(type, member) ((size_t) &(((type *) 0)->member))

#endif /* _STDDEF_H */
