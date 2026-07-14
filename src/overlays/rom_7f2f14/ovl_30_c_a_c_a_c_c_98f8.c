typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_968_2008910(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_968_20098f8(void)
{
    unsigned int index;
    u8 *actor;
    register int temp_r2 asm("r2");
    register int temp_r3 asm("r3");

    __MapActor_GetActor(8);
    __CutsceneStart();
    temp_r3 = 0xc;
    temp_r2 = 0x2c;
    asm volatile("" : "+r"(temp_r2), "+r"(temp_r3));
    __Func_8010704(0x13, 0x2c, 4, 1, temp_r3, temp_r2);
    temp_r3 = 0xb;
    temp_r2 = 0x33;
    asm volatile("" : "+r"(temp_r2), "+r"(temp_r3));
    __Func_8010704(0x11, 0x33, 2, 2, temp_r3, temp_r2);

    index = 0;
    do {
        actor = __MapActor_GetActor(index + 8);
        temp_r2 = *(int *)(actor + 8) >> 20;
        temp_r3 = *(int *)(actor + 16) >> 20;
        asm volatile("" : "+r"(temp_r2), "+r"(temp_r3));
        __Func_8010704(0xc, 0x32, 1, 1, temp_r2, temp_r3);
        ++index;
    } while (index < 3);

    OvlFunc_968_2008910(10, 9);
    __CutsceneEnd();
}
