extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor_id, int speed_x, int speed_y);
extern void __PlaySound(int sound_id);
extern unsigned char Script_4550[] asm(".L4550");
extern void __Func_8010560(unsigned char *script, int arg1, int arg2);
extern void __Func_8092208(int actor_id, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_952_200bdf8(void)
{
    __CutsceneStart();
    __MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);
    __PlaySound(0x9e);
    __Func_8010560(Script_4550, 0x24, 0xa);
    {
        register int offset asm("r2") = 0x10;
        register int mode asm("r1") = 2;
        register int actor_id asm("r0");

        /* Preserve the original constant and negation schedule. */
        asm volatile("" : "+r"(mode), "+r"(offset));
        offset = -offset;
        asm volatile("" : "+r"(mode), "+r"(offset));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(mode), "+r"(offset));
        __Func_8092208(actor_id, mode, offset);
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}
