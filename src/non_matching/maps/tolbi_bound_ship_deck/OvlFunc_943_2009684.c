extern unsigned char gScript_943__0200c4d8[];
extern void __MapActor_SetBehavior(int, void *);

void OvlFunc_943_2009684(void)
{
    struct Actor *actor;
    int flag;

    API_Func_8092b08(0x1b, 1);
    API_Func_8092b08(0x17, 1);
    API_Func_8092b08(0x16, 1);
    API_Func_8092b08(0x1a, 1);
    API_Func_8092b08(0x18, 1);

    if (__GetFlag(0x920) != 0) {
        API_MapActor_SetPos(0x16, 0xa20000, 0x29a0000);
        ((struct Actor *)__MapActor_GetActor(0x16))->facing = 0x8000;
        API_MapActor_SetPos(0x17, 0, 0);
        API_MapActor_SetPos(0x14, 0, 0);
    }

    flag = __GetFlag(0x922);
    if (flag != 0) {
        API_MapActor_SetPos(0x15, 0x1080000, 0x2be0000);
        ((struct Actor *)__MapActor_GetActor(0x15))->facing = 0x5000;
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        actor->waveCounter = __Random0() % 90 + 60;
        __MapActor_SetBehavior(0x15, gScript_943__0200c4d8);

        API_MapActor_SetPos(0x18, 0xf80000, 0x2a80000);
        actor = (struct Actor *)__MapActor_GetActor(0x18);
        actor->waveCounter = __Random0() % 90 + 60;
        __MapActor_SetBehavior(0x18, gScript_943__0200c4d8);

        API_MapActor_SetPos(0x16, 0, 0);
    } else if (__GetFlag(0x923) != 0) {
        API_MapActor_SetPos(0x14, 0xf60000, 0x2000000);
        ((struct Actor *)__MapActor_GetActor(0x14))->facing = flag;
    }
}
