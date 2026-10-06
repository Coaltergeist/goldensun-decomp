#ifndef ALTIN_PEAK_ACTOR_H
#define ALTIN_PEAK_ACTOR_H

#include "actor.h"

// Altin Peak prefix view of actors returned by __MapActor_GetActor.
// f0c corresponds to Actor.pos.y; f23 corresponds to Actor.flags.
// Preserve long and padding here; the other local Actor932 views differ.
struct Actor932 {
    unsigned char pad1[0xc];
    long f0c;
    unsigned char pad2[0x23 - 0xc - 4];
    unsigned char f23;
};

// Target ABI checks for the production compiler.
typedef char AltinPeakActor932SizeCheck[(sizeof(struct Actor932) == 36) ? 1 : -1];
typedef char AltinPeakActor932AlignmentCheck[(__alignof__(struct Actor932) == 4) ? 1 : -1];
typedef char AltinPeakActor932FieldWidthsCheck[
    (sizeof(((struct Actor932 *)0)->pad1) == 12 &&
     sizeof(((struct Actor932 *)0)->f0c) == 4 &&
     sizeof(((struct Actor932 *)0)->pad2) == 19 &&
     sizeof(((struct Actor932 *)0)->f23) == 1) ? 1 : -1];
typedef char AltinPeakActor932OffsetsCheck[
    ((unsigned long)&((struct Actor932 *)0)->pad1 == 0 &&
     (unsigned long)&((struct Actor932 *)0)->f0c == 12 &&
     (unsigned long)&((struct Actor932 *)0)->pad2 == 16 &&
     (unsigned long)&((struct Actor932 *)0)->f23 == 35) ? 1 : -1];

typedef char AltinPeakActor932CanonicalOffsetsCheck[
    ((unsigned long)&((struct Actor932 *)0)->f0c == (unsigned long)&((struct Actor *)0)->pos.y &&
     (unsigned long)&((struct Actor932 *)0)->f23 == (unsigned long)&((struct Actor *)0)->flags) ? 1 : -1];

#endif // ALTIN_PEAK_ACTOR_H
