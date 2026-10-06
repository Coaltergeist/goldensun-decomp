#include "state/global_state.h"

extern GlobalState gState;

extern int _GetPartySize(void);

extern void _ModifyPP(unsigned char slot, unsigned int arg1);

void Func_808c2dc(unsigned int arg0)
{
    int count;
    unsigned char *p;

    count = _GetPartySize();
    if (count > 0) {
        p = (unsigned char *)((char *)&gState + 0x1f8);
        do {
            _ModifyPP(*p, arg0);
            count--;
            p++;
        } while (count != 0);
    }
}
