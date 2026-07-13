extern void __CutsceneStart(void);
extern int OvlFunc_968_2008cc8(void);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void OvlFunc_968_2008374(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_968_2009f60(void);

void OvlFunc_968_200a26c(void)
{
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        register int destination_x asm("r3") = 0x2c;
        register int destination_y asm("r2") = 0x27;

        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x6c, 0x27, 0xd, 7,
                       destination_x, destination_y);
        OvlFunc_968_2008374();
    }
    __CutsceneEnd();
    OvlFunc_968_2009f60();
}

/* Count the original zero-fill alignment in the function's ELF size. */
asm(".align 2, 0\n.size OvlFunc_968_200a26c, . - OvlFunc_968_200a26c");
