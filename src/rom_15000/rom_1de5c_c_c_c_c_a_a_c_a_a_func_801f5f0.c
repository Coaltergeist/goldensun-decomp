typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;

void Func_801f5f0(const u16 *box, int x, int y, int width, int height,
                  unsigned int palette)
{
    register int saved_width asm("r6") = width;
    register u8 *state asm("r12") = iwram_3001e8c;
    register unsigned int palette_bits asm("r7") = palette;
    register int saved_height asm("r5") = height;

    x += box[6] + 1;
    y += box[7] + 1;
    palette_bits &= 1;
    palette_bits <<= 12;

    if (x < 0) {
        saved_width += x;
        x = 0;
    }
    if (x + saved_width > 0x1d) {
        register int limit asm("r3") = 0x1e;

        asm volatile("" : "+r"(limit));
        saved_width = limit - x;
    }

    if (y < 0) {
        saved_height += y;
        y = 0;
    }
    if (y + saved_height > 0x1d) {
        register int limit asm("r3") = 0x14;

        asm volatile("" : "+r"(limit));
        saved_height = limit - y;
    }

    if (saved_width > 0 && saved_height > 0) {
        unsigned int offset = (y << 6) + (x << 1);

        do {
            register unsigned int base asm("r3") = (unsigned int)state;
            register u16 *tile asm("r4") = (u16 *)(offset + base);
            register int count asm("r0") = saved_width;

            if (count != 0) {
                register unsigned int mask asm("r2") = 0xffffefff;

                do {
                    unsigned int value = *tile;

                    value &= mask;
                    value |= palette_bits;
                    count--;
                    *tile++ = value;
                } while (count != 0);
            }

            saved_height--;
            offset += 0x40;
        } while (saved_height != 0);

        state[0xea3] = 1;
    }
}
