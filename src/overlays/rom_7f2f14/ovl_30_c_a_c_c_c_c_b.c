extern void __CutsceneStart(void);
extern int OvlFunc_968_2008cc8(void);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void OvlFunc_968_2008374(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_968_2009d48(void);

void OvlFunc_968_2009f28(void)
{
    __CutsceneStart();
    if (!OvlFunc_968_2008cc8()) {
        register int destination_x asm("r3") = 0x2d;
        register int destination_y asm("r2") = 0x2b;

        /* Preserve the original stack-argument register order. */
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x6d, 0x2b, 7, 5,
                       destination_x, destination_y);
        OvlFunc_968_2008374();
    }
    __CutsceneEnd();
    OvlFunc_968_2009d48();
}

/* Include the original trailing alignment in the function symbol size. */
asm(".size OvlFunc_968_2009f28, 56");
