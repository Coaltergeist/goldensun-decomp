/* rpg/move.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned char gMoves[] __asm__("gMoves");

unsigned char *GetMoveInfo(int moveID) {
    unsigned int idx = moveID & 0x3fff;
    if (idx >= 0x208)
        idx = 0;
    return gMoves + (idx << 4);
}

INCLUDE_ASM("asm/rpg/move/HasMove.s");
INCLUDE_ASM("asm/rpg/move/Func_8078bf0.s");
INCLUDE_ASM("asm/rpg/move/GiveInnateMove.s");

extern int Func_80792c4(void);

int Func_8078ecc(void) {
    return Func_80792c4();
}
