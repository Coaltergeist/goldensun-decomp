extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_968_2008cc8(void);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_200ab14(void);

void OvlFunc_968_200aee4(void)
{
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        {
            register int fifth asm("r3") = 5;
            register int sixth asm("r2") = 0x30;

            asm volatile("" : "+r"(fifth));
            asm volatile("" : "+r"(sixth));
            __Func_8010704(0x45, 0x30, 4, 2, fifth, sixth);
        }
        {
            register int fifth asm("r3") = 9;
            register int sixth asm("r2") = 0x25;

            asm volatile("" : "+r"(fifth));
            asm volatile("" : "+r"(sixth));
            __Func_8010704(0x49, 0x25, 9, 0xd, fifth, sixth);
        }
        OvlFunc_968_2008374();
    }
    __CutsceneEnd();
    OvlFunc_968_200ab14();
}
