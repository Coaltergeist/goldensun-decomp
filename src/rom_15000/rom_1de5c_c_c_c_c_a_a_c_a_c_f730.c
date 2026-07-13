typedef unsigned char u8;

extern u8 *iwram_3001f1c;
extern int Func_80056cc(void);
extern int Func_8005c68(void);
extern void Func_8005cf8(void);

int Func_801f730(int inspect)
{
    int result;

    if (Func_80056cc() != 0) {
        result = -9;
    } else {
        result = Func_8005c68();
        if (inspect != 0) {
            int i;
            u8 *slot = iwram_3001f1c + 0x1071;

            i = 2;

            do {
                register unsigned int occupied asm("r3") =
                    (unsigned int)*slot << 24;

                asm volatile("" : "+r"(occupied));
                slot += 0x40;
                if (occupied != 0) {
                    result--;
                }
                i--;
            } while (i >= 0);
        }
    }
    Func_8005cf8();
    return result;
}
