extern unsigned char iwram_3001ebc[];

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809259c(int actor, int arg1);
extern void __CutsceneWait(int frames);
extern void __MessageID(int id);
extern void __Func_8092848(int arg0, int actor, int arg2);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __MapActor_Emote(int actor, int emote, int arg2);
extern void __MapActor_DoAnim(int actor, int anim);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);

void OvlFunc_887_20081e0(void)
{
    __CutsceneStart();
    __Func_809259c(0x10, 2);
    __CutsceneWait(0x1e);
    __MessageID(0xf5b);
    __Func_8092848(0, 0x10, 0xa);
    __Func_8093040(0x10, 0, 6);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r1 = 0x81;
        asm volatile("" : "+r"(r1));
        r2 = 0;
        asm volatile("" : "+r"(r2));
        r0 = 0x10;
        asm volatile("" : "+r"(r0));
        r1 <<= 1;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_Emote(r0, r1, r2);
    }
    __Func_809259c(0x10, 1);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x10, 4);
    __CutsceneWait(0x14);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");

        r1 = 0;
        asm volatile("" : "+r"(r1));
        r0 = 0x10;
        asm volatile("" : "+r"(r0), "+r"(r1));
        __Func_8092c40(r0, r1);
    }
    if (__Func_8091c7c(0, 0) == 1) {
        register unsigned int r2 asm("r2");
        register unsigned int r3 asm("r3");

        r3 = (unsigned int)iwram_3001ebc;
        r2 = *(unsigned int *)r3;
        r3 = 0xec;
        r3 <<= 1;
        r2 += r3;
        r3 = *(unsigned short *)r2;
        r3++;
        *(unsigned short *)r2 = r3;
    }
    __Func_809259c(0x10, 1);
    __CutsceneWait(0x14);
    __Func_8093040(0x10, 0, 4);
    __CutsceneEnd();
}
