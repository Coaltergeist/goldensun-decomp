typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gState[];
extern int __GetPartySize(void);

int OvlFunc_971_200853c(u16 *out)
{
    int count = __GetPartySize();

    if (count > 3) {
        count = 3;
    }
    if (count > 0) {
        register u8 *ids asm("r3") = gState;
        register unsigned int offset asm("r2") = 0xfc;
        register int remaining asm("r1");

        asm volatile("" : "+r"(ids), "+r"(offset));
        offset <<= 1;
        ids += offset;
        remaining = count;
        asm volatile("" : "+r"(ids), "+r"(remaining));
        do {
            u8 id = *ids++;

            if (out != 0) {
                *out++ = id;
            }
            remaining--;
        } while (remaining != 0);
    }
    if (out != 0) {
        *out = 0xff;
    }
    return count;
}
