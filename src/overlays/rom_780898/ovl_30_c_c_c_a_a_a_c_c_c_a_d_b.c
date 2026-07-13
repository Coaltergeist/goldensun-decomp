extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __SetFlag(unsigned int flag);
extern void __ClearFlag(unsigned int flag);
extern void __Func_8010704(unsigned int arg0, unsigned int arg1,
                           unsigned int arg2, unsigned int arg3,
                           unsigned int arg4, unsigned int arg5);
extern void OvlFunc_883_200b2b0(unsigned int arg0, unsigned int arg1,
                                unsigned int arg2, unsigned int arg3);
extern void OvlFunc_883_200b380(unsigned int arg0, unsigned int arg1,
                                unsigned int arg2, unsigned int arg3);

void OvlFunc_883_2009244(void)
{
    __CutsceneStart();
    {
        /* Preserve the original stacked-argument setup order. */
        register unsigned int arg4 asm("r3") = 0x14;
        register unsigned int arg5 asm("r2") = 0x32;

        __Func_8010704(0x31, 0x35, 8, 4, arg4, arg5);
    }
    OvlFunc_883_200b2b0(0, 0xa, 0xb, 1);
    __SetFlag(0x204);
    __CutsceneEnd();
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_883_2009244, . - OvlFunc_883_2009244");

void OvlFunc_883_2009280(void)
{
    __CutsceneStart();
    {
        /* Preserve the original argument-register setup order. */
        register unsigned int arg1 asm("r1") = 0xd;
        register unsigned int arg2 asm("r2") = 0xa;
        register unsigned int arg3 asm("r3") = 1;

        OvlFunc_883_200b380(0, arg1, arg2, arg3);
    }
    __ClearFlag(0x204);
    {
        /* Preserve the original stacked-argument setup order. */
        register unsigned int arg4 asm("r3") = 0x14;
        register unsigned int arg5 asm("r2") = 0x32;

        __Func_8010704(0x31, 0x2e, 8, 4, arg4, arg5);
    }
    __CutsceneEnd();
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_883_2009280, . - OvlFunc_883_2009280");
