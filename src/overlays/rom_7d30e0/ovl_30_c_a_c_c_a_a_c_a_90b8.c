extern unsigned char *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern int __CheckPartyItem(int);
extern void __SetFlag(int);
extern void OvlFunc_948_2008f40(int);
extern void __Func_80789dc(int);

void OvlFunc_948_20090b8(unsigned int param_1)
{
    unsigned char *actor = __MapActor_GetActor(0);
    register int flagAddr asm("r0");

    if (*(unsigned short *)(actor + 6) != 0xc000)
        return;
    flagAddr = param_1 + 0x9c0;
    asm volatile("" : "+r"(flagAddr));
    if (__GetFlag(flagAddr) != 0)
        return;
    if (__CheckPartyItem(0xf4) == -1)
        return;
    flagAddr = param_1 + 0x9c0;
    asm volatile("" : "+r"(flagAddr));
    __SetFlag(flagAddr);
    OvlFunc_948_2008f40(param_1 | 0x100);
    __Func_80789dc(0xf4);
}
