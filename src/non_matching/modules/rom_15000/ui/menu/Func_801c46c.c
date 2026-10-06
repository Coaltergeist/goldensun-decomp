#include "state/global_state.h"

extern GlobalState gState;

void Func_801c46c(unsigned int arg0) {
    unsigned char v = *((unsigned char *)&gState + 0x205);

    if ((arg0 & 0x20) != 0) {
        v = v - 1;
    } else {
        v = v + 1;
    }
    *((unsigned char *)&gState + 0x205) = v;
}
