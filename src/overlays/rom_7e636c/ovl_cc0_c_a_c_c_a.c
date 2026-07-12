extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __Func_8091e9c(int map);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

void OvlFunc_958_2009080(void) {
    register unsigned char *base asm("r5") = *(unsigned char **)iwram_3001ebc;

    asm volatile("" : "+r"(base));
    __CutsceneStart();
    if (__GetFlag(0x204) != 0) {
        {
            register int flag asm("r0") = 0x9a3;
            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x9a5;
            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x9a4;
            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x9a6;
            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x9a5;
            asm volatile("" : "+r"(flag));
            __SetFlag(flag);
        }
        {
            register int flag asm("r0") = 0x9a4;
            asm volatile("" : "+r"(flag));
            __SetFlag(flag);
        }
    }
    {
        register int offset asm("r2") = 0xb6;
        register unsigned int field asm("r3");
        register int map asm("r0");

        asm volatile("" : "+r"(offset), "+r"(base));
        offset <<= 1;
        asm volatile("" : "+r"(offset), "+r"(base));
        field = (unsigned int)(base + offset);
        asm volatile("" : "+r"(field));
        offset = 0;
        asm volatile("" : "+r"(field), "+r"(offset));
        map = *(short *)(field + offset);
        asm volatile("" : "+r"(map));
        __Func_8091e9c(map);
    }
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
