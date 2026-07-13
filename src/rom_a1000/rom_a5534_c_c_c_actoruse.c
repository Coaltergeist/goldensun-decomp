#include "gba/types.h"

#define ActorUseListSet Func_80a68a8

extern u8 iwram_3001f2c[];
extern void _Func_801bcd4(int kind, int value, int actorId, int zero);
extern void Func_80a3d24(u16 *used);

/* 使用中のアクター番号を登録して未使用ワークを戻す */
void ActorUseListSet(u16 *used)
{
    u8 *state = *(u8 **)iwram_3001f2c;
    u8 **actor = (u8 **)(state + 0x48);
    u16 *entry = used;
    int i = 31;

    do {
        int value = *entry++;
        if (value != 0)
            _Func_801bcd4(4, value, (*actor)[0xe], 0);
        actor++;
    } while (--i >= 0);
    Func_80a3d24(used);
}
