typedef unsigned char u8;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern int OvlFunc_959_20098e4(int arg);
extern void __StopTask(void (*task)(void));

void OvlFunc_959_2009718(void)
{
    u8 *state = iwram_3001ebc;

    if (OvlFunc_959_20098e4(0xc) != 0) {
        register u8 *global asm("r3") = gState;
        register unsigned int offset asm("r2") = 0x93;
        register int zero asm("r2");

        asm volatile("" : "+r"(global));
        asm volatile("" : "+r"(offset));
        offset <<= 2;
        global += offset;
        zero = 0;
        asm volatile("" : "+r"(global), "+r"(zero));
        if (*(short *)(global + zero) != 0) {
            return;
        }
        __StopTask(OvlFunc_959_2009718);
        {
            register u8 *destination asm("r2");
            register unsigned int destinationOffset asm("r3") = 0xc1;

            asm volatile("" : "+r"(destinationOffset));
            destinationOffset <<= 1;
            destination = state + destinationOffset;
            asm volatile("" : "+r"(destination));
            {
                register int value asm("r3") = 0x5f;

                asm volatile("" : "+r"(value));
                *(short *)destination = value;
            }
        }
    }
}
