extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];
extern void OvlFunc_907_2008fa0(void);
extern int __GetFlag(int flag);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __Func_800fe9c(void);
extern void __CutsceneEnd(void);
extern void __WaitFrames(int frames);

void OvlFunc_907_2008d10(void)
{
    {
        register unsigned char *state asm("r3");
        register unsigned int offset asm("r2") = 0xe0;

        state = iwram_3001ebc;
        asm volatile("" : "+r"(state), "+r"(offset));
        offset <<= 1;
        state += offset;
        offset += 0x44;
        *(unsigned int *)state = offset;
    }
    OvlFunc_907_2008fa0();
    {
        register unsigned char *addr asm("r3") = gState;
        register unsigned int offset asm("r2") = 0xe1;

        asm volatile("" : "+r"(addr), "+r"(offset));
        offset <<= 1;
        addr += offset;
        asm volatile("" : "+r"(addr));
        {
            register unsigned int value asm("r3");
            register unsigned int bound asm("r2");

            value = *(unsigned short *)addr;
            bound = 0x80;
            asm volatile("" : "+r"(value), "+r"(bound));
            value -= 3;
            value <<= 16;
            bound <<= 9;
            if (value <= bound && __GetFlag(0x109) == 0) {
                unsigned char *actor = __MapActor_GetActor(0);

                __CutsceneStart();
                *(int *)(actor + 0xc) = 0x100000;
                __Func_80933f8(*(int *)(actor + 8), 0x100000, *(int *)(actor + 0x10), 0);
                __Func_800fe9c();
                __CutsceneEnd();
                __WaitFrames(1);
            }
        }
    }
}
