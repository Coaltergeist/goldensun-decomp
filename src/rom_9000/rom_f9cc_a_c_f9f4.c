typedef unsigned char u8;
typedef unsigned short u16;

extern u8 ewram_2010001[];
extern u8 ewram_2010002[];
extern u16 ewram_2020000[];

void DecodeMetatileset(int length)
{
    register int input asm("r0") = length;
    register int count asm("r4");
    register int parity asm("r3");
    register u8 *source asm("r6");
    register u16 *destination asm("r5");

    asm volatile("sub r3, r0, #1\n\tlsr r2, r3, #31\n\tadd r3, r2\n\tasr r4, r3, #1\n\tmov r3, #1\n\tand r3, r0"
                 : "=r" (count), "=r" (parity) : "r" (input) : "r2");
    asm volatile("ldr r6, =ewram_2010002\n\tldr r5, =ewram_2020000"
                 : "=r" (source), "=r" (destination));

    if (parity == 0)
        return;

    {
        register int mode asm("r3");
        asm volatile("ldr r3, =ewram_2010001\n\tldrb r3, [r3]" : "=r" (mode));
        switch (mode) {
        case 0:
            {
                register int i asm("r1") = 0;
                while (i < count) {
                    *destination++ = *(u16 *)source;
                    source += 2;
                    i++;
                }
            }
            break;
        case 1:
            {
                asm volatile("ldr r6, =ewram_2010002" : "=r" (source));
                {
                    register int i asm("r1") = 0;
                    register int previous asm("r7") = 0;
                    register u8 *low asm("r0");
                    asm volatile("add r0, r4, r6" : "=r" (low) : "r" (count), "r" (source));
                    while (i < count) {
                        register int value asm("r3") = (u16)*source << 8;
                        value |= *low;
                        value ^= previous;
                        i++;
                        *destination = value;
                        low++;
                        source++;
                        destination++;
                        previous = value;
                    }
                }
            }
            break;
        case 2:
            {
                register int previous asm("r2") = 0;
                if (count > 0) {
                    register int remaining asm("r1") = count;
                    do {
                        register int value asm("r3") = *(u16 *)source ^ previous;
                        remaining--;
                        *destination++ = value;
                        source += 2;
                        previous = value;
                    } while (remaining != 0);
                }
            }
            break;
        }
    }
}
