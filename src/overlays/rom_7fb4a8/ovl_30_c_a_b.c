extern unsigned char Value_1[] __asm__("0x1");
extern void __Func_8006358(void);
extern void __SetSoundFXMode(int mode);
extern unsigned int __SetDestMap(int map, int entrance);

unsigned int OvlFunc_971_2009050(void)
{
    register int map asm("r0");
    register int entrance asm("r1");

    __Func_8006358();
    __SetSoundFXMode(2);
    map = (unsigned int)Value_1;
    entrance = 1;
    /* Preserve the original map and entrance load order. */
    asm volatile("" : "+r"(map), "+r"(entrance));
    return __SetDestMap(map, entrance);
}
