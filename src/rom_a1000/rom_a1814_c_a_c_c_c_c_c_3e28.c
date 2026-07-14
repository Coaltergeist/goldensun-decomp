#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern void _Func_801bcd4(int kind, int value, int actorId, int zero);
extern void Func_80a3d24(u16 *used);

void Func_80a3e28(u16 *used, int flag)
{
    u8 *state = *(u8 **)iwram_3001f2c;
    u8 **actor = (u8 **)(state + 0x48);
    u16 *entry = used;
    int i = 14;

    do {
        int value = *entry++;
        if (value != 0) {
            if (flag == 0)
                _Func_801bcd4(2, value, (*actor)[0xe], 0);
            else
                _Func_801bcd4(7, value, (*actor)[0xe], 0);
        }
        actor++;
    } while (--i >= 0);
    Func_80a3d24(used);
}
