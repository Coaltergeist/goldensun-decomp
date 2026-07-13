typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern unsigned int Func_801671c(void);

void Func_8016758(void)
{
    u8 *slot = iwram_3001e8c + 0x620;
    u8 *selected = 0;
    int i = 0;

    while (i != 3) {
        u8 *object = *(u8 **)slot;

        if (object == 0 || *(u16 *)(object + 0x14) != 0) {
            selected = slot;
            break;
        }
        slot += 0x28;
        i++;
    }

    if (selected != 0) {
        if (*(u8 **)selected != 0) {
            register unsigned int zero asm("r3");

            Func_801671c();
            zero = 0;
            asm volatile("" : "+r"(zero));
            *(u16 *)(selected + 6) = zero;
        }
        {
            /* Keep GCC 2.96's original immediate/register store sequence. */
            register unsigned int zero asm("r3") = 0;
            register unsigned int fifteen asm("r2");

            asm volatile("" : "+r"(zero));
            *(u16 *)(selected + 4) = zero;
            *(u16 *)(selected + 0x14) = zero;
            fifteen = 0xf;
            asm volatile("" : "+r"(zero), "+r"(fifteen));
            *(u16 *)(selected + 0x18) = zero;
            zero = 0xa;
            asm volatile("" : "+r"(zero), "+r"(fifteen));
            *(u16 *)(selected + 0x16) = fifteen;
            *(u16 *)(selected + 0x1a) = zero;
        }
    }
}
