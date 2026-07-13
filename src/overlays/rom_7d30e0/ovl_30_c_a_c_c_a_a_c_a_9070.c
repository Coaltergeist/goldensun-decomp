extern unsigned char *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern int __CheckPartyItem(int);
extern void __SetFlag(int);
extern void OvlFunc_948_2008fdc(int);
extern void __Func_80789dc(int);

void OvlFunc_948_2009070(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    register int argument asm("r0");

    if (*(unsigned short *)(actor + 6) != 0xc000)
        return;
    argument = 0x9c4;
    asm volatile("" : "+r"(argument));
    if (__GetFlag(argument) != 0)
        return;
    if (__CheckPartyItem(0xf3) == -1)
        return;
    argument = 0x9c4;
    asm volatile("" : "+r"(argument));
    __SetFlag(argument);
    OvlFunc_948_2008fdc(0x100);
    __Func_80789dc(0xf3);
}
