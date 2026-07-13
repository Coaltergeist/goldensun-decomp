extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_898_2008ef4(int x, int z, int map);
extern unsigned char L286a[] asm(".L286a");
extern unsigned char L2880[] asm(".L2880");

void OvlFunc_898_2008fb4(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *sprite = *(unsigned char **)(actor + 0x50);
    register int fifth asm("r3");
    register int sixth asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(L286a, 0x36, 0xd);
    fifth = 0x17;
    sixth = 0xc;
    asm volatile("" : "+r"(fifth), "+r"(sixth) : : "memory");
    actor += 0x23;
    __Func_8010704(0x21, 0x14, 1, 3, fifth, sixth);
    *actor &= 0xfe;
    sprite[9] |= 0xc;
    OvlFunc_898_2008ef4(0xbc << 1, 0xe0, 8);
}

void OvlFunc_898_2009010(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *sprite = *(unsigned char **)(actor + 0x50);
    register int fifth asm("r3");
    register int sixth asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(L2880, 0x31, 0xa);
    fifth = 0x12;
    sixth = 0xa;
    asm volatile("" : "+r"(fifth), "+r"(sixth) : : "memory");
    actor += 0x23;
    __Func_8010704(0x21, 0x14, 1, 3, fifth, sixth);
    *actor &= 0xfe;
    sprite[9] |= 0xc;
    OvlFunc_898_2008ef4(0x94 << 1, 0xb0, 9);
}
