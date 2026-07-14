#include "actor.h"

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __SetFlagByte(int flag, int value);
extern void __Func_8091eb0(int arg0, int arg1);
extern struct Actor *__MapActor_GetActor(int actor_id);

void OvlFunc_881_200b7d8(void)
{
    s16 *p;
    s16 v;
    u8 *base;

    p = (s16 *)(iwram_3001ebc + (0xc1 << 1));
    v = *p;
    if (v == 0x63) {
        v = 0;
        *p = v;
    }
    __ClearFlag(0xbc << 2);
    __SetFlag(0x2f1);
    __SetFlagByte(0xbe << 2, 0);
    __Func_8091eb0(0x62, 5);
    base = gState;
    base[0x22b] = 3;
    __Func_8091eb0(0x62, 7);
    __MapActor_GetActor(*(int *)(base + (0xfa << 1)))->__unk55 = 2;
}
