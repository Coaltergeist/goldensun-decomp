extern unsigned char Const_A5[] __asm__(".Lconst_a5");
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __StopTask(void *);
extern void OvlFunc_960_2008ce4(void);
extern unsigned short Lm960_1a00 __asm__(".Lm960_1a00");

void OvlFunc_960_2008d24(void)
{
    int off;

    off = 0xe0 << 1;
    if (*(short *)((char *)&gState + off) == (int)Const_A5) {
        ((unsigned char *)__MapActor_GetActor(0xe))[0x23] = 2;
        ((unsigned char *)__MapActor_GetActor(0xe))[0x55] = 3;
        __MapActor_SetPos(0xe, 0, 0);
        __Func_8010704(0x10, 0x2c, 1, 1, 0xf, 0x2c);
        __Func_808edac(100, 0, 0);
        __Func_8010704(0xc, 0x47, 1, 1, 0x7f, 0x7f);
        __Func_8010704(0xb, 0x47, 1, 1, 0xc, 0x47);
        __StopTask(OvlFunc_960_2008ce4);
        *(volatile unsigned short *)0x500019e = Lm960_1a00;
    }
}
