extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_901_2008a80(int x, int z, int map);
extern unsigned char L1782[] asm(".L1782");
extern unsigned char L1798[] asm(".L1798");

void OvlFunc_901_2008b40(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *sprite = *(unsigned char **)(actor + 0x50);
    register int fifth asm("r3");
    register int sixth asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(L1782, 0x36, 0xd);
    fifth = 0x17;
    sixth = 0xc;
    asm volatile("" : "+r"(fifth), "+r"(sixth) : : "memory");
    actor += 0x23;
    __Func_8010704(0x21, 0x14, 1, 3, fifth, sixth);
    *actor &= 0xfe;
    sprite[9] |= 0xc;
    OvlFunc_901_2008a80(0xbc << 1, 0xe0, 8);
}

void OvlFunc_901_2008b9c(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *sprite = *(unsigned char **)(actor + 0x50);
    register int fifth asm("r3");
    register int sixth asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(L1798, 0x31, 0xa);
    fifth = 0x12;
    sixth = 0xa;
    asm volatile("" : "+r"(fifth), "+r"(sixth) : : "memory");
    actor += 0x23;
    __Func_8010704(0x21, 0x14, 1, 3, fifth, sixth);
    *actor &= 0xfe;
    sprite[9] |= 0xc;
    OvlFunc_901_2008a80(0x94 << 1, 0xb0, 9);
}
