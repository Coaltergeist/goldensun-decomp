// constants/flags.h
#ifndef FLAGS_H
#define FLAGS_H

#if   GS1
#include "gs1/flags.h"
#elif GS2
#include "gs2/flags.h"
#endif

#define FLAG_PC_ISAAC                0x000
#define FLAG_PC_GARET                0x001
#define FLAG_PC_IVAN                 0x002
#define FLAG_PC_MIA                  0x003
#define FLAG_PC_FELIX                0x004
#define FLAG_PC_JENNA                0x005
#define FLAG_PC_SHEBA                0x006
#if GS2
#define FLAG_PC_PIERS                0x007
#endif

#define FLAG_NO_RETREAT              0x144
// ...
#define FLAG_LURE                    0x167
// ...
#define FLAG_DEBUG_INSTANT_WIN       0x16D
#define FLAG_DJINNI_TUTORIAL         0x16E
// ...
#define FLAG_DEBUG_SUPER_SPEED       0x17F

#define FLAG_ENEMIES_OFFSET          0x600

#endif // FLAGS_H