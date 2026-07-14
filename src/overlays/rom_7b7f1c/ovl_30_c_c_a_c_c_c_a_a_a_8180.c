extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_809228c(int actorNo, int x, int z);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern unsigned int iwram_3001ebc;
extern unsigned char L1788[] asm(".L1788");

void OvlFunc_930_2008180(void)
{
    unsigned char *actor;

    __PlaySound(0xbc);
    __Func_8010560(L1788, 0x43, 6);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    {
        register int x asm("r1") = 0xcccc;
        register int spdActor asm("r0");
        register int y asm("r2");

        asm volatile("" : "+r"(x));
        spdActor = 0;
        asm volatile("" : "+r"(x), "+r"(spdActor));
        y = 0x6666;
        asm volatile("" : "+r"(x), "+r"(spdActor), "+r"(y));
        __MapActor_SetSpeed(spdActor, x, y);
    }
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 - 0xc0;
    __MapActor_SetAnim(0, 2);
    {
        register int z asm("r2") = 0x10;
        register int x asm("r1");
        register int moveActor asm("r0");

        asm volatile("" : "+r"(z));
        x = 0;
        asm volatile("" : "+r"(z), "+r"(x));
        z = -z;
        asm volatile("" : "+r"(z), "+r"(x));
        moveActor = 0;
        asm volatile("" : "+r"(z), "+r"(x), "+r"(moveActor));
        __Func_809228c(moveActor, x, z);
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
}
