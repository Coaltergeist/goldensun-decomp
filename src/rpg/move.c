#include "nonmatching.h"
#include "rpg.h"

extern unsigned char gMoves[] __asm__("gMoves");

unsigned char *GetMoveInfo(int moveID) {
    unsigned int idx = moveID & 0x3fff;
    if (idx >= 0x208)
        idx = 0;
    return gMoves + (idx << 4);
}

extern struct Unit *GetUnit(int unit);

int HasMove(int unit, int moveID) {
    struct Unit *u;
    int i;
    int move;

    u = GetUnit(unit);
    for (i = 0; i <= 31; i++) {
        move = u->psynergy[i].id;
        if ((move & 0x3fff) == moveID)
            return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/rpg/move/Func_8078bf0.s");
INCLUDE_ASM("asm/rpg/move/GiveInnateMove.s");

extern int Func_80792c4(void);

int Func_8078ecc(void) {
    return Func_80792c4();
}
