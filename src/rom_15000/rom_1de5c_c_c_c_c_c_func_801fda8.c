typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;

void Func_801fda8(const u16 *box, int x, int y, int width, int height)
{
    register int saved_width asm("r6") = width;
    register u8 *state asm("r7") = iwram_3001e8c;
    register int saved_height asm("r5") = height;

    x += box[6] + 1;
    y += box[7] + 1;

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
            register u16 *tile asm("r4") = (u16 *)(offset + (unsigned int)state);
            register int count asm("r0") = saved_width;

            if (count != 0) {
                do {
                    count--;
                    *tile++ = 0xe006;
                } while (count != 0);
            }

            saved_height--;
            offset += 0x40;
        } while (saved_height != 0);

        state[0xea3] = 1;
    }
}
