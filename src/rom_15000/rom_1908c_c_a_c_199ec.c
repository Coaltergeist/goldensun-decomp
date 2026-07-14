typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern unsigned int gKeyPress;
extern unsigned int iwram_3001af8;
extern int _Func_80f954c(void);

int Func_80199ec(u8 *object)
{
    u8 *base = iwram_3001e8c;
    int stop = 0;
    unsigned int keys;

    if (base[0x12f9] != 0 && _Func_80f954c() == 0)
        stop = 1;

    keys = gKeyPress;
    if (base[0xea4] != 0)
        keys = iwram_3001af8;

    if ((keys & 0x303) != 0)
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
