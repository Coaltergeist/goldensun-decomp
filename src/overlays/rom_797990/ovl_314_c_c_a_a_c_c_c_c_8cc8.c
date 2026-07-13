extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_901_2008a80(int x, int z, int map);
extern unsigned char L17c4[] asm(".L17c4");

void OvlFunc_901_2008cc8(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *sprite = *(unsigned char **)(actor + 0x50);
    register int fifth asm("r3");
    register int sixth asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(L17c4, 0x23, 9);
    fifth = 4;
    sixth = 0xa;
    asm volatile("" : "+r"(fifth), "+r"(sixth) : : "memory");
    actor += 0x23;
    __Func_8010704(0x21, 0x14, 1, 3, fifth, sixth);
    *actor &= 0xfe;
    sprite[9] |= 0xc;
    OvlFunc_901_2008a80(0x48, 0xa0, 0xc);
}
