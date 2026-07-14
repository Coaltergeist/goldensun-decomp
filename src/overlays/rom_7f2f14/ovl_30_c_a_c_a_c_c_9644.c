extern int __MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __SetFlag(int flag);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_968_2009644(void)
{
    int r5;
    r5 = __MapActor_GetActor(0xd);
    __CutsceneStart();
    if ((*(int *)((char *)r5 + 8) >> 20) == 0x2a) {
        register int stack0 asm("r3");
        register int stack1 asm("r2");

        __CutsceneWait(0x1e);
        __PlaySound(0xbc);
        *(char *)((char *)r5 + 0x55) = 0;
        *(int *)((char *)r5 + 0x14) = 0xfffe0000;
        *(int *)((char *)r5 + 0xc) = 0xfffe0000;
        __SetFlag(0x80 << 2);
        stack0 = 3;
        stack1 = 5;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(0x2c, 0x75, 0x29, 0x75, stack0, stack1);
    }
    __CutsceneEnd();
}
