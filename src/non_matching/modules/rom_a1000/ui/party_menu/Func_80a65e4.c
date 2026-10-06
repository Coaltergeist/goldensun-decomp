#include "state/global_state.h"

extern GlobalState gState;

unsigned int Func_80a65e4(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned short v;
    unsigned short *p;

    v = (arg0 << 10) | (arg1 & 0x3fff);
    if (arg2 != 0) {
        p = (unsigned short *)((char *)&gState + 0x222);
    } else {
        p = (unsigned short *)((char *)&gState + 0x220);
    }
    *p = v;
    return 1;
}
