typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern unsigned int gKeyHeld;
extern int _Func_80f954c(void);

int Func_801999c(u8 *object)
{
    int stop = 0;

    if (iwram_3001e8c[0x12f9] != 0 && _Func_80f954c() == 0)
        stop = 1;
    if ((gKeyHeld & 0x303) != 0)
        stop = 1;
    if (stop != 0) {
        register unsigned int zero asm("r3") = 0;

        asm("" : "+r"(zero));
        *(u16 *)(object + 0x14) = zero;
        asm volatile("" : : : "memory");
        return 1;
    }
    return 0;
}
