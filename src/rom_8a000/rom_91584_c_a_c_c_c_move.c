#include "gba/types.h"

int _GetFlag(unsigned int flag);
int _HasMove(unsigned int actor, unsigned int move);

int Func_8091814(unsigned int packed_move)
{
    int actor = (packed_move >> 10) & 0xf;
    unsigned int move = packed_move & 0x3ff;

    if (actor > 7) {
        return -1;
    }
    if (_GetFlag(actor) == 0) {
        return -2;
    }
    if (_HasMove(actor, move) == 0) {
        return -3;
    }
    return 0;
}
