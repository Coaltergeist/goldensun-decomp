#ifndef CANDIDATE_MAPS_IMIL_H
#define CANDIDATE_MAPS_IMIL_H

extern void __Actor_SetSpriteFlags(void *, int);

extern void __Actor_SetAnimSpeed(void *, int);

extern unsigned int gKeyHeld;

extern void __MapActor_SetAnim(int, int);

extern void __ClearFlag(int);

/* `.Lm921_31f0` is a 12-byte (0xc) .bss vector shared by the two functions
 * that use it; see asm/maps/imil/imil_data.s. OvlFunc_921_200954c copies all
 * three words, OvlFunc_921_20095b4 reads only the first one, through a cast. */
typedef struct { int x, y, z; } Vec3;

extern Vec3 Lm921_31f0 __asm__(".Lm921_31f0");

#endif
